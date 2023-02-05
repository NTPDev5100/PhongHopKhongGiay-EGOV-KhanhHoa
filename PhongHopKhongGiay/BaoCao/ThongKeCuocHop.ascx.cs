using Aspose.Cells;
using Aspose.Words;
using log4net;
using log4net.Config;
using Newtonsoft.Json;
using PhongHopKhongGiay.PhongHopKhongGiayService;
using PhongHopKhongGiay.Report;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using static PhongHopKhongGiay.Schedule.Backend;
using SaveFormat = Aspose.Words.SaveFormat;
using SaveOptions = Aspose.Words.Saving.SaveOptions;

namespace PhongHopKhongGiay.BaoCao
{
    public partial class ThongKeCuocHop : DotNetNuke.Entities.Modules.PortalModuleBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        #region Get data trên lưới
        public void ExportData(string fileType, string path, REPORT_THONGKELICHHOP obj)
        {
            var tblItem = GetDataReport(obj);
            if (tblItem != null && tblItem.Rows.Count > 0)
            {
                if ("pdf".Equals(fileType.ToLower()))
                {
                    Export2DocPdf(path, fileType, tblItem, Response, tblItem);
                }
                else
                {
                    Export2ExcelPdf(path, fileType, tblItem, Response, tblItem);
                }
            }
        }

        public DataTable GetDataReport(REPORT_THONGKELICHHOP obj)
        {
            var tblItem = new DataTable();
            using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
            {
                var data = service.LH_GetDSThongKeCuocHop(JsonConvert.SerializeObject(obj));
                if (data.Tables.Count > 0)  //Thành công
                {
                    tblItem = data.Tables[0];
                    return data.Tables[0]; //Table LichHopID
                }
            }
            return tblItem;
        }
        #endregion

        #region Get data popup trên lưới
        public void ExportDataPopup(string fileType, string path, REPORT_THONGKELICHHOP obj)
        {
            var tblItem = GetDataReportPopup(obj);
            if (tblItem != null && tblItem.Rows.Count > 0)
            {
                if ("doc".Equals(fileType.ToLower()))
                {
                    //Export.Export2DocPdfCustom(path, fileType, tblItem, tblItem);
                    Export2DocPdf(path, fileType, tblItem, Response, tblItem);
                }
                else
                {
                    Export2ExcelPdf(path, fileType, tblItem, Response, tblItem);
                }
            }
        }
        public DataTable GetDataReportPopup(REPORT_THONGKELICHHOP obj)
        {
            var tblItem = new DataTable();
            using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
            {
                var data = service.LH_Load_DanhSachChiTietThongKeCuocHop_ByLichHopID(JsonConvert.SerializeObject(obj));
                if (data.Tables.Count > 0)  //Thành công
                {
                    tblItem = data.Tables[0];
                    return data.Tables[0]; //Table LichHopID
                }
            }
            return tblItem;
        }
        #endregion

        #region Hàm xuất excel, PDF
        public static bool Export2ExcelPdf(string strTemplateFileFullName, string format, DataTable dt,
          HttpResponse Response, DataTable dtReplace = null)
        {
            dt.TableName = "Table0";
            var wd = new WorkbookDesigner();

            wd.Workbook.Open(strTemplateFileFullName);

            Worksheet worksheet = wd.Workbook.Worksheets[0];

            string keyword = "", val = "";

            if (dtReplace != null && dtReplace.Rows.Count > 0)
            {
                for (int j = 0; j < dtReplace.Columns.Count; j++)
                {
                    keyword = "<" + dtReplace.Columns[j].ColumnName + ">";
                    val = dtReplace.Rows[0][j].ToString();
                    worksheet.Replace(keyword, val);
                }
            }
            if (dt.Rows.Count > 0)
            {
                worksheet.Replace("$", "&=[" + dt.TableName + "].");
            }
            //Set the datatable as the data source.
            wd.SetDataSource(dt);

            //Process the smart markers to fill the data into the worksheets.
            wd.Process(true);
            wd.Workbook.Worksheets[0].AutoFitRows();
            while (wd.Workbook.Worksheets.Count > 1)
                wd.Workbook.Worksheets.RemoveAt(wd.Workbook.Worksheets.Count - 1);

            var f = new FileInfo(strTemplateFileFullName);
            //Save the excel file.
            var outStream = new MemoryStream();
            wd.Workbook.Save(outStream,
                format.ToLower() == "pdf" ? Aspose.Cells.SaveFormat.Pdf : Aspose.Cells.SaveFormat.Excel97To2003);
            byte[] docBytes = outStream.ToArray();
            string fileName = f.Name.Replace(f.Extension, "") + "_" + DateTime.Now.ToString("dd_MM_yyyy_hh_mm_ss");
            string MimeType = MimeMapping.GetMimeMapping(f.Name).Replace(f.Extension, "." + format);
            Response.ContentType = MimeType;
            Response.AddHeader("Content-Disposition", "attachment; filename=" + (fileName + "." + format));
            Response.BinaryWrite(docBytes);
            Response.End();
            return true;
        }
        public static bool Export2DocPdf(string strTemplateFileFullName, string format, DataTable dt,

        HttpResponse Response, DataTable dtReplace = null)
        {
            string col = "";
            //try
            //{
            dt.TableName = "Table0";
            //Aspose.Words.License license = new Aspose.Words.License();
            //license.SetLicense("Aspose.Words.lic");
            var doc = new Document(strTemplateFileFullName);
            doc.MailMerge.ExecuteWithRegions(dt);
            if (((dtReplace != null)))
            {
                if ((dtReplace.Rows.Count > 0))
                {
                    DataRow r = dtReplace.Rows[0];
                    for (int i = 0; i <= dtReplace.Columns.Count - 1; i++)
                    {
                        try
                        {
                            col = dtReplace.Columns[i].ColumnName;
                            doc.Range.Replace("<" + col + ">",
                                (ReferenceEquals(r[i], DBNull.Value) ? "" : r[i].ToString()), false, false);
                        }
                        catch (Exception ex)
                        {
                        }
                        try
                        {
                            doc.MailMerge.Execute(new[] { col },
                                new object[] { (ReferenceEquals(r[i], DBNull.Value) ? "" : r[i].ToString()) });
                        }
                        catch (Exception ex)
                        {
                        }
                    }
                }
            }
            var f = new FileInfo(strTemplateFileFullName);
            SaveOptions SaveOptions =
                Aspose.Words.Saving.SaveOptions.CreateSaveOptions(format.ToLower() == "pdf"
                    ? SaveFormat.Pdf
                    : SaveFormat.Doc);

            var outStream = new MemoryStream();
            doc.Save(outStream, SaveOptions);
            byte[] docBytes = outStream.ToArray();
            string fileName = f.Name.Replace(f.Extension, "") + "_" + DateTime.Now.ToString("dd_MM_yyyy_hh_mm_ss");
            //string MimeType = MimeMapping.GetMimeMapping(f.Name).Replace(f.Extension, "." + format);
            string MimeType = MimeMapping.GetMimeMapping(f.Name.Replace(f.Extension, "." + format));
            Response.ContentType = MimeType;
            Response.AddHeader("Content-Disposition", "attachment; filename=" + (fileName + "." + format));
            Response.BinaryWrite(docBytes);
            try
            {
                //respone.End();
                Response.Flush(); // Sends all currently buffered output to the client.
                Response.SuppressContent = true;  // Gets or sets a value indicating whether to send HTTP content to the client.
                                                  //HttpContext.Current.ApplicationInstance.CompleteRequest(); // Causes ASP.NET to bypass all events and filtering in the HTTP pipeline chain o
            }
            catch (Exception) { }
            //else doc.Save(f.Name.Replace(".doc", "_" + DateTime.Now.ToString("dd_MM_yyyy_hh_mm_ss") + ".doc"), Aspose.Words.SaveFormat.Doc, Aspose.Words.SaveType.OpenInBrowser, Response);
            //}
            //catch (Exception ex)
            //{
            //    return false;
            //}
            return true;
        }
        #endregion

        #region Sự kiện click 
        protected void ImageButtonExcel_Click(object sender, ImageClickEventArgs e)
        {
            REPORT_THONGKELICHHOP obj = new REPORT_THONGKELICHHOP();
            var ngayTu = NgayHopTuAsp.Value;
            var ngayDen = NgayHopDenAsp.Value;
            var hopNoiBo = HopNoiBoCheckAsp.Value;
            var coDonViBenNgoai = CoDonViBenNgoaiAsp.Value;
            var chuTri = ChuTriIDAsp.Value;
            var tinhTrang = TinhTrangIDAsp.Value;
            var diaDiemHop = DiaDiemIDAsp.Value;
            var thanhPhan = ThanhPhanIDAsp.Value;
            var tenCuocHop = TenCuocHopAsp.Value;

            var boolHopNoiBo = false;
            var boolHopDonViBenNgoai = false;

            obj.LichHopTu = !string.IsNullOrEmpty(ngayTu) ? ngayTu : "01/01/0001";
            obj.LichHopDen = !string.IsNullOrEmpty(ngayDen) ? ngayTu : "31/12/9999";
            if (hopNoiBo != null)
            {
                bool.TryParse(hopNoiBo, out boolHopNoiBo);
            }
            obj.IsHopNoiBo = boolHopNoiBo;
            if (coDonViBenNgoai != null)
            {
                bool.TryParse(coDonViBenNgoai, out boolHopDonViBenNgoai);
            }
            obj.IsHopDonViBenNgoai = boolHopDonViBenNgoai;
            obj.ChuTriIDs = !string.IsNullOrEmpty(chuTri) ? chuTri : null;
            obj.TinhTrangIDs = !string.IsNullOrEmpty(tinhTrang) ? tinhTrang : null;
            obj.DiaDiemHopIDs = !string.IsNullOrEmpty(diaDiemHop) ? diaDiemHop : null;
            obj.ThanhPhanThamDuIDs = !string.IsNullOrEmpty(thanhPhan) ? thanhPhan : null;
            obj.TenCuocHop = !string.IsNullOrEmpty(tenCuocHop) ? tenCuocHop : null;

            string path = HttpContext.Current.Server.MapPath("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Export/Excel/ThongKeCuocHop.xls");
            const string formatFile = "xls";
            ExportData(formatFile, path, obj);
        }

        protected void ImageButtonPDF_Click(object sender, ImageClickEventArgs e)
        {
            REPORT_THONGKELICHHOP obj = new REPORT_THONGKELICHHOP();
            var ngayTu = NgayHopTuAsp.Value;
            var ngayDen = NgayHopDenAsp.Value;
            var hopNoiBo = HopNoiBoCheckAsp.Value;
            var coDonViBenNgoai = CoDonViBenNgoaiAsp.Value;
            var chuTri = ChuTriIDAsp.Value;
            var tinhTrang = TinhTrangIDAsp.Value;
            var diaDiemHop = DiaDiemIDAsp.Value;
            var thanhPhan = ThanhPhanIDAsp.Value;
            var tenCuocHop = TenCuocHopAsp.Value;

            var boolHopNoiBo = false;
            var boolHopDonViBenNgoai = false;

            obj.LichHopTu = !string.IsNullOrEmpty(ngayTu) ? ngayTu : "01/01/0001";
            obj.LichHopDen = !string.IsNullOrEmpty(ngayDen) ? ngayTu : "31/12/9999";
            if (hopNoiBo != null)
            {
                bool.TryParse(hopNoiBo, out boolHopNoiBo);
            }
            obj.IsHopNoiBo = boolHopNoiBo;
            if (coDonViBenNgoai != null)
            {
                bool.TryParse(coDonViBenNgoai, out boolHopDonViBenNgoai);
            }
            obj.IsHopDonViBenNgoai = boolHopDonViBenNgoai;
            obj.ChuTriIDs = !string.IsNullOrEmpty(chuTri) ? chuTri : null;
            obj.TinhTrangIDs = !string.IsNullOrEmpty(tinhTrang) ? tinhTrang : null;
            obj.DiaDiemHopIDs = !string.IsNullOrEmpty(diaDiemHop) ? diaDiemHop : null;
            obj.ThanhPhanThamDuIDs = !string.IsNullOrEmpty(thanhPhan) ? thanhPhan : null;
            obj.TenCuocHop = !string.IsNullOrEmpty(tenCuocHop) ? tenCuocHop : null;

            string path = HttpContext.Current.Server.MapPath("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Export/Word/ThongKeCuocHop.doc");
            const string formatFile = "pdf";
            ExportData(formatFile, path, obj);
        }
        #endregion

        #region Sự kiện click trên popup
        protected void ImagePopupbtnXuatPDF_Click(object sender, ImageClickEventArgs e)
        {
            //Nothing
        }

        protected void ImagePopupbtnXuatExcel_Click(object sender, ImageClickEventArgs e)
        {
            //Nothing
        }
        #endregion

        protected void HiddenbtnXuatPopupExcel_Click(object sender, EventArgs e)
        {
            REPORT_THONGKELICHHOP obj = new REPORT_THONGKELICHHOP();
            var lichHopID = LichHopIDAsp.Value;
            var lichHopIDNumber = 0;
            if (lichHopID != null)
            {
                int.TryParse(lichHopID, out lichHopIDNumber);
            }
            obj.LichHopID = lichHopIDNumber;

            string path = HttpContext.Current.Server.MapPath("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Export/Excel/ChiTietThongKeCuocHop.xls");
            const string formatFile = "xls";
            ExportDataPopup(formatFile, path, obj);
        }

        protected void HiddenbtnXuatPopupPDF_Click(object sender, EventArgs e)
        {
            REPORT_THONGKELICHHOP obj = new REPORT_THONGKELICHHOP();
            var lichHopID = LichHopIDAsp.Value;
            var lichHopIDNumber = 0;
            if (lichHopID != null)
            {
                int.TryParse(lichHopID, out lichHopIDNumber);
            }
            obj.LichHopID = lichHopIDNumber;

            string path = HttpContext.Current.Server.MapPath("~/DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Export/Word/CTThongKeCuocHop.doc");

            const string formatFile = "doc";
            ExportDataPopup(formatFile, path, obj);
        }


    }
}