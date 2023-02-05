using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.IO;
using System.Text;
using Aspose.Words;
using Aspose.Words.Tables;
using System.Drawing;
using log4net;
using System.Text.RegularExpressions;

namespace PhongHopKhongGiay.Report
{
    /// <summary>
    /// Summary description for WordStream.
    /// </summary>
    public class WordStream
    {
        FileStream fstr;
        Document doc;
        DocumentBuilder db;

        string FlPath;
        protected static readonly ILog log = LogManager.GetLogger(typeof(WordStream));
        public WordStream()
        {
            doc = new Document();
        }

        public bool Open(string FilePath)
        {
            try
            {
                FlPath = FilePath;
                //Kiem tra va bo trang thai ReadOnly
                FileInfo fi = new FileInfo(FilePath);
                if (fi.IsReadOnly)
                    fi.IsReadOnly = false;
                fstr = new FileStream(FilePath, FileMode.Open, FileAccess.ReadWrite);
                doc = new Document(fstr);
                db = new DocumentBuilder(doc);
            }
            catch (Exception ex)
            {
                log4net.Config.XmlConfigurator.Configure();
                log.Error(ex.Message);
                return false;
            }
            return true;
        }

        public bool Open(string FilePath, FileMode fileMode, FileAccess fileAccess)
        {
            try
            {
                FlPath = FilePath;
                fstr = new FileStream(FilePath, fileMode, fileAccess);
                doc = new Document(fstr);
                db = new DocumentBuilder(doc);
            }
            catch (Exception ex)
            {
                log4net.Config.XmlConfigurator.Configure();
                log.Error(ex.Message);
                return false;
            }
            return true;
        }

        public void WriteToMergeField(string FieldName, string Value)
        {
            if (db.MoveToMergeField(FieldName))
                db.Write(Value);
        }

        public void WriteToUserField(string FieldName, string Value)
        {
            doc.Range.Replace("<<" + FieldName + ">>", Value, false, false);
        }

        public int GetTableRowCount(int TableIndex)
        {
            Table tbl = db.CurrentSection.Body.Tables[TableIndex];
            int rc = tbl.Rows.Count;
            return rc;
        }

        public void AddTableRow(int TableIndex)
        {
            Table tbl = db.CurrentSection.Body.Tables[TableIndex];
            tbl.Rows.Add(null);
        }
        public void AddTableLastRow(int TableIndex)
        {
            Table tbl = db.CurrentSection.Body.Tables[TableIndex];
            //db.Font.Name = "Times New Roman";
            Row refRow = tbl.LastRow;
            Row clone = (Row)refRow.Clone(true);
            clone.GetChildNodes(NodeType.Paragraph, true).Clear();
            foreach (Cell cell in clone.Cells)
            {
                cell.EnsureMinimum();
            }
            Node dstRow = doc.ImportNode(clone, true, ImportFormatMode.KeepSourceFormatting);
            tbl.Rows.Add(dstRow);

            //refRow.Cells.Clear();

        }

        public void WriteToTable(int TableIndex, int Row, int Col, string Value)
        {
            db.MoveToCell(TableIndex, Row, Col, 0);
            Aspose.Words.Font f = db.Font;
            f.Name = "Times New Roman";
            db.Write(Value);
        }

        /// <summary>
        /// Đổ dữ liệu vào các bảng đã định nghĩa trong file Word
        /// </summary>
        /// <param name="InputDataSet">Đầu vào là DataSet cho feb bind cùng lúc nhiều bảng dữ liệu</param>
        public void ExecuteWithRegions(DataSet InputDataSet)
        {
            int tabIdx = 1;
            foreach (DataTable table in InputDataSet.Tables)
            {
                //Đặt tên bảng
                if (table.TableName == null || table.TableName == "")
                    table.TableName = "Table" + tabIdx;
                this.doc.MailMerge.ExecuteWithRegions(table);
                tabIdx++;
            }
        }

        /// <summary>
        /// Đổ dữ liệu vào bảng đã định nghĩa trong file Word.
        /// </summary>
        /// <param name="table">Bảng dữ liệu đầu vào</param>
        /// <param name="TenBang">Tên bảng trong file Word cần bind</param>
        public void ExecuteWithRegions(DataTable table, string TenBang)
        {
            table.TableName = TenBang;
            this.doc.MailMerge.ExecuteWithRegions(table);
        }

        /// <summary>
        /// Kiểm tra tên bảng truyền vào có nằm trong định nghĩa mergetable không!
        /// </summary>
        /// <param name="TableName">Tên bảng</param>
        /// <returns></returns>
        bool IsMergeTable(string TableName)
        {
            foreach (string MergeField in doc.MailMerge.GetFieldNames())
                if (MergeField == "TableStart:" + TableName)
                    return true;
            return false;
        }
        
        string ReplaceSpecialChar(string Value)
        {
            Value = Value.Replace("\n\r", "xxxxxx");
            Value = Value.Replace("\r\n", "xxxxxx");
            Value = Value.Replace("\r", "xxxxxx");
            Value = Value.Replace("\n", "xxxxxx");
            return Value;
        }

        /// <summary>
        /// Bind dữ liệu với tất cả loại field(của Word, mình định nghĩa) hoặc dạng TableStart! + định dạng paragraph        
        /// </summary>
        /// <param name="InputTable"></param>
        public void ExecuteWithParagraph(DataTable InputDataTable, double lenght)
        {
            try
            {
                string colName = "";
                string fieldValue = "";

                DocumentBuilder dbPR = new DocumentBuilder(doc);

                foreach (DataRow row in InputDataTable.Rows)
                {
                    for (int i = 0; i < InputDataTable.Columns.Count; i++)
                    {
                        colName = InputDataTable.Columns[i].ColumnName.ToUpper();
                        fieldValue = row[colName].ToString();
                        fieldValue = fieldValue.Replace("\r\n", "xxxxxx");
                        fieldValue = fieldValue.Replace("\n\r", "xxxxxx");
                        fieldValue = fieldValue.Replace("\n", "xxxxxx");
                        fieldValue = fieldValue.Replace("\r", "xxxxxx");
                        dbPR.Document.Range.Replace("<<" + colName + ">>", fieldValue, false, false);
                    }
                }
                dbPR.ParagraphFormat.Style.ParagraphFormat.SpaceBefore = lenght;
                dbPR.Document.Range.Replace("xxxxxx", Aspose.Words.ControlChar.LineBreakChar.ToString(), false, false);
            }
            catch { }
        }

        /// <summary>
        /// Bind dữ liệu với tất cả loại field(của Word, mình định nghĩa) và dạng TableStart!      
        /// </summary>
        /// <param name="InputDataSet"></param>
        public void ExecuteFull(DataSet InputDataSet)
        {
            int tabIdx = 1;
            //Biến này chỉ để sử dụng cho sổ địa chính, cấm xài nhá
            //DataTable tbThuaDatSoDiaChinh = null;
            try
            {
                foreach (DataTable table in InputDataSet.Tables)
                {
                    if (table.Rows.Count <= 0)
                    {
                        tabIdx++;
                        continue;
                    }
                    //Đặt tên bảng
                    if (table.TableName == null || table.TableName == "")
                        table.TableName = "Table" + tabIdx;
                    if (IsMergeTable(table.TableName))
                        this.doc.MailMerge.ExecuteWithRegions(table);

                    tabIdx++;
                }

                foreach (DataTable table in InputDataSet.Tables)
                {
                    //Duyet wa cac cot!                    
                    foreach (DataColumn col in table.Columns)
                    {
                        string Field = col.ColumnName;
                        string Value = table.Rows[0][col]==null?"": table.Rows[0][col].ToString();

                        Value = ReplaceSpecialChar(Value);
                        if (db.MoveToMergeField(Field))
                            db.Write(Value);
                        if(Field== "PhapLy" || Field== "CoCheGiaBan")// in cke
                        {
                            doc.Range.Replace(new Regex(@"<<" + Field + ">>"), new FindandInsertHtml(Value), false);

                        }
                        else
                        {
                            doc.Range.Replace("<<" + Field + ">>", Value, false, false);

                        }
                    }                    
                    tabIdx++;
                }
                doc.Range.Replace("xxxxxx", Aspose.Words.ControlChar.LineBreak, true, false);
            }
            catch (Exception ex)
            {
                log4net.Config.XmlConfigurator.Configure();
                log.Error(ex.Message);                
            }
        }

        /// <summary>
        /// Bind dữ liệu với tất cả loại field(của Word, mình định nghĩa) hoặc dạng TableStart!        
        /// </summary>
        /// <param name="InputTable"></param>
        public void ExecuteFull(DataTable InputTable)
        {
            if (InputTable.Rows.Count <= 0)
                return;
            try
            {
                //Đặt tên bảng
                if (InputTable.TableName == null || InputTable.TableName == "")
                    InputTable.TableName = "Table";
                if (IsMergeTable(InputTable.TableName))
                    this.doc.MailMerge.ExecuteWithRegions(InputTable);
                else
                {
                    //Duyet wa cac cot!                    
                    foreach (DataColumn col in InputTable.Columns)
                    {
                        string Field = col.ColumnName;
                        string Value = InputTable.Rows[0][col].ToString();
                        Value = ReplaceSpecialChar(Value);
                        if (db.MoveToMergeField(Field))
                            db.Write(Value);
                        if (Field == "PhapLy" || Field == "CoCheGiaBan")// in cke
                        {
                            doc.Range.Replace(new Regex(@"<<" + Field + ">>"), new FindandInsertHtml(Value), false);

                        }
                        else
                        {
                            doc.Range.Replace("<<" + Field + ">>", Value, false, false);

                        }
                    }
                }
                doc.Range.Replace("xxxxxx", Aspose.Words.ControlChar.LineBreak, true, false);
            }
            catch (Exception ex)
            {
                log4net.Config.XmlConfigurator.Configure();
                log.Error(ex.Message);
            }
        }

        /// <summary>
        /// Merge các cell gần nhau trên cùng Column của một bảng Word
        /// </summary>
        /// <param name="TableIdx">Vị trí bảng Word cần merge</param>
        /// <param name="ColumnM">Mảng cột cần merge</param>
        /// <param name="RowStart">Bắt đầu merge từ dòng thứ mấy!</param>
        /// <returns></returns>
        public bool AutoMergeCellTable(int TableIdx, int[] ColumnM, int RowStart)
        {
            try
            {
                int t = db.CurrentSection.Body.Tables[TableIdx].Rows.Count;
                Table tb = db.CurrentSection.Body.Tables[TableIdx];
                for (int j = 0; j < ColumnM.Length; j++)
                {
                    string str = null;
                    for (int i = RowStart; i < t; i++)
                    {
                        string tstr = tb.Rows[i].Cells[ColumnM[j]].GetText();
                        db.MoveToCell(TableIdx, i, ColumnM[j], 0);
                        if (str != tstr)
                        {
                            db.CellFormat.HorizontalMerge = CellMerge.None;
                            db.CellFormat.VerticalMerge = CellMerge.First;
                            str = tstr;
                        }
                        else
                        {
                            db.CellFormat.HorizontalMerge = CellMerge.None;
                            db.CellFormat.VerticalMerge = CellMerge.Previous;

                        }
                    }
                }
            }
            catch (Exception ex)
            {
                log4net.Config.XmlConfigurator.Configure();
                log.Error(ex.Message);
                return false;
            }
            return true;
        }

        public void SaveAndClose()
        {
            fstr.Close();
            doc.Save(FlPath);

            try
            {
                //fstr.Close();
                //var f = new FileInfo(fstr.Name);
                //var saveOptions =
                //    Aspose.Words.Saving.SaveOptions.CreateSaveOptions(SaveFormat.Doc);
                //var outStream = new MemoryStream();
                //doc.Save(outStream, saveOptions);
                
                //var docBytes = outStream.ToArray();
                //var fileName = f.Name.Replace(f.Extension, "");
                //var mimeType = MimeMapping.GetMimeMapping(f.Name).Replace(f.Extension, ".doc");
                //HttpContext.Current.Response.ContentType = mimeType;
                //HttpContext.Current.Response.AddHeader("Content-Disposition", "attachment; filename=" + (fileName + ".doc"));
                //HttpContext.Current.Response.BinaryWrite(docBytes);
                //HttpContext.Current.Response.OutputStream.Close();
                ////HttpContext.Current.Response.OutputStream.Close();
            }
            catch (Exception ex)
            {
                log4net.Config.XmlConfigurator.Configure();
                log.Error(ex.Message);
            }

        }
        /// <summary>
        /// Bind dữ liệu vào phần ghi chú của sổ mục kê     
        /// </summary>
        /// <param name="InputDataTable">table chứa dữ liệu ghi chú sổ mục kê</param>
        /// <param name="tabIdx">table chứa nội dung sổ mục kê</param>
        public void BindGhiChuSoMucKe(System.Data.DataTable table, int tabIdx)
        {
            try
            {

                int t = db.CurrentSection.Body.Tables[tabIdx].Rows.Count;
                for (int i = 0; i < table.Rows.Count; i++)
                {
                    if (i + 5 > t)
                    {
                        AddTableLastRow(tabIdx);
                    }
                    db.MoveToCell(tabIdx, i + 4, 8, 0);
                    WriteToTable(tabIdx, i + 4, 8, table.Rows[i]["SoThuaC1"].ToString());
                    db.MoveToCell(tabIdx, i + 4, 9, 0);
                    WriteToTable(tabIdx, i + 4, 9, table.Rows[i]["GhiChuC1"].ToString());
                    db.MoveToCell(tabIdx, i + 4, 10, 0);
                    WriteToTable(tabIdx, i + 4, 10, table.Rows[i]["SoThuaC2"].ToString());
                    db.MoveToCell(tabIdx, i + 4, 11, 0);
                    WriteToTable(tabIdx, i + 4, 11, table.Rows[i]["GhiChuC2"].ToString());
                }

            }
            catch (Exception ex) {
                log4net.Config.XmlConfigurator.Configure();
                log.Error(ex.Message);
            }
        }
        /// <summary>
        /// Bind dữ liệu cho nội dung sổ địa chính  
        /// </summary>
        /// <param name="tbThuaDat">table chứa dữ liệu thửa đất</param>
        /// <param name="tbThayDoi">table chứa dữ biến động</param>
        /// <param name="tabIdx">trang sổ hiện tại</param>
        /// <param name="currDongThua">Số dòng hiện tại của tbThuaDat đang duyệt </param>
        /// <param name="currDongBienDong">Số dòng hiện tại của tbThayDoi đang duyệt </param>
        public void BindNoiDungSoDiaChinh(DataTable tbThuaDat, DataTable tbThayDoi, int tabIdx, int TrangSoThua, int TrangSoBienDong, int currDongThua, int currDongBienDong)
        {
            try
            {
                int starDongThua = 7;
                int endDongThua = 15;
                int cloDongThua = 10;
                int starDongBienDong = 18;
                int endDongBienDong = 25;
                int colDongBienDong = 3;
                //Insert thông tin thửa đất từ dòng thứ starDongThua đến dòng thứ endDongThua của tbThuaDat ứng với row currDongThua                
                //if (tabIdx==0)db.MoveToSection(tabIdx);

                for (int i = 0; i < endDongThua - starDongThua; i++)
                {
                    if (currDongThua < tbThuaDat.Rows.Count)
                    {
                        if (Convert.ToInt32(tbThuaDat.Rows[currDongThua]["TrangSo"].ToString()) == TrangSoThua)
                        {
                            //insert dữ liệu của dòng currDongThua từ col 1 đến col cloDongThua 
                            for (int j = 0; j < cloDongThua; j++)
                            {
                                db.MoveToCell(tabIdx, starDongThua + i, j, 0);
                                WriteToTable(tabIdx, starDongThua + i, j, tbThuaDat.Rows[currDongThua][j].ToString());
                            }
                            currDongThua++;
                        }
                        else
                            break;
                    }
                    else
                        break;

                }

                //Insert thông tin biến động từ dòng thứ starDongBienDong đến dòng thứ endDongBienDong của tbThayDoi ứng với row currDongBienDong                
                for (int i = 0; i < endDongBienDong - starDongBienDong; i++)
                {
                    if (currDongBienDong < tbThayDoi.Rows.Count)
                    {
                        if (Convert.ToInt32(tbThuaDat.Rows[currDongBienDong]["TrangSo"].ToString()) == TrangSoBienDong)
                        {
                            //insert dữ liệu của dòng currDongBienDong từ col 1 đến col colDongBienDong 
                            for (int j = 0; j < colDongBienDong; j++)
                            {
                                db.MoveToCell(tabIdx, starDongBienDong + i, j, 0);
                                WriteToTable(tabIdx, starDongBienDong + i, j, tbThayDoi.Rows[currDongBienDong][j].ToString());
                            }
                            currDongBienDong++;
                        }
                        else
                            break;
                    }
                    else
                        break;
                }
                //Gọi đệ quy để đổ dữ liệu vào trang kế tiếp
                if (currDongThua < tbThuaDat.Rows.Count || currDongBienDong < tbThayDoi.Rows.Count)
                {
                    tabIdx++;
                    TrangSoBienDong = Convert.ToInt32(tbThuaDat.Rows[currDongBienDong]["TrangSo"].ToString());
                    TrangSoThua = Convert.ToInt32(tbThuaDat.Rows[currDongThua]["TrangSo"].ToString());
                    BindNoiDungSoDiaChinh(tbThuaDat, tbThayDoi, tabIdx, TrangSoThua, TrangSoBienDong, currDongThua, currDongBienDong);
                }
            }
            catch (Exception ex)
            {
                log4net.Config.XmlConfigurator.Configure();
                log.Error(ex.Message);
            }
        }
        /// <summary>
        /// Bind dữ liệu vào phần mục lục sổ địa chính
        /// </summary>
        /// <param name="InputDataTable">table chứa dữ liệu mục lục</param>
        /// <param name="tabIdx">table chứa nội dung mục lục sổ địa chính</param>
        public void BindMucLucSoDiaChinh(System.Data.DataTable table, int tabIdx)
        {
            try
            {
                //WriteToTable(tabIdx, 2, 1, "Vần " + db.CurrentSection.Body.ToString().ToUpper());
                //int t = db.CurrentSection.Body.Tables[tabIdx].Rows.Count;
                //WriteToTable(tabIdx, 2, 2, "Vần " + db.CurrentSection.Body.Tables.ToString().ToUpper());
                //WriteToTable(tabIdx,2, 3, "Vần " + table.Rows[0]["Van"].ToString().ToUpper());
                //WriteToTable(tabIdx, 2,4, "Vần " + table.Rows[0]["Van"].ToString().ToUpper());
                string Van = Convert.ToString(table.Rows[0]["Van"].ToString());
                int MaxRow = 50;
                int StratRow = 2;
                int CurrRow = StratRow;
                int col = 0;
                int STT = 1;
                db.MoveToCell(tabIdx, CurrRow, col + 1, 0);
                WriteToTable(tabIdx, CurrRow, col + 1, "Vần " + table.Rows[0]["Van"].ToString().ToUpper());

                db.MoveToCell(tabIdx, CurrRow, 7, 0);
                AddTableLastRow(tabIdx);
                CurrRow++;
                for (int i = 0; i < table.Rows.Count; i++)
                {
                    if (CurrRow > MaxRow)
                    {
                        if (col == 0) col = 4;
                        else col = 0;
                        CurrRow = StratRow;
                    }
                    if (Van != Convert.ToString(table.Rows[i]["Van"].ToString()))
                    {
                        Van = Convert.ToString(table.Rows[i]["Van"].ToString());
                        db.MoveToCell(tabIdx, CurrRow, col + 1, 0);
                        WriteToTable(tabIdx, CurrRow, col + 1, "Vần " + table.Rows[i]["Van"].ToString().ToUpper());
                        if (CurrRow == MaxRow && (col == 0 || col == 4))
                        {
                            if (col == 0) col = 4;
                            else col = 0;
                            CurrRow = StratRow;
                        }
                        else
                        {
                            if (CurrRow < MaxRow && col == 0)
                            {
                                CurrRow++;
                                AddTableLastRow(tabIdx);
                            }
                        }
                    }
                    db.MoveToCell(tabIdx, CurrRow, col, 0);
                    WriteToTable(tabIdx, CurrRow, col, STT.ToString());
                    db.MoveToCell(tabIdx, CurrRow, col + 1, 0);
                    WriteToTable(tabIdx, CurrRow, col + 1, table.Rows[i]["HoTen"].ToString());
                    db.MoveToCell(tabIdx, CurrRow, col + 2, 0);
                    WriteToTable(tabIdx, CurrRow, col + 2, table.Rows[i]["QuyenSo"].ToString());
                    db.MoveToCell(tabIdx, CurrRow, col + 3, 0);
                    WriteToTable(tabIdx, CurrRow, col + 3, table.Rows[i]["TrangSo"].ToString());
                    if (i < table.Rows.Count)
                    {
                        STT++;
                        CurrRow++;
                        if (CurrRow < MaxRow && col == 0) AddTableLastRow(tabIdx);
                    }
                }
            }
            catch (Exception ex) {
                log4net.Config.XmlConfigurator.Configure();
                log.Error(ex.Message);
            }
        }
       
    }
}