using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.IO;
using System.Text;
using System.Runtime.InteropServices;
using Aspose.Cells;
using System.Drawing;
namespace PhongHopKhongGiay.Report
{
    /// <summary>
    /// Summary description for ExcelStream.
    /// </summary>	
    public class ExcelStream
    {
        const int DEFAULT_RANGE_COL = 20;
        const int DEFAULT_RANGE_ROW = 30;
        const int DEFAULT_NUM_OF_BREAK_LINE = 3;
        Workbook wb;
        FileStream fstr;
        string FlPath;
        bool useStream = true;
        int activeSheet = 0;
        public System.Drawing.Color DefaultTitleBarColor = Color.FromArgb(233, 235, 232);

        public ExcelStream()
        {
            wb = new Workbook();
        }

        //Lấy-Gán bảng tính(sheet) hiện tại
        public int ActiveSheet
        {
            get { return this.activeSheet; }
            set { this.activeSheet = value; }
        }

        public bool Open(string FilePath)
        {
            try
            {
                FlPath = FilePath;
                fstr = new FileStream(FilePath, FileMode.Open, FileAccess.ReadWrite);
                wb.Open(fstr);
            }
            catch
            {
                return false;
            }
            return true;
        }


        public bool OpenWithoutStream(string FilePath)
        {
            try
            {
                FlPath = FilePath;
                this.useStream = false;
                //fstr = new FileStream(FilePath, FileMode.Open, FileAccess.ReadWrite);				
                wb.Open(FilePath);
            }
            catch
            {
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
                wb.Open(fstr, '\t');
            }
            catch (Exception ex)
            {
                return false;
            }
            return true;
        }

        //Lấy danh sách bảng tính(Sheet) hiện tại trong file Excel
        public string[] DanhSachBang
        {
            get
            {
                try
                {
                    string[] Bangs = new string[wb.Worksheets.Count];
                    for (int i = 0; i < Bangs.Length; i++)
                        Bangs[i] = wb.Worksheets[i].Name;
                    return Bangs;
                }
                catch { return null; }
            }
        }

        public DataTable FindTable()
        {
            DataTable tbl = new DataTable();

            try
            {
                //Tim vi tri bat dau cua bang!
                int sCol = 0;
                int sRow = 0;
                int breakCount = 0;
                bool isContinue = false;

                for (; sRow < DEFAULT_RANGE_ROW; sRow++)
                {
                    for (; sCol < DEFAULT_RANGE_COL; sCol++)
                    {
                        if (!string.IsNullOrEmpty(wb.Worksheets[activeSheet].Cells[sRow, sCol].StringValue.Trim()))
                            goto GetRow;
                    }
                    sCol = 0;
                }
            GetRow:
                if (sRow < DEFAULT_RANGE_ROW && sCol < DEFAULT_RANGE_COL)
                {
                    //Lay Header cua Table!
                    string temstr;
                    while (true)
                    {
                        temstr = wb.Worksheets[activeSheet].Cells[sRow, sCol].StringValue.Trim();
                        if (!string.IsNullOrEmpty(temstr))
                        {
                            tbl.Columns.Add(temstr);
                            sCol++;
                        }
                        else
                        {
                            sCol = sCol - tbl.Columns.Count;
                            break;
                        }
                    }

                    //Kiem tra va lay du lieu vao cac record cho Table!                    
                    while (true)
                    {
                        isContinue = false;
                        sRow++;
                        DataRow ro = tbl.NewRow();
                        for (int t = 0; t < tbl.Columns.Count; t++)
                        {
                            temstr = wb.Worksheets[activeSheet].Cells[sRow, sCol + t].StringValue.Trim();
                            if (!string.IsNullOrEmpty(temstr))
                            {
                                isContinue = true;
                                ro[t] = temstr;
                            }
                        }
                        if (!isContinue)
                        {
                            breakCount++;
                            if (breakCount >= DEFAULT_NUM_OF_BREAK_LINE)
                                break;
                        }
                        else
                        {
                            tbl.Rows.Add(ro);
                            breakCount = 0;
                        }
                    }
                }
                return tbl;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        /// <summary>
        /// Tìm và trả về một DataTable từ nội dung một Sheet với vị trí bắt đầu tìm xác định.
        /// </summary>
        /// <param name="StartCol">Vị trí bắt đầu tìm theo cột</param>
        /// <param name="StartRow">Vị trí bắt đầu tìm theo dòng</param>
        /// <returns></returns>
        public DataTable FindTable(int StartCol, int StartRow)
        {
            DataTable tbl = new DataTable();
            int breakCount = 0;
            int sCol = StartCol;
            bool isContinue = false;
            try
            {
                //Tim vi tri bat dau cua bang!
                for (; StartRow < DEFAULT_RANGE_ROW; StartRow++)
                {
                    for (; StartCol < DEFAULT_RANGE_COL; StartCol++)
                    {
                        if (!string.IsNullOrEmpty(wb.Worksheets[activeSheet].Cells[StartRow, StartCol].StringValue.Trim()))
                            goto GetRow;
                    }
                    StartCol = sCol;
                }
            GetRow:
                if (StartRow < DEFAULT_RANGE_ROW && StartCol < DEFAULT_RANGE_COL)
                {
                    //Lay Header cua Table!
                    string temstr;
                    while (true)
                    {
                        temstr = wb.Worksheets[activeSheet].Cells[StartRow, StartCol].StringValue.Trim();
                        if (!string.IsNullOrEmpty(temstr))
                        {
                            tbl.Columns.Add(temstr);
                            StartCol++;
                        }
                        else
                        {
                            StartCol = StartCol - tbl.Columns.Count;
                            break;
                        }
                    }

                    //Kiem tra va lay du lieu vao cac record cho Table!                    
                    while (true)
                    {
                        isContinue = false;
                        StartRow++;
                        DataRow ro = tbl.NewRow();
                        for (int t = 0; t < tbl.Columns.Count; t++)
                        {
                            temstr = wb.Worksheets[activeSheet].Cells[StartRow, StartCol + t].StringValue.Trim();
                            if (!string.IsNullOrEmpty(temstr))
                            {
                                isContinue = true;
                                ro[t] = temstr;
                            }
                        }
                        if (!isContinue)
                        {
                            breakCount++;
                            if (breakCount >= DEFAULT_NUM_OF_BREAK_LINE)
                                break;
                        }
                        else
                        {
                            tbl.Rows.Add(ro);
                            breakCount = 0;
                        }
                    }
                }
                return tbl;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        /// <summary>
        /// Tìm và trả về một DataTable từ nội dung một Sheet với vị trí bắt đầu tìm xác định. Điều kiện ngắt là gặp số dòng trắng bằng tham số truyền vào.
        /// </summary>
        /// <param name="StartCol">Vị trí bắt đầu tìm theo cột</param>
        /// <param name="StartRow">Vị trí bắt đầu tìm theo dòng</param>
        /// <param name="NumOfWhiteLineToBreak">Số dòng trắng xuất hiện trước khi kết thúc bảng</param>
        /// <returns></returns>
        public DataTable FindTable(int StartCol, int StartRow, int NumOfWhiteLineToBreak)
        {
            DataTable tbl = new DataTable();
            int breakCount = 0;
            int sCol = StartCol;
            bool isContinue = false;
            try
            {
                //Tim vi tri bat dau cua bang!
                for (; StartRow < DEFAULT_RANGE_ROW; StartRow++)
                {
                    for (; StartCol < DEFAULT_RANGE_COL; StartCol++)
                    {
                        if (!string.IsNullOrEmpty(wb.Worksheets[activeSheet].Cells[StartRow, StartCol].StringValue.Trim()))
                            goto GetRow;
                    }
                    StartCol = sCol;
                }
            GetRow:
                if (StartRow < DEFAULT_RANGE_ROW && StartCol < DEFAULT_RANGE_COL)
                {
                    //Lay Header cua Table!
                    string temstr;
                    while (true)
                    {
                        temstr = wb.Worksheets[activeSheet].Cells[StartRow, StartCol].StringValue.Trim();
                        if (!string.IsNullOrEmpty(temstr))
                        {
                            tbl.Columns.Add(temstr);
                            StartCol++;
                        }
                        else
                        {
                            StartCol = StartCol - tbl.Columns.Count;
                            break;
                        }
                    }

                    //Kiem tra va lay du lieu vao cac record cho Table!                    
                    while (true)
                    {
                        isContinue = false;
                        StartRow++;
                        DataRow ro = tbl.NewRow();
                        for (int t = 0; t < tbl.Columns.Count; t++)
                        {
                            temstr = wb.Worksheets[activeSheet].Cells[StartRow, StartCol + t].StringValue.Trim();
                            if (!string.IsNullOrEmpty(temstr))
                            {
                                isContinue = true;
                                ro[t] = temstr;
                            }
                        }
                        if (!isContinue)
                        {
                            breakCount++;
                            if (breakCount >= NumOfWhiteLineToBreak)
                                break;
                        }
                        else
                        {
                            tbl.Rows.Add(ro);
                            breakCount = 0;
                        }
                    }
                }
                return tbl;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public void PutValueToCell(int Row, int Col, string Value)
        {
            wb.Worksheets[activeSheet].Cells[Row, Col].PutValue(Value);
        }

        public void PutValueToCell(int Row, int Col, int Value)
        {
            wb.Worksheets[activeSheet].Cells[Row, Col].PutValue(Value);
        }

        public void PutValueToCell(int Row, int Col, double Value)
        {
            wb.Worksheets[activeSheet].Cells[Row, Col].PutValue(Value);
        }

        public void PutValueToCell(int Row, int Col, DateTime Value)
        {
            wb.Worksheets[activeSheet].Cells[Row, Col].PutValue(Value);
        }

        public void PutValueToCell(int Row, int Col, bool Value)
        {
            wb.Worksheets[activeSheet].Cells[Row, Col].PutValue(Value);
        }

        public void ImportDataTable(DataView InputTable, int StartRow, byte StartCol, bool UseDataSourceHeader, bool InsertRow)
        {
            try
            {
                wb.Worksheets[this.activeSheet].Cells.ImportDataView(InputTable, UseDataSourceHeader, StartRow, StartCol, InsertRow);
            }
            catch (Exception exc)
            {
                throw exc;
            }
        }

        public void ImportDataTable(DataTable InputTable, int StartRow, byte StartCol, bool UseDataSourceHeader, bool InsertRow)
        {
            try
            {
                wb.Worksheets[this.activeSheet].Cells.ImportDataTable(InputTable, UseDataSourceHeader, StartRow, StartCol, InsertRow);
            }
            catch (Exception exc)
            {
                throw exc;
            }
        }

        public void ImportDataTable(DataTable InputTable, int StartRow, int StartCol, int NumOfTableCol, bool IncludeSTT)
        {
            if (!IncludeSTT)
                StartCol -= 1;
            int idx = 0;
            foreach (DataRow ro in InputTable.Rows)
            {
                if (IncludeSTT)
                    wb.Worksheets[activeSheet].Cells[StartRow + idx, StartCol].PutValue(idx + 1);

                for (int icol = 0; icol < NumOfTableCol; icol++)
                {
                    if ((object)ro[icol] != DBNull.Value)              
                    wb.Worksheets[activeSheet].Cells[StartRow + idx, StartCol + 1 + icol].PutValue(ro[icol].ToString().Replace("<br/>", Environment.NewLine));
                    else
                        wb.Worksheets[activeSheet].Cells[StartRow + idx, StartCol + 1 + icol].PutValue("");
                }
                idx += 1;
            }
        }

        public void SetRangeStyle(int TopRow, int LeftCol, int BotRow, int RightCol, System.Drawing.Font font, Color TextColor, bool isWrapText)
        {
            Style cellStyle = null;
            int index = wb.Styles.Add();
            cellStyle = wb.Styles[index];
            cellStyle.Name = "NewStyle" + wb.Styles.Count;
            cellStyle.Borders.DiagonalStyle = CellBorderType.None;

            cellStyle.Borders[BorderType.LeftBorder].LineStyle = CellBorderType.Thin;
            cellStyle.Borders[BorderType.RightBorder].LineStyle = CellBorderType.Thin;
            cellStyle.Borders[BorderType.TopBorder].LineStyle = CellBorderType.Thin;
            cellStyle.Borders[BorderType.BottomBorder].LineStyle = CellBorderType.Thin;
            cellStyle.Borders.SetColor(Color.Silver);

            cellStyle.Font.Name = font.FontFamily.Name;
            cellStyle.Font.Size = (int)font.Size;
            cellStyle.Font.Color = TextColor;
            cellStyle.Font.IsBold = font.Bold;
            cellStyle.Font.IsItalic = font.Italic;
            cellStyle.Font.IsStrikeout = font.Strikeout;
            cellStyle.IsTextWrapped = isWrapText;
            cellStyle.HorizontalAlignment = Aspose.Cells.TextAlignmentType.Left;
            cellStyle.VerticalAlignment = Aspose.Cells.TextAlignmentType.Center;

            Range rg = wb.Worksheets[activeSheet].Cells.CreateRange(TopRow, LeftCol, BotRow - TopRow + 1, RightCol - LeftCol + 1);
            //rg.Style = wb.Styles[cellStyle.Name];
            rg.SetStyle(wb.Styles[cellStyle.Name]);
        }

        public void SetRangeStyle(int TopRow, int LeftCol, int BotRow, int RightCol, System.Drawing.Font font, Color TextColor, bool isWrapText, TextAlign alg)
        {
            Style cellStyle = null;
            int index = wb.Styles.Add();
            cellStyle = wb.Styles[index];
            cellStyle.Name = "NewStyle" + wb.Styles.Count;
            cellStyle.Borders.DiagonalStyle = CellBorderType.None;

            cellStyle.Borders[BorderType.LeftBorder].LineStyle = CellBorderType.Thin;
            cellStyle.Borders[BorderType.RightBorder].LineStyle = CellBorderType.Thin;
            cellStyle.Borders[BorderType.TopBorder].LineStyle = CellBorderType.Thin;
            cellStyle.Borders[BorderType.BottomBorder].LineStyle = CellBorderType.Thin;
            cellStyle.Borders.SetColor(Color.Silver);

            cellStyle.Font.Name = font.FontFamily.Name;
            cellStyle.Font.Size = (int)font.Size;
            cellStyle.Font.Color = TextColor;
            cellStyle.Font.IsBold = font.Bold;
            cellStyle.Font.IsItalic = font.Italic;
            cellStyle.Font.IsStrikeout = font.Strikeout;
            cellStyle.IsTextWrapped = isWrapText;
            cellStyle.HorizontalAlignment = GetAlignStyle(alg);
            cellStyle.VerticalAlignment = Aspose.Cells.TextAlignmentType.Center;

            Range rg = wb.Worksheets[activeSheet].Cells.CreateRange(TopRow, LeftCol, BotRow - TopRow + 1, RightCol - LeftCol + 1);
            //rg.Style = wb.Styles[cellStyle.Name];
            rg.SetStyle(wb.Styles[cellStyle.Name]);
        }

        public void SetRangeStyle(int TopRow, int LeftCol, int BotRow, int RightCol, System.Drawing.Font font, Color TextColor, TextAlign alg, int RowHeight, bool IsFixColumn)
        {
            Style cellStyle = null;
            int index = wb.Styles.Add();
            cellStyle = wb.Styles[index];
            cellStyle.Name = "NewStyle" + wb.Styles.Count;

            cellStyle.Borders.DiagonalStyle = CellBorderType.None;
            cellStyle.Borders[BorderType.LeftBorder].LineStyle = CellBorderType.Thin;
            cellStyle.Borders[BorderType.RightBorder].LineStyle = CellBorderType.Thin;
            cellStyle.Borders[BorderType.TopBorder].LineStyle = CellBorderType.Thin;
            cellStyle.Borders[BorderType.BottomBorder].LineStyle = CellBorderType.Thin;
            cellStyle.Borders.SetColor(Color.Silver);

            cellStyle.Font.Name = font.FontFamily.Name;
            cellStyle.Font.Size = (int)font.Size;
            cellStyle.Font.Color = TextColor;
            cellStyle.Font.IsBold = font.Bold;
            cellStyle.Font.IsItalic = font.Italic;
            cellStyle.Font.IsStrikeout = font.Strikeout;
            cellStyle.IsTextWrapped = true;
            cellStyle.HorizontalAlignment = GetAlignStyle(alg);
            cellStyle.VerticalAlignment = Aspose.Cells.TextAlignmentType.Center;
            //cellStyle.ShrinkToFit = IsFixColumn;

            Range rg = wb.Worksheets[activeSheet].Cells.CreateRange(TopRow, LeftCol, BotRow - TopRow + 1, RightCol - LeftCol + 1);
            rg.RowHeight = RowHeight;
            if (IsFixColumn)
            {
                for (int i = LeftCol; i <= RightCol; i++)
                {
                    rg.Worksheet.AutoFitColumn(i, TopRow, BotRow);
                }
            }
            //rg.Style = wb.Styles[cellStyle.Name];
            rg.SetStyle(wb.Styles[cellStyle.Name]);
        }

        public void SetRangeStyle(int TopRow, int LeftCol, int BotRow, int RightCol, System.Drawing.Font font, Color TextColor, TextAlign alg, int RowHeight, bool IsFixColumn, bool WithBorder)
        {
            Style cellStyle = null;
            int index = wb.Styles.Add();
            cellStyle = wb.Styles[index];
            cellStyle.Name = "NewStyle" + wb.Styles.Count;

            cellStyle.Borders.DiagonalStyle = CellBorderType.None;
            if (WithBorder)
            {
                cellStyle.Borders[BorderType.LeftBorder].LineStyle = CellBorderType.Thin;
                cellStyle.Borders[BorderType.RightBorder].LineStyle = CellBorderType.Thin;
                cellStyle.Borders[BorderType.TopBorder].LineStyle = CellBorderType.Thin;
                cellStyle.Borders[BorderType.BottomBorder].LineStyle = CellBorderType.Thin;
                cellStyle.Borders.SetColor(Color.Silver);
            }
            cellStyle.Font.Name = font.FontFamily.Name;
            cellStyle.Font.Size = (int)font.Size;
            cellStyle.Font.Color = TextColor;
            cellStyle.Font.IsBold = font.Bold;
            cellStyle.Font.IsItalic = font.Italic;
            cellStyle.Font.IsStrikeout = font.Strikeout;
            cellStyle.IsTextWrapped = true;
            cellStyle.HorizontalAlignment = GetAlignStyle(alg);
            cellStyle.VerticalAlignment = Aspose.Cells.TextAlignmentType.Center;
            //cellStyle.ShrinkToFit = IsFixColumn;

            Range rg = wb.Worksheets[activeSheet].Cells.CreateRange(TopRow, LeftCol, BotRow - TopRow + 1, RightCol - LeftCol + 1);
            rg.RowHeight = RowHeight;
            if (IsFixColumn)
            {
                for (int i = LeftCol; i <= RightCol; i++)
                {
                    rg.Worksheet.AutoFitColumn(i, TopRow, BotRow);
                }
            }
            //rg.Style = wb.Styles[cellStyle.Name];
            rg.SetStyle(wb.Styles[cellStyle.Name]);
        }

        public void SetRangeStyle(int TopRow, int LeftCol, int BotRow, int RightCol, System.Drawing.Font font, Color TextColor, TextAlign alg, int RowHeight, bool IsFixColumn, bool WithBorder, bool IsWrapText)
        {
            Style cellStyle = null;
            int index = wb.Styles.Add();
            cellStyle = wb.Styles[index];
            cellStyle.Name = "NewStyle" + wb.Styles.Count;

            cellStyle.Borders.DiagonalStyle = CellBorderType.None;
            if (WithBorder)
            {
                cellStyle.Borders[BorderType.LeftBorder].LineStyle = CellBorderType.Thin;
                cellStyle.Borders[BorderType.RightBorder].LineStyle = CellBorderType.Thin;
                cellStyle.Borders[BorderType.TopBorder].LineStyle = CellBorderType.Thin;
                cellStyle.Borders[BorderType.BottomBorder].LineStyle = CellBorderType.Thin;
                cellStyle.Borders.SetColor(Color.Silver);
            }
            cellStyle.Font.Name = font.FontFamily.Name;
            cellStyle.Font.Size = (int)font.Size;
            cellStyle.Font.Color = TextColor;
            cellStyle.Font.IsBold = font.Bold;
            cellStyle.Font.IsItalic = font.Italic;
            cellStyle.Font.IsStrikeout = font.Strikeout;
            cellStyle.IsTextWrapped = IsWrapText;
            cellStyle.HorizontalAlignment = GetAlignStyle(alg);
            cellStyle.VerticalAlignment = Aspose.Cells.TextAlignmentType.Center;
            //cellStyle.ShrinkToFit = IsFixColumn;

            Range rg = wb.Worksheets[activeSheet].Cells.CreateRange(TopRow, LeftCol, BotRow - TopRow + 1, RightCol - LeftCol + 1);
            rg.RowHeight = RowHeight;
            if (IsFixColumn)
            {
                for (int i = LeftCol; i <= RightCol; i++)
                {
                    rg.Worksheet.AutoFitColumn(i, TopRow, BotRow);
                }
            }
            //rg.Style = wb.Styles[cellStyle.Name];
            rg.SetStyle(wb.Styles[cellStyle.Name]);
        }

        public void SetRangeStyle(int TopRow, int LeftCol, int BotRow, int RightCol, System.Drawing.Font font, Color TextColor, TextAlign alg, int RowHeight, bool IsFixColumn, Color BorderColor)
        {
            Style cellStyle = null;
            int index = wb.Styles.Add();
            cellStyle = wb.Styles[index];
            cellStyle.Name = "NewStyle" + wb.Styles.Count;

            cellStyle.Borders.DiagonalStyle = CellBorderType.None;
            cellStyle.Borders[BorderType.LeftBorder].LineStyle = CellBorderType.Thin;
            cellStyle.Borders[BorderType.RightBorder].LineStyle = CellBorderType.Thin;
            cellStyle.Borders[BorderType.TopBorder].LineStyle = CellBorderType.Thin;
            cellStyle.Borders[BorderType.BottomBorder].LineStyle = CellBorderType.Thin;
            cellStyle.Borders.SetColor(BorderColor);

            cellStyle.Font.Name = font.FontFamily.Name;
            cellStyle.Font.Size = (int)font.Size;
            cellStyle.Font.Color = TextColor;
            cellStyle.Font.IsBold = font.Bold;
            cellStyle.Font.IsItalic = font.Italic;
            cellStyle.Font.IsStrikeout = font.Strikeout;
            cellStyle.IsTextWrapped = true;
            cellStyle.HorizontalAlignment = GetAlignStyle(alg);
            cellStyle.VerticalAlignment = Aspose.Cells.TextAlignmentType.Center;
            //cellStyle.ShrinkToFit = IsFixColumn;

            Range rg = wb.Worksheets[activeSheet].Cells.CreateRange(TopRow, LeftCol, BotRow - TopRow + 1, RightCol - LeftCol + 1);
            rg.RowHeight = RowHeight;
            if (IsFixColumn)
            {
                for (int i = LeftCol; i <= RightCol; i++)
                {
                    rg.Worksheet.AutoFitColumn(i, TopRow, BotRow);
                }
            }
            //rg.Style = wb.Styles[cellStyle.Name];
            rg.SetStyle(wb.Styles[cellStyle.Name]);
        }

        public void SetRangeStyle(int TopRow, int LeftCol, int BotRow, int RightCol, System.Drawing.Font font, Color TextColor, TextAlign alg, TextAlign Halg, bool IsFixColumn)
        {
            Style cellStyle = null;
            int index = wb.Styles.Add();
            cellStyle = wb.Styles[index];
            cellStyle.Name = "NewStyle" + wb.Styles.Count;
            cellStyle.Borders.DiagonalStyle = CellBorderType.None;

            cellStyle.Borders[BorderType.LeftBorder].LineStyle = CellBorderType.Thin;
            cellStyle.Borders[BorderType.RightBorder].LineStyle = CellBorderType.Thin;
            cellStyle.Borders[BorderType.TopBorder].LineStyle = CellBorderType.Thin;
            cellStyle.Borders[BorderType.BottomBorder].LineStyle = CellBorderType.Thin;
            cellStyle.Borders.SetColor(Color.Silver);

            cellStyle.Font.Name = font.FontFamily.Name;
            cellStyle.Font.Size = (int)font.Size;
            cellStyle.Font.Color = TextColor;
            cellStyle.Font.IsBold = font.Bold;
            cellStyle.Font.IsItalic = font.Italic;
            cellStyle.Font.IsStrikeout = font.Strikeout;
            cellStyle.IsTextWrapped = true;
            cellStyle.HorizontalAlignment = GetAlignStyle(alg);
            cellStyle.VerticalAlignment = GetAlignStyle(Halg);
            //cellStyle.VerticalAlignment= Aspose.Cells.TextAlignmentType.Center;
            //cellStyle.ShrinkToFit = IsFixColumn;			

            Range rg = wb.Worksheets[activeSheet].Cells.CreateRange(TopRow, LeftCol, BotRow - TopRow + 1, RightCol - LeftCol + 1);

            if (IsFixColumn)
            {
                for (int i = LeftCol; i <= RightCol; i++)
                {
                    rg.Worksheet.AutoFitColumn(i, TopRow, BotRow);
                }
            }
            //rg.Style = wb.Styles[cellStyle.Name];
            rg.SetStyle(wb.Styles[cellStyle.Name]);
        }

        public void SetRangeStyle(int TopRow, int LeftCol, int BotRow, int RightCol, System.Drawing.Font font, Color TextColor, TextAlign alg, bool IsFixColumn)
        {
            Style cellStyle = null;
            int index = wb.Styles.Add();
            cellStyle = wb.Styles[index];
            cellStyle.Name = "NewStyle" + wb.Styles.Count;
            cellStyle.Borders.DiagonalStyle = CellBorderType.None;

            cellStyle.Font.Name = font.FontFamily.Name;
            cellStyle.Font.Size = (int)font.Size;
            cellStyle.Font.Color = TextColor;
            cellStyle.Font.IsBold = font.Bold;
            cellStyle.Font.IsItalic = font.Italic;
            cellStyle.Font.IsStrikeout = font.Strikeout;
            cellStyle.IsTextWrapped = true;
            cellStyle.HorizontalAlignment = GetAlignStyle(alg);
            cellStyle.VerticalAlignment = Aspose.Cells.TextAlignmentType.Center;
            cellStyle.ShrinkToFit = IsFixColumn;

            Range rg = wb.Worksheets[activeSheet].Cells.CreateRange(TopRow, LeftCol, BotRow - TopRow + 1, RightCol - LeftCol + 1);
            //rg.Style = wb.Styles[cellStyle.Name];
            rg.SetStyle(wb.Styles[cellStyle.Name]);
        }

        public void SetRangeStyle(int TopRow, int LeftCol, int BotRow, int RightCol, System.Drawing.Font font, Color TextColor, TextAlign alg, int RowHeight, Color BackColor)
        {
            Style cellStyle = null;
            int index = wb.Styles.Add();
            cellStyle = wb.Styles[index];
            cellStyle.Name = "NewStyle" + wb.Styles.Count;

            cellStyle.Borders.DiagonalStyle = CellBorderType.None;
            cellStyle.Borders[BorderType.LeftBorder].LineStyle = CellBorderType.Thin;
            cellStyle.Borders[BorderType.RightBorder].LineStyle = CellBorderType.Thin;
            cellStyle.Borders[BorderType.TopBorder].LineStyle = CellBorderType.Thin;
            cellStyle.Borders[BorderType.BottomBorder].LineStyle = CellBorderType.Thin;
            cellStyle.Borders.SetColor(Color.Silver);

            cellStyle.Pattern = BackgroundType.Solid;
            cellStyle.ForegroundColor = BackColor;
            cellStyle.BackgroundColor = BackColor;

            cellStyle.Font.Name = font.FontFamily.Name;
            cellStyle.Font.Size = (int)font.Size;
            cellStyle.Font.Color = TextColor;
            cellStyle.Font.IsBold = font.Bold;
            cellStyle.Font.IsItalic = font.Italic;
            cellStyle.Font.IsStrikeout = font.Strikeout;
            cellStyle.IsTextWrapped = true;
            cellStyle.HorizontalAlignment = GetAlignStyle(alg);
            cellStyle.VerticalAlignment = Aspose.Cells.TextAlignmentType.Center;

            Range rg = wb.Worksheets[activeSheet].Cells.CreateRange(TopRow, LeftCol, BotRow - TopRow + 1, RightCol - LeftCol + 1);
            rg.RowHeight = RowHeight;
            //rg.Style = wb.Styles[cellStyle.Name];
            rg.SetStyle(wb.Styles[cellStyle.Name]);
        }

        public void SetRangeStyle(int TopRow, int LeftCol, int BotRow, int RightCol, System.Drawing.Font font, Color TextColor, TextAlign alg, int RowHeight, Color BorderColor, Color BackColor)
        {
            Style cellStyle = null;
            int index = wb.Styles.Add();
            cellStyle = wb.Styles[index];
            cellStyle.Name = "NewStyle" + wb.Styles.Count;

            cellStyle.Borders.DiagonalStyle = CellBorderType.None;
            cellStyle.Borders[BorderType.LeftBorder].LineStyle = CellBorderType.Thin;
            cellStyle.Borders[BorderType.RightBorder].LineStyle = CellBorderType.Thin;
            cellStyle.Borders[BorderType.TopBorder].LineStyle = CellBorderType.Thin;
            cellStyle.Borders[BorderType.BottomBorder].LineStyle = CellBorderType.Thin;
            cellStyle.Borders.SetColor(BorderColor);

            cellStyle.Pattern = BackgroundType.Solid;
            cellStyle.ForegroundColor = BackColor;
            //cellStyle.BackgroundColor = BackColor;

            cellStyle.Font.Name = font.FontFamily.Name;
            cellStyle.Font.Size = (int)font.Size;
            cellStyle.Font.Color = TextColor;
            cellStyle.Font.IsBold = font.Bold;
            cellStyle.Font.IsItalic = font.Italic;
            cellStyle.Font.IsStrikeout = font.Strikeout;
            cellStyle.IsTextWrapped = true;
            cellStyle.HorizontalAlignment = GetAlignStyle(alg);
            cellStyle.VerticalAlignment = Aspose.Cells.TextAlignmentType.Center;

            Range rg = wb.Worksheets[activeSheet].Cells.CreateRange(TopRow, LeftCol, BotRow - TopRow + 1, RightCol - LeftCol + 1);
            rg.RowHeight = RowHeight;
            //rg.Style = wb.Styles[cellStyle.Name];
            rg.SetStyle(wb.Styles[cellStyle.Name]);
        }

        public void SetRangeBorder(int TopRow, int LeftCol, int BotRow, int RightCol)
        {
            Range rg = wb.Worksheets[activeSheet].Cells.CreateRange(TopRow, LeftCol, BotRow - TopRow + 1, RightCol - LeftCol + 1);
            rg.SetOutlineBorder(BorderType.RightBorder, CellBorderType.Thin, Color.Black);
            rg.SetOutlineBorder(BorderType.LeftBorder, CellBorderType.Thin, Color.Black);
            rg.SetOutlineBorder(BorderType.TopBorder, CellBorderType.Thin, Color.Black);
            rg.SetOutlineBorder(BorderType.BottomBorder, CellBorderType.Thin, Color.Black);
        }

        public void SetCellsBorder(int TopRow, int LeftCol, int BotRow, int RightCol, bool AtTop, bool AtLeft, bool AtRight, bool AtBottom)
        {
            Style cellStyle = null;
            int index = wb.Styles.Add();
            cellStyle = wb.Styles[index];
            cellStyle.Name = "NewStyle" + wb.Styles.Count;
            cellStyle.Borders.DiagonalStyle = CellBorderType.None;

            if (AtLeft)
                cellStyle.Borders[BorderType.LeftBorder].LineStyle = CellBorderType.Thin;
            if (AtRight)
                cellStyle.Borders[BorderType.RightBorder].LineStyle = CellBorderType.Thin;
            if (AtTop)
                cellStyle.Borders[BorderType.TopBorder].LineStyle = CellBorderType.Thin;
            if (AtBottom)
                cellStyle.Borders[BorderType.BottomBorder].LineStyle = CellBorderType.Thin;

            Range rg = wb.Worksheets[activeSheet].Cells.CreateRange(TopRow, LeftCol, BotRow - TopRow + 1, RightCol - LeftCol + 1);
            //rg.Style = wb.Styles[cellStyle.Name];
            rg.SetStyle(wb.Styles[cellStyle.Name]);
        }

        public void SetCellsBorder(int TopRow, int LeftCol, int BotRow, int RightCol, bool AtTop, bool AtLeft, bool AtRight, bool AtBottom, Color GridColor)
        {
            Range rg = wb.Worksheets[activeSheet].Cells.CreateRange(TopRow, LeftCol, BotRow - TopRow + 1, RightCol - LeftCol + 1);
            //rg.Style.Borders.DiagonalStyle = CellBorderType.None;

            Style cellStyle = null;
            int index = wb.Styles.Add();
            cellStyle = wb.Styles[index];
            cellStyle.Name = "NewStyle" + wb.Styles.Count;
            cellStyle.Borders.DiagonalStyle = CellBorderType.None;
            if (AtLeft)
                cellStyle.Borders[BorderType.LeftBorder].LineStyle = CellBorderType.Thin;
            if (AtRight)
                cellStyle.Borders[BorderType.RightBorder].LineStyle = CellBorderType.Thin;
            if (AtTop)
                cellStyle.Borders[BorderType.TopBorder].LineStyle = CellBorderType.Thin;
            if (AtBottom)
                cellStyle.Borders[BorderType.BottomBorder].LineStyle = CellBorderType.Thin;
            cellStyle.Borders.SetColor(GridColor);
            //rg.Style = cellStyle;
            rg.SetStyle(wb.Styles[cellStyle.Name]);
        }

        public void SetColumWidth(byte Col, int Width)
        {
            Range rg = wb.Worksheets[activeSheet].Cells.CreateRange(1, Col, 1, 1);
            rg.ColumnWidth = Width;
        }

        public void AutoFixColumns(int TopRow, int LeftCol, int BotRow, int RightCol)
        {
            for (int i = LeftCol; i <= RightCol; i++)
            {
                wb.Worksheets[activeSheet].AutoFitColumn(i, TopRow, BotRow);
            }
        }

        public void AutoFixRows(int TopRow, byte LeftCol, int BotRow, byte RightCol)
        {
            for (int i = TopRow; i <= BotRow; i++)
            {
                wb.Worksheets[activeSheet].AutoFitRow(i, LeftCol, RightCol);
            }
        }

        public void AutoFixRows()
        {
            wb.Worksheets[activeSheet].AutoFitRows();
        }

        public void ChangePaletteColor(Color UserColor)
        {
            wb.ChangePalette(UserColor, 50);
        }

        public void ChangePaletteColor()
        {
            wb.ChangePalette(DefaultTitleBarColor, 50);
        }

        public void ChangePaletteColor(Color UserColor, int PalIndex)
        {
            wb.ChangePalette(UserColor, PalIndex);
        }

        public void SetCellTempBorder(bool Show)
        {
            wb.Worksheets[activeSheet].IsGridlinesVisible = Show;
        }

        public void SetRowHeight(int Row, int Height)
        {
            Range rg = wb.Worksheets[activeSheet].Cells.CreateRange(Row, 1, 1, 1);
            rg.RowHeight = Height;
        }

        public void DeleteColumnAt(byte ColIdx)
        {
            wb.Worksheets[activeSheet].Cells.DeleteColumn(ColIdx);
        }

        public void DeleteRowAt(int RowIdx)
        {
            wb.Worksheets[activeSheet].Cells.DeleteRow(RowIdx);
        }

        public void InsertColumnAt(byte ColIdx)
        {
            wb.Worksheets[activeSheet].Cells.InsertColumn(ColIdx);
        }

        public void InsertRowAt(int RowIdx)
        {
            wb.Worksheets[activeSheet].Cells.InsertRow(RowIdx);
        }

        public void SetCellsBorder(int TopRow, int LeftCol, int BotRow, int RightCol)
        {
            Style cellStyle = null;
            int index = wb.Styles.Add();
            cellStyle = wb.Styles[index];
            cellStyle.Name = "NewStyle" + wb.Styles.Count;
            cellStyle.Borders.DiagonalStyle = CellBorderType.None;

            cellStyle.Borders[BorderType.LeftBorder].LineStyle = CellBorderType.Thin;
            cellStyle.Borders[BorderType.RightBorder].LineStyle = CellBorderType.Thin;
            cellStyle.Borders[BorderType.TopBorder].LineStyle = CellBorderType.Thin;
            cellStyle.Borders[BorderType.BottomBorder].LineStyle = CellBorderType.Thin;
            cellStyle.VerticalAlignment = Aspose.Cells.TextAlignmentType.Center;
            cellStyle.IsTextWrapped = true;

            Range rg = wb.Worksheets[activeSheet].Cells.CreateRange(TopRow, LeftCol, BotRow - TopRow + 1, RightCol - LeftCol + 1);
            //rg.Style = wb.Styles[cellStyle.Name];
            rg.SetStyle(wb.Styles[cellStyle.Name]);
        }

        public void SetRangeBorder(int TopRow, int LeftCol, int BotRow, int RightCol, bool AtTop, bool AtLeft, bool AtRight, bool AtBottom)
        {
            Range rg = wb.Worksheets[activeSheet].Cells.CreateRange(TopRow, LeftCol, BotRow - TopRow + 1, RightCol - LeftCol + 1);
            if (AtRight)
                rg.SetOutlineBorder(BorderType.RightBorder, CellBorderType.Thin, Color.Black);
            if (AtLeft)
                rg.SetOutlineBorder(BorderType.LeftBorder, CellBorderType.Thin, Color.Black);
            if (AtTop)
                rg.SetOutlineBorder(BorderType.TopBorder, CellBorderType.Thin, Color.Black);
            if (AtBottom)
                rg.SetOutlineBorder(BorderType.BottomBorder, CellBorderType.Thin, Color.Black);
        }

        public void SetRangeBorder(int TopRow, int LeftCol, int BotRow, int RightCol, System.Drawing.Color BorderColor)
        {
            Range rg = wb.Worksheets[activeSheet].Cells.CreateRange(TopRow, LeftCol, BotRow - TopRow + 1, RightCol - LeftCol + 1);
            rg.SetOutlineBorder(BorderType.RightBorder, CellBorderType.Thin, BorderColor);
            rg.SetOutlineBorder(BorderType.LeftBorder, CellBorderType.Thin, BorderColor);
            rg.SetOutlineBorder(BorderType.TopBorder, CellBorderType.Thin, BorderColor);
            rg.SetOutlineBorder(BorderType.BottomBorder, CellBorderType.Thin, BorderColor);
        }

        public void MergeCells(int TopRow, int LeftCol, int BotRow, int RightCol)
        {
            Range rg = wb.Worksheets[activeSheet].Cells.CreateRange(TopRow, LeftCol, BotRow - TopRow + 1, RightCol - LeftCol + 1);
            rg.Merge();
        }

        /// <summary>
        /// TUNGLDL - merge field từng cột
        /// </summary>
        /// <param name="InputedData">dữ liệu đầu vào</param>
        /// <param name="SortFieldName">tên cột muốn sort</param>
        /// <param name="MergeRowStart">dòng bắt đầu merge (định nghĩa trong databse)</param>
        /// <param name="startRow">dòng bắt đầu merge lần đầu</param>
        /// <param name="MergeColumn">thứ tự cột được merge</param>
        public void MergeFieldByRow(DataTable InputedData, string SortFieldName, int MergeRowStart, int startRow, int MergeColumn)
        {
            try
            {
                bool First = true;
                //giá trị start Row gốc
                int SRow = startRow;

                DataView view;

                view = InputedData.DefaultView;

                if (view != null && view.Count > 0)
                {
                    if (SortFieldName.ToString() != "")
                        view.Sort = SortFieldName + " ASC";

                    string ValueNext = "";
                    string ValueNow = "";
                    int RowCount = 0;

                    ValueNow = view[startRow][MergeColumn].ToString();

                    for (int i = MergeRowStart; i < view.Count; i++)
                    {
                        ValueNext = view[i][MergeColumn].ToString();

                        if (ValueNow != "" && ValueNext == ValueNow)
                        {
                            RowCount += 1;
                            if (First)
                            {
                                if (i > 0)
                                    startRow = SRow + i - 1;
                                else
                                    startRow = startRow + i; //merger lần đầu
                            }
                            First = false;
                        }
                        else
                        {
                            //merge từng cột 1 (1 cột có nhiều dữ liệu trùng nhau)
                            if (RowCount > 1)
                                wb.Worksheets[activeSheet].Cells.Merge(startRow, MergeColumn, RowCount, 1);
                            //reset để thực hiện giá trị mới
                            First = true;
                            RowCount = 1;
                            ValueNow = view[i][MergeColumn].ToString();
                        }
                    }

                    //merge những giá trị giống nhau cuối cùng
                    if (RowCount > 1)
                        wb.Worksheets[activeSheet].Cells.Merge(startRow, MergeColumn, RowCount, 1);
                }
            }
            catch (Exception)
            {
            }
        }

        /// <summary>
        /// TUNGLDL vẽ border cho file exel
        /// </summary>
        /// <param name="InputedData">dữ liệu đầu vào</param>
        /// <param name="startRow">dòng đầu tiên</param>
        /// <param name="startCol">cột đầu tiên</param>
        public void SetBorderData(DataTable InputedData, int startRow, byte startCol)
        {
            try
            {
                DataView view;

                view = InputedData.DefaultView;

                for (int row = startRow; row < view.Count + startRow; row++)
                {
                    for (int col = startCol; col < view.Table.Columns.Count + startCol; col++)
                    {
                        SetCellsBorder(row, col, row, col);
                    }
                }
            }
            catch (Exception)
            {
            }
        }
        public void SetBorderData(DataTable InputedData, int startRow, byte startCol, int NumOfTableCol)
        {
            try
            {
                DataView view;

                view = InputedData.DefaultView;

                for (int row = startRow; row < view.Count + startRow; row++)
                {
                    for (int col = startCol; col < NumOfTableCol + startCol; col++)
                    {
                        SetCellsBorder(row, col, row, col);
                    }
                }
            }
            catch (Exception)
            {
            }
        }
        public void PutValueToCellAndReplace(DataTable tbl)
        {
            //int Row=0;
            //int Col=0;            
            foreach (DataColumn col in tbl.Columns)
            {
                string Field = col.ColumnName;
                string Value = tbl.Rows[0][col].ToString();
                //PutValueToCell(Row, Col, Value);
                wb.Worksheets[activeSheet].Replace("<<" + Field + ">>", Value);

            }
            if(tbl.Columns.Count==0)
            {
                wb.Worksheets[activeSheet].Replace("<<TotalItems>>", "0");
                wb.Worksheets[activeSheet].Replace("<<NgayIn>>", DateTime.Now.ToString("dd/MM/yyy"));

            }
        }
        /// <summary>
        /// TUNGLDL - tính tổng cho từng cột
        /// </summary>
        /// <param name="InputedData">dữ liêu đầu vào</param>
        /// <param name="startRow">dòng đầu tiên đỗ dữ liệu vào</param>
        /// <param name="SumColumn">cột tính sum</param>
        /// <param name="DistanceFromLastRow">khoảng cách của dòng tổng so với dòng dữ liệu cuối cùng</param>
        public void SumFinal(DataTable InputedData, int startRow, int SumColumn, int DistanceFromLastRow)
        {
            try
            {
                DataView view;

                view = InputedData.DefaultView;

                if (view != null && view.Count > 0)
                {
                    int SumRow = startRow + view.Count + DistanceFromLastRow;

                    string Sum = "=SUM(";
                    Sum += wb.Worksheets[activeSheet].Cells[startRow, SumColumn].Name;
                    Sum += ":";
                    Sum += wb.Worksheets[activeSheet].Cells[startRow + view.Count - 1, SumColumn].Name;
                    Sum += ")";

                    wb.Worksheets[activeSheet].Cells[SumRow, SumColumn].Formula = Sum;
                }
            }
            catch (Exception)
            {
            }
        }

        public void UnMergeCells(int TopRow, int LeftCol, int BotRow, int RightCol)
        {
            Range rg = wb.Worksheets[activeSheet].Cells.CreateRange(TopRow, LeftCol, BotRow - TopRow + 1, RightCol - LeftCol + 1);
            rg.UnMerge();
        }

        public void SaveAndClose()
        {
            if (this.useStream && fstr != null)
                fstr.Close();
            wb.Save(FlPath);
        }

        private TextAlignmentType GetAlignStyle(TextAlign alg)
        {
            switch (alg)
            {
                case TextAlign.Center:
                    {
                        return TextAlignmentType.Center;
                    }
                case TextAlign.Bottom:
                    {
                        return TextAlignmentType.Bottom;
                    }
                case TextAlign.Distributed:
                    {
                        return TextAlignmentType.Distributed;
                    }
                case TextAlign.Fill:
                    {
                        return TextAlignmentType.Fill;
                    }
                case TextAlign.General:
                    {
                        return TextAlignmentType.General;
                    }
                case TextAlign.Justify:
                    {
                        return TextAlignmentType.Justify;
                    }
                case TextAlign.Left:
                    {
                        return TextAlignmentType.Left;
                    }
                case TextAlign.Right:
                    {
                        return TextAlignmentType.Right;
                    }
                case TextAlign.Top:
                    {
                        return TextAlignmentType.Top;
                    }
            }
            return TextAlignmentType.General;
        }
    }

    public enum TextAlign
    {
        Left = 1,
        Right = 2,
        Center = 3,
        Fill = 4,
        Justify = 5,
        Top = 6,
        Bottom = 7,
        Distributed = 8,
        General = 9
    }
}