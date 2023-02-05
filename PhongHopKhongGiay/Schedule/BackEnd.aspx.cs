using Newtonsoft.Json;
using PhongHopKhongGiay.Models;
using PhongHopKhongGiay.PhongHopKhongGiayService;
using RestSharp;
using Spire.Doc;
using Spire.Doc.Documents;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace PhongHopKhongGiay.Schedule
{
    public partial class Backend : System.Web.UI.Page
    {
        internal static SqlCommand command = null;
        internal static SqlDependency dependency = null;
        public static int counter = 0; //initialization of help counter
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_GenerateQR(string PhongHopID)
        {
            try
            {
                if (new Backend().GenerateQR(PhongHopID))
                {
                    return "1";
                }
                return string.Empty;
            }
            catch (Exception ex)
            {
                return string.Empty;
            }

        }
        public bool ByteArrayToFile(string fileName, byte[] byteArray)
        {
            try
            {
                var path = HttpContext.Current.Server.MapPath(Path.Combine("/", "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Template/QR_Image/" + fileName + ""));
                using (var fs = new FileStream(path, FileMode.Create, FileAccess.Write))
                {
                    fs.Write(byteArray, 0, byteArray.Length);
                    return true;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception caught in process: {0}", ex);
                return false;
            }
        }
        public bool GenerateQR(string LichHopID)
        {
            try
            {
                QRCoder.QRCodeGenerator qrGen = new QRCoder.QRCodeGenerator();
                var qrData = qrGen.CreateQrCode(LichHopID, QRCoder.QRCodeGenerator.ECCLevel.H);
                var qdCode = new QRCoder.QRCode(qrData);
                var image = qdCode.GetGraphic(50);
                byte[] imageBytes = null;
                string filename = "QR.png";
                using (MemoryStream ms = new MemoryStream())
                {
                    // Convert Image to byte[]
                    image.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
                    imageBytes = ms.ToArray();
                }
                bool IsSuccess = ByteArrayToFile(filename, imageBytes);
                return IsSuccess;
            }
            catch (Exception ex)
            {
                return false;
            }

        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string GenerateWord(string html)
        {
            try
            {
                //Document document = new Document();
                //StringReader sr = new StringReader("<h1><u>ỦY BAN NH&Acirc;N D&Acirc;N QUẬN 7</u> CỘNG H&Ograve;A X&Atilde; HỘI CHỦ NGHĨA VIỆT NAM</h1>");
                ////document.LoadFromFile(@"D:\test.html", FileFormat.Html, XHTMLValidationType.None);

                //StringReader sr = new StringReader("<b>hello </b><i>world</i>");
                //htmldoc.LoadHTML(sr, XHTMLValidationType.None);

                Document document = new Document();
                StringReader sr = new StringReader(html);
                document.ViewSetup.DocumentViewType = DocumentViewType.PrintLayout;
                document.ViewSetup.ZoomPercent = 100;
                document.ViewSetup.ZoomType = ZoomType.None;

                Section section = document.AddSection();
                //Paragraph para = section.AddParagraph();
                //para.Format.LeftIndent = -2;
                section.PageSetup.PageSize = PageSize.A4;
                section.PageSetup.Orientation = PageOrientation.Landscape;
                document.Sections[0].PageSetup.Margins.Top = 1f;
                document.LoadHTML(sr, XHTMLValidationType.None);
                //document.SaveToFile("test.doc", FileFormat.Doc);

                string[] files = Directory.GetFiles(HttpContext.Current.Server.MapPath(Path.Combine("/", "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Template/Portals/0/Reports/PHKG/Report Store/Word/1/")));
                foreach (string file in files)
                {
                    File.Delete(file);
                }
                var filename = "LichTuan" + DateTime.Now.ToString("yyyyMMddHHmmss") + ".doc";
                document.SaveToFile(HttpContext.Current.Server.MapPath(Path.Combine("/", "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Template/Portals/0/Reports/PHKG/Report Store/Word/1/" + filename + "")), FileFormat.Docx);
                return filename;
            }

            catch (Exception ex)
            {
                return "";
            }

        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string GenerateWordKetLuan(string html)
        {
            try
            {
                //Document document = new Document();
                //StringReader sr = new StringReader("<h1><u>ỦY BAN NH&Acirc;N D&Acirc;N QUẬN 7</u> CỘNG H&Ograve;A X&Atilde; HỘI CHỦ NGHĨA VIỆT NAM</h1>");
                ////document.LoadFromFile(@"D:\test.html", FileFormat.Html, XHTMLValidationType.None);

                //StringReader sr = new StringReader("<b>hello </b><i>world</i>");
                //htmldoc.LoadHTML(sr, XHTMLValidationType.None);

                Document document = new Document();
                Section section = document.AddSection();
                section.PageSetup.PageSize = PageSize.A4;
                StringReader sr = new StringReader(html);
                document.ViewSetup.DocumentViewType = DocumentViewType.WebLayout;
                document.ViewSetup.ZoomPercent = 100;
                document.ViewSetup.ZoomType = ZoomType.None;
                document.LoadHTML(sr, XHTMLValidationType.None);
                //document.SaveToFile("test.doc", FileFormat.Doc);
                string[] files = Directory.GetFiles(HttpContext.Current.Server.MapPath(Path.Combine("/", "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Template/Portals/0/Reports/PHKG/Report Store/Word/1/")));
                foreach (string file in files)
                {
                    File.Delete(file);
                }
                var filename = "GiaoViec" + DateTime.Now.ToString("yyyyMMddHHmmss") + ".doc";
                document.SaveToFile(HttpContext.Current.Server.MapPath(Path.Combine("/", "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/Template/Portals/0/Reports/PHKG/Report Store/Word/1/" + filename + "")), FileFormat.Docx);
                return filename;
            }

            catch (Exception ex)
            {
                return "";
            }

        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string CallApiVanBan(string keyword, int start, int end, string LoaiVanBan)
        {
            try
            {
                var obj = new SearchVanban();
                obj.keyword = keyword;
                obj.start = start;
                obj.end = end;
                if (LoaiVanBan == "VanBanDen")
                {
                    var client = new RestClient(ConfigurationManager.AppSettings["VanBanDen"]);
                    var request = new RestRequest(Method.POST);
                    request.Parameters.Clear();
                    request.AddHeader("Content-Type", "application/json");
                    request.AddHeader("Accept-Charset", "utf-8");
                    request.AddParameter("application/json", JsonConvert.SerializeObject(obj), ParameterType.RequestBody);
                    var response = client.Execute(request);
                    if (response.StatusCode == System.Net.HttpStatusCode.OK)
                    {
                        return response.Content;
                    }
                    else
                    {
                        return "";
                    }
                }
                if (LoaiVanBan == "VanBanDi")
                {
                    var client = new RestClient(ConfigurationManager.AppSettings["VanBanDi"]);
                    var request = new RestRequest(Method.POST);
                    request.Parameters.Clear();
                    request.AddHeader("Content-Type", "application/json");
                    request.AddHeader("Accept-Charset", "utf-8");
                    request.AddParameter("application/json", JsonConvert.SerializeObject(obj), ParameterType.RequestBody);
                    var response = client.Execute(request);
                    if (response.StatusCode == System.Net.HttpStatusCode.OK)
                    {
                        return response.Content;
                    }
                    else
                    {
                        return "";
                    }
                }

                return string.Empty;

            }
            catch (Exception ex)
            {
                return "";
            }
        }

        public static bool GuiEmail(string objJson)
        {
            try
            {
                var client = new RestClient(ConfigurationManager.AppSettings["GuiEmail"]);
                var request = new RestRequest(Method.POST);
                request.Parameters.Clear();
                request.AddHeader("Content-Type", "application/json");
                request.AddHeader("Accept-Charset", "utf-8");
                request.AddHeader("Authorization", "6371b3f93f4b4ce0b5be8ece19a4113a");
                request.AddParameter("application/json", objJson, ParameterType.RequestBody);
                var response = client.Execute(request);
                if (response.StatusCode == System.Net.HttpStatusCode.OK)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string GetTriggerOnTableSignal()
        {
            using (var connection = new SqlConnection(ConfigurationManager.ConnectionStrings["SCHEDULE"].ConnectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(@"SELECT Id,ThoiGianHoatDong FROM dbo.TRIGGER_SIGNALR_LICHHOP", connection))
                {
                    command.Notification = null;
                    SqlDependency.Start(ConfigurationManager.ConnectionStrings["SCHEDULE"].ConnectionString);
                    counter = 0;
                    if (dependency == null)
                    {
                        dependency = new SqlDependency(command);
                        dependency.OnChange += new OnChangeEventHandler(dependency_OnChange);

                    }
                    if (connection.State == ConnectionState.Closed)
                        connection.Open();
                    using (var reader = command.ExecuteReader())
                    {
                        var dt_Result = new DataTable();
                        dt_Result.Load(reader);
                        var json = JsonConvert.SerializeObject(dt_Result);
                        return json.ToString();
                    }
                }
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string GetTriggerOnTableBieuQuyetSignal()
        {
            using (var connection = new SqlConnection(ConfigurationManager.ConnectionStrings["SCHEDULE"].ConnectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(@"SELECT Id,ThoiGianHoatDong FROM dbo.TRIGGER_SIGNALR_BIEUQUYET", connection))
                {
                    command.Notification = null;
                    SqlDependency.Start(ConfigurationManager.ConnectionStrings["SCHEDULE"].ConnectionString);
                    counter = 0;
                    if (dependency == null)
                    {
                        dependency = new SqlDependency(command);
                        dependency.OnChange += new OnChangeEventHandler(BieuQuyetdependency_OnChange);

                    }
                    if (connection.State == ConnectionState.Closed)
                        connection.Open();
                    using (var reader = command.ExecuteReader())
                    {
                        var dt_Result = new DataTable();
                        dt_Result.Load(reader);
                        var json = JsonConvert.SerializeObject(dt_Result);
                        return json.ToString();
                    }
                }
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string GetTriggerOnTableTinhTrangCuocHopSignal()
        {
            using (var connection = new SqlConnection(ConfigurationManager.ConnectionStrings["SCHEDULE"].ConnectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(@"SELECT Id,ThoiGianHoatDong FROM dbo.TRIGGER_SIGNALR_TINHTRANG_CUOCHOP", connection))
                {
                    command.Notification = null;
                    SqlDependency.Start(ConfigurationManager.ConnectionStrings["SCHEDULE"].ConnectionString);
                    counter = 0;
                    if (dependency == null)
                    {
                        dependency = new SqlDependency(command);
                        dependency.OnChange += new OnChangeEventHandler(TinhTrangCuocHopdependency_OnChange);

                    }
                    if (connection.State == ConnectionState.Closed)
                        connection.Open();
                    using (var reader = command.ExecuteReader())
                    {
                        var dt_Result = new DataTable();
                        dt_Result.Load(reader);
                        var json = JsonConvert.SerializeObject(dt_Result);
                        return json.ToString();
                    }
                }
            }
        }

        private static void dependency_OnChange(object sender, SqlNotificationEventArgs e)
        {
            if (dependency != null)
            {
                dependency.OnChange -= dependency_OnChange;
                dependency = null;
            }
            if (e.Type == SqlNotificationType.Change && e.Info == SqlNotificationInfo.Update && counter == 0)
            {
                //Call SignalR  
                MyHub.Show();
                counter++; //The update is done once
            }
            else
            {
                counter = 0; //if the update is needed in the same iteration, please don't update and set the counter to 0
            }
        }

        private static void BieuQuyetdependency_OnChange(object sender, SqlNotificationEventArgs e)
        {
            if (dependency != null)
            {
                dependency.OnChange -= BieuQuyetdependency_OnChange;
                dependency = null;
            }
            if (e.Type == SqlNotificationType.Change && e.Info == SqlNotificationInfo.Update && counter == 0)
            {
                //Call SignalR  
                MyHub.Show();
                counter++; //The update is done once
            }
            else
            {
                counter = 0; //if the update is needed in the same iteration, please don't update and set the counter to 0
            }
        }

        private static void TinhTrangCuocHopdependency_OnChange(object sender, SqlNotificationEventArgs e)
        {
            if (dependency != null)
            {
                dependency.OnChange -= TinhTrangCuocHopdependency_OnChange;
                dependency = null;
            }
            if (e.Type == SqlNotificationType.Change && e.Info == SqlNotificationInfo.Update && counter == 0)
            {
                //Call SignalR  
                MyHub.Show();
                counter++; //The update is done once
            }
            else
            {
                counter = 0; //if the update is needed in the same iteration, please don't update and set the counter to 0
            }
        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = true, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LoadPageLoad()
        {
            if (HttpContext.Current.Session["UserID"] == null)
            {
                return null;
            }
            //new Backend().GenerateWord();
            //var ListDoiTuong = new List<DANHMUC>();
            //var ListPhongHop = new List<DANHMUC>();
            //var ListLinhVuc = new List<DANHMUC>();
            //var ListLyDoVang = new List<DANHMUC>();
            //var ListThanhPhanChuanBi = new List<THANHPHANCHUANBI>();
            //var DataSet_DanhSachTaiLieuByLichHopID = new DataSet();
            //var ListUsers = new DataSet();

            using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
            {
                var ListLoaiLichHop = service.Load_DanhMuc("E_DANHMUCLICHHOP");
                var ListDoiTuong = service.Load_DanhMuc("DM_DOITUONG");
                var ListDoiTuongNhac = service.Load_DanhMuc("DM_DOITUONG_NHAC");
                var ListPhongHop = service.Load_DanhMuc("DM_PHONGHOP");
                var ListLinhVuc = service.Load_DanhMuc("DM_LINHVUC");
                var ListLyDoVang = service.Load_DanhMuc("DM_LYDOVANG");
                var ListLichNhac = service.Load_DanhMuc("DM_LICHNHAC");
                var ListPhanBoThoiGian = service.Load_DanhMuc("DM_PHANBOTHOIGIAN");
                var ListUsers = service.Load_USER_GetAllUsers("");
                var ListThanhPhanChuanBi = service.Load_ThanhPhanChuanBi("DM_THANHPHANCHUANBI");
                var ListPhongBan = service.Load_DanhMuc("DM_PHONGBAN");
                var ListNguoiChiDao = service.Load_DanhMuc("DM_NGUOICHIDAO");
                var ListNguoiTheoDoi = service.Load_DanhMuc("DM_NGUOITHEODOI");
                var ListChuTri = service.Load_DanhMuc("DM_CHUTRI");
                var ListThuKy = service.Load_DanhMuc("DM_THUKY");
                var ListTinhTrang = service.Load_DanhMuc("DM_TINHTRANG");
                var ListThuMuc = service.Load_ListThuMuc(string.Empty);
                var ListTenTaiLieu = service.Load_ListTenTaiLieu(string.Empty);


                var data = new Data();
                data.ListLoaiLichHop = JsonConvert.SerializeObject(ListLoaiLichHop);
                data.ListDoiTuong = JsonConvert.SerializeObject(ListDoiTuong);
                data.ListPhongHop = JsonConvert.SerializeObject(ListPhongHop);
                data.ListLinhVuc = JsonConvert.SerializeObject(ListLinhVuc);
                data.ListDoiTuongNhac = JsonConvert.SerializeObject(ListDoiTuongNhac);
                data.ListUsers = JsonConvert.SerializeObject(ListUsers);
                data.ListLyDoVang = JsonConvert.SerializeObject(ListLyDoVang);
                data.ListLichNhac = JsonConvert.SerializeObject(ListLichNhac);
                data.ListPhanBoThoiGian = JsonConvert.SerializeObject(ListPhanBoThoiGian);
                data.ListPhongBan = JsonConvert.SerializeObject(ListPhongBan);
                data.ListThanhPhanChuanBi = JsonConvert.SerializeObject(ListThanhPhanChuanBi);
                data.ListNguoiChiDao = JsonConvert.SerializeObject(ListNguoiChiDao);
                data.ListNguoiTheoDoi = JsonConvert.SerializeObject(ListNguoiTheoDoi);
                data.ListChuTri = JsonConvert.SerializeObject(ListChuTri);
                data.ListThuKy = JsonConvert.SerializeObject(ListThuKy);
                data.UserLoginSchedule = HttpContext.Current.Session["UserID"].ToString();
                //DataSet_DanhSachTaiLieuByLichHopID = service.Load_DanhSachTaiLieuByLichHopID(0);
                //HienLT52
                data.ListTinhTrang = JsonConvert.SerializeObject(ListTinhTrang);

                //Khoa.nguyen
                data.ListThuMuc = JsonConvert.SerializeObject(ListThuMuc);

                //Phat.nguyen
                data.ListTenTaiLieu = JsonConvert.SerializeObject(ListTenTaiLieu);

                var json = JsonConvert.SerializeObject(data);
                return json.ToString();
            }
            //data.ListDanhSachTaiLieu = JsonConvert.SerializeObject(DataSet_DanhSachTaiLieuByLichHopID.Tables[0]);

        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LoadSchedule(objLoadSchedule obj)
        {
            if (HttpContext.Current.Session["UserID"] == null)
            {
                return null;
            }
            using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
            {
                obj.UserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                var LH_Schedule = service.LH_Load_Schedule(JsonConvert.SerializeObject(obj));
                var json = JsonConvert.SerializeObject(LH_Schedule);
                return json.ToString();
            }

        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string Load_Schedule_CaNhan(objLoadSchedule obj)
        {
            if (HttpContext.Current.Session["UserID"] == null)
            {
                return null;
            }
            using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
            {
                obj.UserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                var LH_Schedule = service.LH_Load_Schedule_CaNhan(JsonConvert.SerializeObject(obj));
                var json = JsonConvert.SerializeObject(LH_Schedule);
                return json.ToString();
            }

        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string SaveFileUpload(LH_TAILIEUCUOCHOP obj, long LichHopID, string DoiTuongXemID)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                var resutDataSet = new DataSet();
                //if (LichHopID == 0) // trường hợp chưa hề tạo lịch họp mà thêm file trước
                //{
                //    obj.IDTemp = HttpContext.Current.Session["Guid"].ToString();
                //}
                obj.LastUpdUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                obj.CreatedUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                //obj.UserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_TAILIEUCUOCHOP_InsUpDel(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0 && data.Tables[0].Rows[0]["IsSuccess"].ToString() == "1")  // thành công
                    {
                        TriggerSignalR("LH_LICHHOP");
                        if (LichHopID != 0)
                        {
                            resutDataSet = service.LH_Load_DanhSachTaiLieuCuocHopByLichHopID(obj.LichHopID, DoiTuongXemID);
                        }
                        else
                        {
                            //resutDataSet = service.Load_DanhSachTaiLieuByTempID(obj.IDTemp);
                        }
                    }
                    var json = JsonConvert.SerializeObject(resutDataSet.Tables[0]);
                    return json.ToString();
                }
                //var outPut = JsonConvert.DeserializeObject<dynamic>(obj);
                //if (((JObject)outPut).Count > 0)
                //{
                //    JavaScriptSerializer serializer = new JavaScriptSerializer();
                //    dynamic item = serializer.Deserialize<object>(obj);

                //    var objClass = new SRV.Services.PhongHopKhongGiayService.CN_TAILIEU();
                //    objClass.TaiLieuID = Convert.ToInt32(item["TaiLieuID"]);
                //    objClass.TenTaiLieu = item["TenTaiLieu"];
                //    objClass.TenFile = item["TenFile"];
                //    objClass.FileID = item["FileID"];
                //    objClass.DuocCongKhai = item["DuocCongKhai"];

                //}
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }



        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string SaveFileUploadCaNhan(CN_TAILIEU obj)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                var resutDataSet = new DataSet();
                obj.UserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                obj.LastUpdUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                obj.CreatedUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.CN_TAILIEU_InsUpDel(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0 && data.Tables[0].Rows[0]["IsSuccess"].ToString() == "1")  // thành công
                    {
                        resutDataSet = service.CN_Load_DanhSachTaiLieuByUserID(Convert.ToInt32(HttpContext.Current.Session["UserID"]), Convert.ToInt32(obj.LichHopID));
                        return JsonConvert.SerializeObject(resutDataSet.Tables[0]);
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string ChuyenDuyet(string LichHopID, string TinhTrangID)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                var obj = new LH_QUATRINHXULY();
                obj.LichHopID = Convert.ToInt32(LichHopID); ;
                obj.NguoiGuiID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                obj.TinhTrangID = Convert.ToInt32(TinhTrangID);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_ChuyenDuyet(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0)  // thành công
                    {
                        TriggerSignalR("LH_LICHHOP");
                        return JsonConvert.SerializeObject(data.Tables[0]); // // Table LichHopID
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string ChuyenDuyetTatCa(string ChuoiLichHopID, string TinhTrangID)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                var obj = new LH_ChuyenDuyetTatCa
                {
                    ChuoiLichHopID = ChuoiLichHopID,
                    TinhTrangID = TinhTrangID,
                    NguoiGuiID = Convert.ToInt32(HttpContext.Current.Session["UserID"])
                };
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_UpdateTinhTrangByChuoiLichHopID(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0)  // thành công
                    {
                        TriggerSignalR("LH_LICHHOP");
                        return JsonConvert.SerializeObject(data.Tables[0]); // // Table LichHopID
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string Load_DanhSachTaiLieuCuocHopByLichHopID(long LichHopID, string DoiTuongXemID)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_Load_DanhSachTaiLieuCuocHopByLichHopID(LichHopID, DoiTuongXemID);
                    if (data.Tables.Count > 0)  // thành công
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]); // // Table LichHopID
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string CN_Load_DanhSachTaiLieuByUserID(CN_TAILIEU obj)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.CN_Load_DanhSachTaiLieuByUserID(Convert.ToInt32(HttpContext.Current.Session["UserID"]), Convert.ToInt32(obj.LichHopID));
                    if (data.Tables.Count > 0)  // thành công
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]); // // Table LichHopID
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LichHop_InsUpDel(LH_LICHHOP objLichHop, string DoiTuongNhacLichHopID, List<PhongBan_User> ThanhPhanID,
            List<PhongBan_User> ChuanBiID, List<LH_TAILIEUCUOCHOP> DataDanhSachTaiLieu)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                var ListThanhPhan = new List<LH_THANHPHAN>();
                var ListChuanBi = new List<LH_CHUANBI>();

                if (ThanhPhanID.Count > 0)
                {
                    foreach (var item in ThanhPhanID)
                    {
                        var obj = new LH_THANHPHAN();
                        obj.PhongBanID = Convert.ToInt32(item.PhongBanID);
                        obj.UserID = Convert.ToInt32(item.UserID);
                        obj.DoiTuongID = item.DoiTuongID;
                        obj.TenPhongBan = item.TenPhongBan;
                        obj.DiemDanh = item.DiemDanh;
                        obj.CreatedUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                        ListThanhPhan.Add(obj);

                    }
                }
                if (ChuanBiID.Count > 0)
                {
                    foreach (var item in ChuanBiID)
                    {
                        var obj = new LH_CHUANBI();
                        obj.PhongBanID = Convert.ToInt32(item.PhongBanID);
                        obj.UserID = Convert.ToInt32(item.UserID);
                        obj.TenPhongBan = item.TenPhongBan;
                        obj.CreatedUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                        ListChuanBi.Add(obj);
                    }
                }

                objLichHop.LastUpdUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                objLichHop.CreatedUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_LichHop_InsUpDel(JsonConvert.SerializeObject(objLichHop), DoiTuongNhacLichHopID,
                        ListThanhPhan.Count > 0 ? JsonConvert.SerializeObject(ListThanhPhan) : "",
                        ListChuanBi.Count > 0 ? JsonConvert.SerializeObject(ListChuanBi) : "");
                    if (data.Tables.Count > 0 && data.Tables[0].Rows[0]["IsSuccess"].ToString() == "1")  // thành công
                    {
                        if (DataDanhSachTaiLieu.Count > 0)
                        {
                            foreach (var item in DataDanhSachTaiLieu)
                            {
                                item.LichHopID = Convert.ToInt32(data.Tables[1].Rows[0]["LichHopID"].ToString());
                                service.LH_TAILIEUCUOCHOP_InsUpDel(JsonConvert.SerializeObject(item));
                            }
                        }
                        if (objLichHop.IsDelete == true)// hành động xóa
                        {
                            return JsonConvert.SerializeObject(data.Tables[0]);
                        }
                        #region Gửi notify sửa lich hop
                        try
                        {
                            var dataNguoi = service.LH_DanhSachNguoiNhanThongBaoSuaLichHop_ByLichHopID(JsonConvert.SerializeObject(objLichHop));
                            if (dataNguoi.Tables.Count > 0 && dataNguoi.Tables[0].Rows[0]["IsSuccess"].ToString() == "1")  // thành công
                            {
                                var lst = dataNguoi.Tables[0].DataTableToList<NhacLich_NguoiNhac>();
                                //var lst = JsonConvert.DeserializeObject<List<NhacLich_NguoiNhac>>(data.Tables[0]);
                                if (lst != null && lst.Any())
                                {
                                    FirebaseMessage _firebase = new FirebaseMessage();
                                    var kqFirebase = _firebase.Mobile_SendInfoFireBase_ByUserIDAndType(3, lst);
                                }
                            }
                        }
                        catch (Exception ex)
                        {

                        }
                        #endregion
                        return JsonConvert.SerializeObject(data.Tables[1]); // // Table LichHopID
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LoadLichHopByLichHopID(string LichHopID)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var dataset = service.LH_LoadLichHopByLichHopID(LichHopID);
                    if (dataset.Tables.Count > 0)  // thành công
                    {
                        var data = new ResultData();
                        data.LH_LICHHOP = JsonConvert.SerializeObject(dataset.Tables[0]);
                        data.LH_TAILIEUCUOCHOP = JsonConvert.SerializeObject(dataset.Tables[1]);
                        data.LH_DOITUONGNHAC = JsonConvert.SerializeObject(dataset.Tables[2]);
                        data.LH_THANHPHAN = JsonConvert.SerializeObject(dataset.Tables[3]);
                        data.LH_CHUANBI = JsonConvert.SerializeObject(dataset.Tables[4]);
                        var json = JsonConvert.SerializeObject(data);
                        return json.ToString();
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }



        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string ChuongTrinhHop_InsUpDel(LH_CHUONGTRINHHOP obj)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                obj.LastUpdUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                obj.CreatedUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_ChuongTrinhHop_InsUpDel(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0 && data.Tables[0].Rows[0]["IsSuccess"].ToString() == "1")  // thành công
                    {
                        if (obj.IsDelete == true)// hành động xóa
                        {
                            return JsonConvert.SerializeObject(data.Tables[1]); // Table LichHopID
                        }
                        return JsonConvert.SerializeObject(data.Tables[1]); // thông báo IsSuccess
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }
        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_CheckThoiGianChuongTrinhHop(LH_CHUONGTRINHHOP objLichHop)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_CheckThoiGianChuongTrinhHop(JsonConvert.SerializeObject(objLichHop));
                    if (data.Tables.Count > 0)
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]);
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string BieuQuyet_InsUpDel(LH_BIEUQUYET obj)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                obj.LastUpdUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                obj.CreatedUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_BieuQuyet_InsUpDel(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0 && data.Tables[0].Rows[0]["IsSuccess"].ToString() == "1")  // thành công
                    {
                        if (obj.IsDelete == true)// hành động xóa
                        {
                            return JsonConvert.SerializeObject(data.Tables[0]);
                        }
                        return JsonConvert.SerializeObject(data.Tables[1]); // Table LichHopID
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LoadBieuQuyetByLichHopID(string LichHopID)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var dataset = service.LH_LoadBieuQuyetByLichHopID(LichHopID);
                    if (dataset.Tables.Count > 0)
                    {
                        var json = JsonConvert.SerializeObject(dataset.Tables[0]);
                        return json.ToString();
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string Load_DanhSach_Schedule(objLoadSchedule obj)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                obj.UserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_Load_DanhSach_Schedule(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0)  // thành công
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]); // // Table LichHopID
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_UpdateTinhTrangByLichHopID(LH_LICHHOP objLichHop)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                objLichHop.LastUpdUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_UpdateTinhTrangByLichHopID(JsonConvert.SerializeObject(objLichHop));
                    if (data.Tables.Count > 0 && data.Tables[0].Rows[0]["IsSuccess"].ToString() == "1")  // thành công
                    {
                        if (objLichHop.TinhTrangID == 4)
                        {
                            HuyEmail(objLichHop.LichHopID.ToString());
                            #region Gửi notify huy lich hop
                            try
                            {
                                var dataNguoi = service.LH_DanhSachNguoiNhanThongBao_ByLichHopID(JsonConvert.SerializeObject(objLichHop));
                                if (dataNguoi.Tables.Count > 0 && dataNguoi.Tables[0].Rows[0]["IsSuccess"].ToString() == "1")  // thành công
                                {
                                    var lst = dataNguoi.Tables[0].DataTableToList<NhacLich_NguoiNhac>();
                                    //var lst = JsonConvert.DeserializeObject<List<NhacLich_NguoiNhac>>(data.Tables[0]);
                                    if (lst != null && lst.Any())
                                    {
                                        FirebaseMessage _firebase = new FirebaseMessage();
                                        var kqFirebase = _firebase.Mobile_SendInfoFireBase_ByUserIDAndType(3, lst);
                                    }
                                }
                            }
                            catch (Exception ex)
                            {

                            }
                            #endregion
                        }

                        TriggerSignalR("LH_LICHHOP");

                        return JsonConvert.SerializeObject(data.Tables[0]);
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_UpdateTinhTrangBatDauHoacKetThucLichHop(LH_LICHHOP objLichHop)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                objLichHop.LastUpdUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_UpdateTinhTrangBatDauHoacKetThucLichHop(JsonConvert.SerializeObject(objLichHop));
                    if (data.Tables.Count > 0 && data.Tables[0].Rows[0]["IsSuccess"].ToString() == "1")  // thành công
                    {
                        TriggerSignalR("LH_TINHTRANG_CUOCHOP");
                        return JsonConvert.SerializeObject(data.Tables[0]);
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LoadDataTable(objDataTable obj)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var dataset = service.LH_LoadDataTable(JsonConvert.SerializeObject(obj));
                    if (dataset.Tables.Count > 0)  // thành công
                    {
                        var json = JsonConvert.SerializeObject(dataset.Tables[0]);
                        return json.ToString();
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }
        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string CheckTrungLichHopByUserID(LH_LICHHOP objLichHop)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_CheckTrungLichHopByUserID(JsonConvert.SerializeObject(objLichHop));
                    if (data.Tables.Count > 0)
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]); // // Table LichHopID
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_GetPhongBanSuDung(LH_LICHHOP objLichHop)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_GetPhongBanSuDung(JsonConvert.SerializeObject(objLichHop));
                    if (data.Tables.Count > 0)
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]); //
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_GetNguoiChuTriDangDieuHanhCuocHop(LH_LICHHOP objLichHop)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_GetNguoiChuTriDangDieuHanhCuocHop(JsonConvert.SerializeObject(objLichHop));
                    if (data.Tables.Count > 0)
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]); //
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_UpdateTimeDragAndDropSchedule(LH_LICHHOP objLichHop)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                objLichHop.LastUpdUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_UpdateTimeDragAndDropSchedule(JsonConvert.SerializeObject(objLichHop));
                    if (data.Tables.Count > 0 && data.Tables[0].Rows[0]["IsSuccess"].ToString() == "1")  // thành công
                    {
                        if (!string.IsNullOrEmpty(objLichHop.TinhTrangID.ToString()) && objLichHop.TinhTrangID == 3)// Đã phát hành gửi thông báo cho người dùng tin nhắn
                        {

                        }

                        TriggerSignalR("LH_LICHHOP");
                        return JsonConvert.SerializeObject(data.Tables[0]);
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_UpdateShowShowKiosk(LH_LICHHOP objLichHop)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                objLichHop.LastUpdUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_UpdateShowShowKiosk(JsonConvert.SerializeObject(objLichHop));
                    if (data.Tables.Count > 0 && data.Tables[0].Rows[0]["IsSuccess"].ToString() == "1")  // thành công
                    {
                        if (!string.IsNullOrEmpty(objLichHop.TinhTrangID.ToString()) && objLichHop.TinhTrangID == 3)// Đã phát hành gửi thông báo cho người dùng tin nhắn
                        {

                        }
                        return JsonConvert.SerializeObject(data.Tables[0]);
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }



        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_LoadChuongTrinhHopByLichHopID(LH_CHUONGTRINHHOP obj)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                obj.LastUpdUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_LoadChuongTrinhHopByLichHopID(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0)
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]);
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_THAOLUAN_InsUpDel(LH_THAOLUAN obj)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                var resutDataSet = new DataSet();
                obj.LastUpdUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                obj.CreatedUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_THAOLUAN_InsUpDel(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0 && data.Tables[0].Rows[0]["IsSuccess"].ToString() == "1")  // thành công
                    {
                        if (obj.LichHopID != 0)
                        {
                            resutDataSet = service.LH_LoadThaoLuanByLichHopID(obj.LichHopID.ToString());
                            return JsonConvert.SerializeObject(resutDataSet.Tables[0]);
                        }
                    }
                    return string.Empty;
                }
                //var outPut = JsonConvert.DeserializeObject<dynamic>(obj);
                //if (((JObject)outPut).Count > 0)
                //{
                //    JavaScriptSerializer serializer = new JavaScriptSerializer();
                //    dynamic item = serializer.Deserialize<object>(obj);

                //    var objClass = new SRV.Services.PhongHopKhongGiayService.CN_TAILIEU();
                //    objClass.TaiLieuID = Convert.ToInt32(item["TaiLieuID"]);
                //    objClass.TenTaiLieu = item["TenTaiLieu"];
                //    objClass.TenFile = item["TenFile"];
                //    objClass.FileID = item["FileID"];
                //    objClass.DuocCongKhai = item["DuocCongKhai"];

                //}
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_GIAYMOIHOP_InsUpDel(LH_GIAYMOIHOP obj)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                var resutDataSet = new DataSet();
                obj.LastUpdUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                obj.CreatedUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_GIAYMOIHOP_InsUpDel(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0 && data.Tables[0].Rows[0]["IsSuccess"].ToString() == "1")  // thành công
                    {
                        if (obj.LichHopID != 0)
                        {
                            resutDataSet = service.LH_LoadGiayMoiHopByLichHopID(obj.LichHopID.ToString());
                            return JsonConvert.SerializeObject(resutDataSet.Tables[0]);
                        }
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_TAILIEUKETLUAN_InsUpDel(LH_TAILIEUKETLUAN obj)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                obj.LastUpdUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                obj.CreatedUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                int Year = Convert.ToInt32(obj.TaiLieuHop_NgayBanHanh.Split('/')[2]);
                int Month = Convert.ToInt32(obj.TaiLieuHop_NgayBanHanh.Split('/')[1]);
                int Day = Convert.ToInt32(obj.TaiLieuHop_NgayBanHanh.Split('/')[0]);
                DateTime dt = new DateTime(Year, Month, Day);
                obj.TaiLieuHop_NgayBanHanh = dt.ToString();
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_TAILIEUKETLUAN_InsUpDel(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0 && data.Tables[0].Rows[0]["IsSuccess"].ToString() == "1")  // thành công
                    {
                        return JsonConvert.SerializeObject(data.Tables[1]); //Table[1] Lấy select newID as TaiLieuKetLuanID
                    }
                    return string.Empty;
                }

            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_LoadThaoLuanByLichHopID(string LichHopID)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_LoadThaoLuanByLichHopID(LichHopID);
                    if (data.Tables.Count > 0)
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]);
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }
        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_LoadGiayMoiHopByLichHopID(string LichHopID)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_LoadGiayMoiHopByLichHopID(LichHopID);
                    if (data.Tables.Count > 0)
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]);
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_GetEmailThanhPhanThamDuTheoThoiGian(LH_PHATHANH obj)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                obj.CreatedUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_GetEmailThanhPhanThamDuTheoThoiGian(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0)
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]);
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }



        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_PhatHanh_InsUpDel(LH_PHATHANH obj)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                obj.LastUpdUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                obj.CreatedUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                //obj.UserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_PhatHanh_InsUpDel(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0 && data.Tables[0].Rows[0]["IsSuccess"].ToString() == "1")  // thành công
                    {
                        TriggerSignalR("LH_LICHHOP");
                        return JsonConvert.SerializeObject(data.Tables[1]);
                    }
                    return String.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_LoadPhatHanhByThoiGian(LH_PHATHANH obj)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                obj.CreatedUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var dataPhatHanh = service.LH_LoadPhatHanhByThoiGian(JsonConvert.SerializeObject(obj));
                    var dataLichHopID = service.LH_GetLichHopIDTheoThoiGian(JsonConvert.SerializeObject(obj));
                    var dataThanhPhanThamDu = service.LH_GetEmailThanhPhanThamDuTheoThoiGian(JsonConvert.SerializeObject(obj));
                    var data = new ResultPhatHanh();
                    if (dataPhatHanh.Tables[0].Rows.Count > 0)
                    {
                        data.DataPhatHanh = JsonConvert.SerializeObject(dataPhatHanh.Tables[0]);
                    }
                    if (dataLichHopID.Tables[0].Rows.Count > 0)
                    {
                        data.DataLichHopID = JsonConvert.SerializeObject(dataLichHopID.Tables[0]);
                    }
                    if (dataThanhPhanThamDu.Tables[0].Rows.Count > 0)
                    {
                        data.DataThanhPhanThamDu = JsonConvert.SerializeObject(dataThanhPhanThamDu.Tables[0]);
                    }
                    return JsonConvert.SerializeObject(data);
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_LoadNoiDungInAnTheoThoiGian(LH_NOIDUNG_IN_AN obj)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                obj.CreatedUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_LoadNoiDungInAnTheoThoiGian(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0)  // thành công
                    {
                        var json = JsonConvert.SerializeObject(data.Tables[0]);
                        return json;
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_PhatHanhLichHopID(LH_PHATHANH obj)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                obj.LastUpdUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                obj.CreatedUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_PhatHanhLichHopID(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0 && data.Tables[0].Rows[0]["IsSuccess"].ToString() == "1")  // thành công
                    {
                        TriggerSignalR("LH_LICHHOP");
                        var objPhatHanhID = new LH_EmailPhatHanh();
                        objPhatHanhID.PhatHanhID = obj.PhatHanhID;
                        var IsSuccessEmail = GuiEmail(JsonConvert.SerializeObject(objPhatHanhID));
                        if (!IsSuccessEmail)// gửi email thất bại
                        {
                            return string.Empty;
                        }
                        return JsonConvert.SerializeObject(data.Tables[0]);
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_LoadPhatHanhLichSuTheoThoiGian(LH_PHATHANH obj)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                obj.CreatedUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var dataPhatHanhLichSu = service.LH_LoadPhatHanhLichSuTheoThoiGian(JsonConvert.SerializeObject(obj));
                    var data = new ResultPhatHanh();
                    if (dataPhatHanhLichSu.Tables[0].Rows.Count > 0)
                    {
                        data.DataPhatHanh = JsonConvert.SerializeObject(dataPhatHanhLichSu.Tables[0]);
                    }

                    return JsonConvert.SerializeObject(data);
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_CheckPhatHanhByThoiGian(LH_PHATHANH obj)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                obj.CreatedUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var dataPhatHanh = service.LH_LoadPhatHanhByThoiGian(JsonConvert.SerializeObject(obj));
                    var data = new ResultPhatHanh();
                    if (dataPhatHanh.Tables[0].Rows.Count > 0)
                    {
                        data.DataPhatHanh = JsonConvert.SerializeObject(dataPhatHanh.Tables[0]);
                    }
                    return JsonConvert.SerializeObject(data);
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_PhatHanhTrucTiep(LH_PHATHANH obj)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                obj.LastUpdUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                obj.CreatedUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_PhatHanhTrucTiep(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0 && data.Tables[0].Rows[0]["IsSuccess"].ToString() == "1")  // thành công
                    {
                        TriggerSignalR("LH_LICHHOP");

                        if (obj.LoaiLichHopPhatHanhTuan==0) //Neu phat hanh checkbok từng lịch thì noti <> phat hành tuần thì đang off
                        {
                            #region Gửi notify phat hanh
                            try
                            {
                                var dataNguoi = service.LH_DanhSachNguoiNhanThongBaoPhatHanh_ByLichHopID(JsonConvert.SerializeObject(obj));
                                if (dataNguoi.Tables.Count > 0 && dataNguoi.Tables[0].Rows[0]["IsSuccess"].ToString() == "1")  // thành công
                                {
                                    var lst = dataNguoi.Tables[0].DataTableToList<NhacLich_NguoiNhac>();
                                    //var lst = JsonConvert.DeserializeObject<List<NhacLich_NguoiNhac>>(data.Tables[0]);
                                    if (lst != null && lst.Any())
                                    {
                                        FirebaseMessage _firebase = new FirebaseMessage();
                                        var kqFirebase = _firebase.Mobile_SendInfoFireBase_ByUserIDAndType(3, lst);
                                    }
                                }
                            }
                            catch (Exception ex)
                            {

                            }
                            #endregion
                        }

                        var objPhatHanhID = new LH_EmailPhatHanh();
                        objPhatHanhID.PhatHanhID = obj.PhatHanhID;
                        var IsSuccessEmail = GuiEmail(JsonConvert.SerializeObject(objPhatHanhID));
                        if (!IsSuccessEmail)// gửi email thất bại
                        {
                            return "0";
                        }
                        return JsonConvert.SerializeObject(data.Tables[0]);
                    }
                    return String.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_BaoVang(objBaoVang obj)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.Mobile_LH_LICHHOP_BAOVANG_Upd(obj.LichHopID, Convert.ToInt32(HttpContext.Current.Session["UserID"]), obj.LyDoID, obj.LyDoVang);
                    if (data.Tables.Count > 0)  // thành công
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]);
                    }
                    return String.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_XungDot(objBaoVang obj)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                //obj.UserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.Mobile_LH_LICHHOP_XUNGDOT_Upd(obj.LichHopID, Convert.ToInt32(HttpContext.Current.Session["UserID"]), obj.LyDoID, obj.LyDoVang);
                    if (data.Tables.Count > 0)  // thành công
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]);
                    }
                    return String.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_ChapNhan(objBaoVang obj)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                //obj.UserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.Mobile_LH_LICHHOP_CHAPNHAN_Upd(obj.LichHopID, Convert.ToInt32(HttpContext.Current.Session["UserID"]));
                    if (data.Tables.Count > 0)  // thành công
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]);
                    }
                    return String.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_TuChoi(objBaoVang obj)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                //obj.UserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.Mobile_LH_LICHHOP_TUCHOIHOP_Upd(obj.LichHopID, Convert.ToInt32(HttpContext.Current.Session["UserID"]), obj.LyDoID, obj.LyDoVang);
                    if (data.Tables.Count > 0)  // thành công
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]);
                    }
                    return String.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_BIEUQUYET_KETQUA_Ins(objBieuQuyet obj)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                //obj.UserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.Mobile_LH_BIEUQUYET_KETQUA_Ins(Convert.ToInt32(HttpContext.Current.Session["UserID"]), obj.BieuQuyetID, obj.DongY);
                    if (data.Tables.Count > 0)  // thành công
                    {
                        TriggerSignalR("LH_BIEUQUYET_KETQUA");
                        return JsonConvert.SerializeObject(data.Tables[0]);
                    }
                    return String.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_BIEUQUYET_GetByLichHopID(objBieuQuyet obj)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                obj.UserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_BIEUQUYET_GetByLichHopID(obj.LichHopID, obj.PageSize, obj.PageIndex, obj.UserID);
                    if (data.Tables.Count > 0)  // thành công
                    {
                        return JsonConvert.SerializeObject(data.Tables);
                    }
                    return String.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]

        public static string Mobile_CN_TAILIEU_Ins(List<CN_TAILIEUCHIASE> ListDataLuuVaoTaiLieuCaNhan)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                if (ListDataLuuVaoTaiLieuCaNhan.Count > 0)
                {
                    using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                    {
                        var data = new DataSet();
                        foreach (var item in ListDataLuuVaoTaiLieuCaNhan)
                        {
                            data = service.Mobile_CN_TAILIEU_Ins(Convert.ToInt32(HttpContext.Current.Session["UserID"]), item.TaiLieuCuocHopID, item.TaiLieuChiaSeID);
                            if (data.Tables.Count == 0)
                            {
                                return string.Empty;
                            }
                        }
                        return JsonConvert.SerializeObject(data.Tables);
                    }
                }
                else
                {
                    return String.Empty;
                }
                //obj.UserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);

            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string Mobile_CN_TAILIEU_CHIASE_Ins(List<CN_TAILIEUCHIASE> ListDataChiaSe)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                if (ListDataChiaSe.Count > 0)
                {
                    using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                    {
                        var data = new DataSet();
                        foreach (var item in ListDataChiaSe)
                        {
                            data = service.Mobile_CN_TAILIEU_CHIASE_Ins(Convert.ToInt32(HttpContext.Current.Session["UserID"]), item.NguoiNhanChiaSeID, item.TaiLieuChiaSeID);
                            if (data.Tables.Count == 0)
                            {
                                return string.Empty;
                            }
                        }
                        return JsonConvert.SerializeObject(data.Tables);
                    }
                }
                else
                {
                    return String.Empty;
                }
                //obj.UserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);

            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_UpdateTinhTrangCuocHop(int BieuQuyetID, bool TinhTrang, bool DaKetThuc)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_UpdateTinhTrangCuocHop(BieuQuyetID, TinhTrang, DaKetThuc, Convert.ToInt32(HttpContext.Current.Session["UserID"]));
                    if (data.Tables.Count == 0)
                    {

                        return string.Empty;
                    }
                    TriggerSignalR("LH_BIEUQUYET_KETQUA");
                    return JsonConvert.SerializeObject(data.Tables);
                }

            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_UpdateTinhTrangPhatHanhByTaiLieuKetLuanID(LH_TAILIEUKETLUAN obj)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                obj.LastUpdUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_UpdateTinhTrangPhatHanhByTaiLieuKetLuanID(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0 && data.Tables[0].Rows[0]["IsSuccess"].ToString() == "1") //Thanh cong
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]);

                    }
                    return string.Empty;
                }

            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_LoadDangKyPhatBieuTheoLichHopID(int LichHopID, bool IsChuToa)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                int UserID = 0;
                if (!IsChuToa)
                {
                    UserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                }
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_LoadDangKyPhatBieuTheoLichHopID(LichHopID, UserID);
                    if (data.Tables.Count > 0)
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]);
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_DANGKYPHATBIEU_InsUpDel(LH_DANGKYPHATBIEU obj, bool IsChuToa)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                int UserID = 0;
                if (!IsChuToa)
                {
                    UserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                }
                var resutDataSet = new DataSet();
                obj.UserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                obj.LastUpdUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                obj.CreatedUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_DANGKYPHATBIEU_InsUpDel(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0 && data.Tables[0].Rows[0]["IsSuccess"].ToString() == "1")  // thành công
                    {
                        if (obj.LichHopID != 0)
                        {
                            resutDataSet = service.LH_LoadDangKyPhatBieuTheoLichHopID(obj.LichHopID, UserID);

                            return JsonConvert.SerializeObject(resutDataSet.Tables[0]);

                        }

                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }
        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_DANGKYPHATBIEU_THANHPHANHOP_InsUpDel(LH_DANGKYPHATBIEU obj, bool IsChuToa)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                int UserID = 0;
                if (!IsChuToa)
                {
                    UserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                }
                var resutDataSet = new DataSet();
                obj.UserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                obj.LastUpdUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                obj.CreatedUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_DANGKYPHATBIEU_InsUpDel(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0 && data.Tables[0].Rows[0]["IsSuccess"].ToString() == "1")  // thành công
                    {
                        if (obj.LichHopID != 0)
                        {
                            resutDataSet = service.LH_LoadDangKyPhatBieuTheoLichHopID(obj.LichHopID, UserID);
                            #region Gửi notify đăng ký phát biểu lich hop
                            try
                            {
                                var dataNguoi = service.LH_DanhSachNguoiNhanThongBaoPhatBieu_ByLichHopID(JsonConvert.SerializeObject(obj));
                                if (dataNguoi.Tables.Count > 0 && dataNguoi.Tables[0].Rows[0]["IsSuccess"].ToString() == "1")  // thành công
                                {
                                    var lst = dataNguoi.Tables[0].DataTableToList<NhacLich_NguoiNhac>();
                                    //var lst = JsonConvert.DeserializeObject<List<NhacLich_NguoiNhac>>(data.Tables[0]);
                                    if (lst != null && lst.Any())
                                    {
                                        FirebaseMessage _firebase = new FirebaseMessage();
                                        var kqFirebase = _firebase.Mobile_SendInfoFireBase_ByUserIDAndType(3, lst);
                                    }
                                }
                            }
                            catch (Exception ex)
                            {

                            }
                            #endregion
                            return JsonConvert.SerializeObject(resutDataSet.Tables[0]);

                        }

                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }
        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_UpdateThoiGianDangKyPhatBieu_InsUpDel(LH_DANGKYPHATBIEU obj, bool IsChuToa)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                int UserID = 0;
                if (!IsChuToa)
                {
                    UserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                }
                var resutDataSet = new DataSet();
                obj.UserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                obj.LastUpdUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                obj.CreatedUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_DANGKYPHATBIEU_InsUpDel(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0 && data.Tables[0].Rows[0]["IsSuccess"].ToString() == "1")  // thành công
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]);
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_UpdateDoUuTienDangKyPhatBieu(string ChuoiDangKyPhatBieuID)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_UpdateDoUuTienDangKyPhatBieu(ChuoiDangKyPhatBieuID);
                    if (data.Tables.Count > 0 && data.Tables[0].Rows[0]["IsSuccess"].ToString() == "1")  // thành công
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]);
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_UPDATE_THOIGIAN_DANGKYPHATBIEU(LH_DANGKYPHATBIEU obj)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                var resutDataSet = new DataSet();
                obj.UserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                obj.LastUpdUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                obj.CreatedUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_UPDATE_THOIGIAN_DANGKYPHATBIEU(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0 && data.Tables[0].Rows[0]["IsSuccess"].ToString() == "1")  // thành công
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]);
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_LoadBienBanHopByLichHopID(LH_BIENBANHOP obj)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                obj.LastUpdUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_LoadBienBanHopByLichHopID(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0)
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]);
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_BIENBANHOP_InsUpDel(LH_BIENBANHOP obj)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                obj.LastUpdUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                obj.CreatedUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_BIENBANHOP_InsUpDel(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0 && data.Tables[0].Rows[0]["IsSuccess"].ToString() == "1")  // thành công
                    {
                        if (obj.IsDelete == true)// hành động xóa
                        {
                            return JsonConvert.SerializeObject(data.Tables[1]); // Table LichHopID
                        }
                        return JsonConvert.SerializeObject(data.Tables[1]); // thông báo IsSuccess
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string GiaoViec_InsUpDel(LH_GIAOVIEC obj)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                obj.LastUpdUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                obj.CreatedUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_GiaoViec_InsUpDel(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0 && data.Tables[0].Rows[0]["IsSuccess"].ToString() == "1")  // thành công
                    {
                        if (obj.IsDelete == true)// hành động xóa
                        {
                            return JsonConvert.SerializeObject(data.Tables[0]);
                        }
                        return JsonConvert.SerializeObject(data.Tables[1]); // Table LichHopID
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_GiaoViec_UpdateChiTietGiaoViec(LH_GIAOVIEC obj)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                obj.LastUpdUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                obj.CreatedUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_GiaoViec_UpdateChiTietGiaoViec(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0 && data.Tables[0].Rows[0]["IsSuccess"].ToString() == "1")  // thành công
                    {
                        if (obj.IsDelete == true)// hành động xóa
                        {
                            return JsonConvert.SerializeObject(data.Tables[0]);
                        }
                        return JsonConvert.SerializeObject(data.Tables[1]); // Table LichHopID
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_LoadGiaoViecTheoLichHopID(LH_GIAOVIEC obj)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                obj.LastUpdUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_LoadGiaoViecTheoLichHopID(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0)
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]);
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string HuyEmail(string ChuoiLichHopID)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                var obj = new LH_HuyEmail();
                obj.LoaiThongBao = "EMAIL";
                obj.LichHopID = ChuoiLichHopID;
                var client = new RestClient(ConfigurationManager.AppSettings["HuyEmail"]);
                var request = new RestRequest(Method.POST);
                request.Parameters.Clear();
                request.AddHeader("Content-Type", "application/json");
                request.AddHeader("Accept-Charset", "utf-8");
                request.AddHeader("Authorization", "6371b3f93f4b4ce0b5be8ece19a4113a");
                request.AddParameter("application/json", JsonConvert.SerializeObject(obj), ParameterType.RequestBody);
                var response = client.Execute(request);
                if (response.StatusCode == System.Net.HttpStatusCode.OK)
                {
                    return "1";
                }
                else
                {
                    return string.Empty;
                }
            }

            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string GuiSMSThongBaoLichHop(int LichHopID)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                return "1";

                ///Tạm thời ẩn để đi demo Tam Ky
                //var obj = new LH_ThongBaoLichHop();
                //obj.LoaiThongBao = "SMS";
                //obj.LichHopID = LichHopID;
                //var client = new RestClient(ConfigurationManager.AppSettings["GuiSMSThongBaoLichHop"]);
                //var request = new RestRequest(Method.POST);
                //request.Parameters.Clear();
                //request.AddHeader("Content-Type", "application/json");
                //request.AddHeader("Accept-Charset", "utf-8");
                //request.AddHeader("Authorization", "6371b3f93f4b4ce0b5be8ece19a4113a");
                //request.AddParameter("application/json", JsonConvert.SerializeObject(obj), ParameterType.RequestBody);
                //var response = client.Execute(request);
                //if (response.StatusCode == System.Net.HttpStatusCode.OK)
                //{
                //    return "1";
                //}
                //else
                //{
                //    return string.Empty;
                //}
            }

            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string ThongBaoGiaoViec(int LichHopID, string NguoiNhac)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                var obj = new LH_ThongBaoGiaoViec();
                obj.LichHopID = LichHopID;
                obj.NguoiNhac = NguoiNhac;
                var client = new RestClient(ConfigurationManager.AppSettings["ThongBaoGiaoViec"]);
                var request = new RestRequest(Method.POST);
                request.Parameters.Clear();
                request.AddHeader("Content-Type", "application/json");
                request.AddHeader("Accept-Charset", "utf-8");
                request.AddHeader("Authorization", "6371b3f93f4b4ce0b5be8ece19a4113a");
                request.AddParameter("application/json", JsonConvert.SerializeObject(obj), ParameterType.RequestBody);
                var response = client.Execute(request);
                if (response.StatusCode == System.Net.HttpStatusCode.OK)
                {
                    return "1";
                }
                else
                {
                    return string.Empty;
                }
            }

            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string GuiEmailTaiLieu(string ChuoiLichHopID, string ChuoiFileID, string EmailList)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                var obj = new LH_EmailTaiLieuHop();
                obj.LichHopID = ChuoiLichHopID;
                obj.FileID = ChuoiFileID;
                obj.EmailList = EmailList;
                var client = new RestClient(ConfigurationManager.AppSettings["EmailTaiLieuCuocHop"]);
                var request = new RestRequest(Method.POST);
                request.Parameters.Clear();
                request.AddHeader("Content-Type", "application/json");
                request.AddHeader("Accept-Charset", "utf-8");
                request.AddHeader("Authorization", "6371b3f93f4b4ce0b5be8ece19a4113a");
                request.AddParameter("application/json", JsonConvert.SerializeObject(obj), ParameterType.RequestBody);
                var response = client.Execute(request);
                if (response.StatusCode == System.Net.HttpStatusCode.OK)
                {
                    return "1";
                }
                else
                {
                    return string.Empty;
                }
            }

            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_NOIDUNG_IN_AN_InsUpDel(LH_NOIDUNG_IN_AN obj, objLoadSchedule objlLoad)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                obj.CreatedUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_NOIDUNG_IN_AN_InsUpDel(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0 && data.Tables[0].Rows[0]["IsSuccess"].ToString() == "1")  // thành công
                    {
                        return LH_Print(objlLoad);
                        //          Report.Report rpt = new Report.Report(HttpContext.Current.Server.MapPath("Template"),"","1");
                        //          string folderDownload;
                        //          string oldFileName;
                        //          string newFileName;
                        //          object[] param = new object[]
                        //          {
                        //JsonConvert.SerializeObject(objlLoad)
                        //          };

                        //          string link = rpt.InReport("InLichHopTheoTuan", param, out folderDownload, out oldFileName, out newFileName);
                        //          return folderDownload; // thông báo IsSuccess
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }



        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_Print(objLoadSchedule objlLoad)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                objlLoad.UserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var dataset = service.LH_InLichHopTheoTuan(JsonConvert.SerializeObject(objlLoad));
                    if (dataset.Tables.Count > 0)
                    {
                        return JsonConvert.SerializeObject(dataset);
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_PrintGiaoViec(int LichHopID)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var dataset = service.LH_InKetLuanTheoLichHopID(LichHopID);
                    if (dataset.Tables.Count > 0)
                    {
                        return JsonConvert.SerializeObject(dataset.Tables[0]);
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        public static bool TriggerSignalR(string Table)
        {
            try
            {
                var obj = new objSignalr();
                obj.TABLE_SIGNALR = Table;
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_TRIGGER_SIGNALR(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0 && data.Tables[0].Rows[0]["IsSuccess"].ToString() == "1")  // thành công
                    {
                        return true;
                    }
                    return false;
                }
            }
            catch (Exception ex)
            {
                return false;
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_LoadChiTietBieuQuyetKetQuaTheoBieuQuyetID(int BieuQuyetID)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_LoadChiTietBieuQuyetKetQuaTheoBieuQuyetID(BieuQuyetID);
                    if (data.Tables.Count > 0)
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]);
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string Mobile_LH_LICHHOP_DUYETBAOVANG_Upd(int LichHopID, int UserID, bool DuyetBaoVang, string LyDoKhongDuyet)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.Mobile_LH_LICHHOP_DUYETBAOVANG_Upd(LichHopID, UserID, DuyetBaoVang, LyDoKhongDuyet);
                    if (data.Tables.Count > 0)
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]);
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string DM_DANHMUC_InsUpDel(DM_OBJECT obj, string TenStore)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                obj.LastUpdUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                obj.CreatedUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.DM_DANHMUC_InsUpDel(JsonConvert.SerializeObject(obj), TenStore);
                    if (data.Tables.Count > 0 && data.Tables[0].Rows[0]["IsSuccess"].ToString() == "1")  // thành công
                    {
                        if (obj.IsDelete == true)// hành động xóa
                        {
                            return JsonConvert.SerializeObject(data.Tables[0]);
                        }
                        return JsonConvert.SerializeObject(data.Tables[1]); // Table LichHopID
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_TAILIEUCUOCHOP_COQUANCHUTRI_GetByLichHopID(TAILIEUCUOCHOP_COQUANCHUTRI_PARAM obj)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_TAILIEUCUOCHOP_COQUANCHUTRI_GetByLichHopID(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0 && data.Tables[0].Rows[0]["IsSuccess"].ToString() == "1")
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]);
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_TAILIEUCUOCHOP_NOIDUNG_GetByLichHopID(TAILIEUCUOCHOP_COQUANCHUTRI_PARAM obj)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_TAILIEUCUOCHOP_NOIDUNG_GetByLichHopID(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0 && data.Tables[0].Rows[0]["IsSuccess"].ToString() == "1")
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]);
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_TAILIEUCUOCHOP_FILETAILIEU_GetByLichHopID(TAILIEUCUOCHOP_COQUANCHUTRI_PARAM obj)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_TAILIEUCUOCHOP_FILETAILIEU_GetByLichHopID(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0 && data.Tables[0].Rows[0]["IsSuccess"].ToString() == "1")
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]);
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_LoadYeuCauHoTroByLichHopID(LH_YEUCAUHOTROPARAM obj)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                obj.UserID = Convert.ToInt32(HttpContext.Current.Session["UserID"] ?? 0);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var YeuCauHoTroMap = new LH_YEUCAUHOTROMAP();
                    string ChiTietYeuCauHoTro = string.Empty;
                    var data = service.LH_LoadYeuCauHoTroByLichHopID(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0)
                    {
                        YeuCauHoTroMap.YeuCauHoTroJson = JsonConvert.SerializeObject(data.Tables[0]);
                    }
                    var ListLoaiYeuCauHoTro = service.Load_DanhMuc("DM_LOAIYEUCAUHOTRO");
                    if (ListLoaiYeuCauHoTro != null && ListLoaiYeuCauHoTro.Any())
                    {
                        YeuCauHoTroMap.LoaiYeuCauHoTroTroJson = JsonConvert.SerializeObject(ListLoaiYeuCauHoTro);
                    }
                    var ListTinhTrangYeuCauHoTro = service.Load_DanhMuc("DM_TINHTRANGYEUCAUHOTRO");
                    if (ListTinhTrangYeuCauHoTro != null && ListTinhTrangYeuCauHoTro.Any())
                    {
                        YeuCauHoTroMap.TinhTrangYeuCauHoTroTroJson = JsonConvert.SerializeObject(ListTinhTrangYeuCauHoTro);
                    }
                    var json = JsonConvert.SerializeObject(YeuCauHoTroMap);
                    return json.ToString();



                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_YeuCauHoTro_XuLyYeuCau_Upd(LH_YEUCAUHOTRO_XULUYEUCAUHOTROADD obj)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                obj.UserID = Convert.ToInt32(HttpContext.Current.Session["UserID"] ?? 0);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {

                    var data = service.LH_YeuCauHoTro_XuLyYeuCau_Upd(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0 && data.Tables[0].Rows[0]["IsSuccess"].ToString() == "1")
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]);
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }
        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_YeuCauHoTro_Del(LH_YEUCAUHOTRO_XULUYEUCAUHOTROADD obj)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                obj.UserID = Convert.ToInt32(HttpContext.Current.Session["UserID"] ?? 0);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {

                    var data = service.LH_YeuCauHoTro_Del(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0 && data.Tables[0].Rows[0]["IsSuccess"].ToString() == "1")
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]);
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_LoadLayYKienPhongHopByLichHopID(LH_LAYYKIENPHONGHOPPARAM obj)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                obj.UserID = Convert.ToInt32(HttpContext.Current.Session["UserID"] ?? 0);
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var LayYKienMap = new LH_LAYYKIENPHONGHOPMAP();
                    var data = service.LH_LoadLayYKienPhongHopByLichHopID(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0)
                    {
                        var json = JsonConvert.SerializeObject(data.Tables[0]);
                        return json.ToString();

                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        /// <summary>
        /// HienLT52
        /// </summary>
        /// <param name="objLichHop"></param>
        /// <returns></returns>
        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_GetDSThongKeCuocHop(REPORT_THONGKELICHHOP objLichHop)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_GetDSThongKeCuocHop(JsonConvert.SerializeObject(objLichHop));
                    if (data.Tables.Count > 0)
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]); //
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        private static object[] GetParamInDanhSach(REPORT_THONGKELICHHOP objLichHop)
        {
            object[] param = new object[]
            {
                objLichHop.LichHopTu != null ? objLichHop.LichHopTu : null,
                objLichHop.LichHopDen != null ? objLichHop.LichHopDen : null,
                objLichHop.IsHopNoiBo != null ? objLichHop.IsHopNoiBo : null,
                objLichHop.IsHopDonViBenNgoai != null ? objLichHop.IsHopDonViBenNgoai : null,
                objLichHop.ChuTriIDs != null ? objLichHop.ChuTriIDs : null,
                objLichHop.TinhTrangIDs != null ? objLichHop.TinhTrangIDs : null,
                objLichHop.DiaDiemHopIDs != null ? objLichHop.DiaDiemHopIDs : null,
                objLichHop.ThanhPhanThamDuIDs != null ? objLichHop.ThanhPhanThamDuIDs : null,
            };
            return param;
        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_Load_DanhSachChiTietThongKeCuocHop_ByLichHopID(REPORT_THONGKELICHHOP objLichHop)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_Load_DanhSachChiTietThongKeCuocHop_ByLichHopID(JsonConvert.SerializeObject(objLichHop));
                    if (data.Tables.Count > 0)
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]); //Thành công
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string Them_LHThuMuc(List<LH_TAILIEUKHAC> DataDanhSachTaiLieuInsert)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                //LH_TAILIEUKHAC obj = new LH_TAILIEUKHAC();

                //obj.CreatedUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                //obj.NoiDung = !string.IsNullOrEmpty(NoiDung) ? NoiDung : null;
                //obj.ThuMuc = !string.IsNullOrEmpty(ThuMuc) ? ThuMuc : null;
                //obj.TenFile = !string.IsNullOrEmpty(TenFile) ? TenFile : null;
                //obj.FileID = !string.IsNullOrEmpty(FileID) ? FileID : null;
                //obj.DoiTuongID = DoiTuongID;

                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = new DataSet();
                    if (DataDanhSachTaiLieuInsert.Count > 0)
                    {

                        foreach (var itemtailieu in DataDanhSachTaiLieuInsert)
                        {
                            data = service.Them_LHThuMuc(JsonConvert.SerializeObject(itemtailieu), Convert.ToInt32(HttpContext.Current.Session["UserID"]));
                        }
                        if (data.Tables.Count == 0) { return string.Empty; }
                        // Thanh cong
                    }
                    return JsonConvert.SerializeObject(data.Tables[0]);
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }

        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string Update_LHThuMuc(string ThuMuc, string NoiDung, string TaiLieuID)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                LH_TAILIEUKHAC obj = new LH_TAILIEUKHAC();

                obj.UpdateUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                obj.NoiDung = !string.IsNullOrEmpty(NoiDung) ? NoiDung : null;
                obj.ThuMuc = !string.IsNullOrEmpty(ThuMuc) ? ThuMuc : null;
                obj.TaiLieuID = Convert.ToInt32(TaiLieuID);


                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.Update_LHThuMuc(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0)  // thành công
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]); // // Table LichHopID
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string Delete_LHThuMuc(string FileID)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                LH_TAILIEUKHAC obj = new LH_TAILIEUKHAC();

                obj.FileID = !string.IsNullOrEmpty(FileID) ? FileID : null;

                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.Delete_LHThuMuc(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0)  // thành công
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]); // // Table LichHopID
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }






        /// <summary>
        /// HienLT52
        /// </summary>
        /// <param name="objLichHop"></param>
        /// <returns></returns>
        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_GetDSTaiLieuKhac(LH_TAILIEUKHAC objLichHop)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_GetDSTaiLieuKhac(JsonConvert.SerializeObject(objLichHop));
                    if (data.Tables.Count > 0)
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]); //
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_GetDSTaiLieuKhacV2(LH_TAILIEUKHACV2 objLichHop)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_GetDSTaiLieuKhacV2(JsonConvert.SerializeObject(objLichHop));
                    if (data.Tables.Count > 0)
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]); //
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_ThemTaiLieuKhacData(List<LH_TAILIEUKHACV2> DataDanhSachTaiLieuInsert)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }

                //var ListTaiLieuKhac = new List<LH_TAILIEUKHACV2>();

                //if (DataDanhSachTaiLieuInsert.Count > 0)
                //{
                //    foreach (var item in DataDanhSachTaiLieuInsert)
                //    {
                //        var obj = new LH_TAILIEUKHACV2();
                //        obj.TenTaiLieu = item.TenTaiLieu;
                //        obj.TenFile = item.TenFile;
                //        obj.FileID = item.FileID;
                //        obj.CreatedUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                //        ListTaiLieuKhac.Add(obj);
                //    }
                //}
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = new DataSet();
                    if (DataDanhSachTaiLieuInsert.Count > 0)
                    {

                        foreach (var itemtailieu in DataDanhSachTaiLieuInsert)
                        {
                            data = service.LH_ThemTaiLieuKhac(JsonConvert.SerializeObject(itemtailieu), Convert.ToInt32(HttpContext.Current.Session["UserID"]));
                        }
                        if (data.Tables.Count == 0) { return string.Empty; }
                        // Thanh cong
                    }
                    return JsonConvert.SerializeObject(data.Tables[0]);
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }

        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_UpdateFileTaiLieuKhac(string TenTaiLieu, string TaiLieuID)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                LH_TAILIEUKHACV2 obj = new LH_TAILIEUKHACV2();

                obj.LastUpdUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                obj.TenTaiLieu = !string.IsNullOrEmpty(TenTaiLieu) ? TenTaiLieu : null;
                obj.TaiLieuID = Convert.ToInt32(TaiLieuID);



                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_UpdateFileTaiLieuKhac(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0)  // thành công
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]); // // Table LichHopID
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_UpdateTaiLieuKhac(string TenTaiLieu, string TenTaiLieuData)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                LH_TAILIEUKHACV2 obj = new LH_TAILIEUKHACV2();

                obj.LastUpdUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                obj.TenTaiLieu = !string.IsNullOrEmpty(TenTaiLieu) ? TenTaiLieu : null;
                // obj.TaiLieuID = Convert.ToInt32(TaiLieuID);
                obj.TenTaiLieuData = !string.IsNullOrEmpty(TenTaiLieuData) ? TenTaiLieuData : null;


                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_UpdateTaiLieuKhac(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0)  // thành công
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]); // // Table LichHopID
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_DeleteTaiLieuKhac(string FileID)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                LH_TAILIEUKHACV2 obj = new LH_TAILIEUKHACV2();

                obj.FileID = !string.IsNullOrEmpty(FileID) ? FileID : null;

                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_DeleteTaiLieuKhac(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0)  // thành công
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]); // // Table LichHopID
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }



        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_GetDSBieuQuyetTuDo(LH_BIEUQUYETTUDO objLichHop)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_GetDSBieuQuyetTuDo(JsonConvert.SerializeObject(objLichHop));
                    if (data.Tables.Count > 0)
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]); //
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_ThemBieuQuyetTuDo(string TieuDe, string NoiDung, bool DaKetThuc)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                LH_BIEUQUYETTUDO obj = new LH_BIEUQUYETTUDO();

                obj.CreatedUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                obj.TieuDe = !string.IsNullOrEmpty(TieuDe) ? TieuDe : null;
                obj.NoiDung = !string.IsNullOrEmpty(NoiDung) ? NoiDung : null;
                obj.DaKetThuc = DaKetThuc;
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_ThemBieuQuyetTuDo(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0)  // thành công
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]); // // Table LichHopID
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }

        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_UpdateBieuQuyetTuDo(string TieuDe, string NoiDung, bool DaKetThuc, string BieuQuyetID)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                LH_BIEUQUYETTUDO obj = new LH_BIEUQUYETTUDO();

                obj.LastUpdUserID = Convert.ToInt32(HttpContext.Current.Session["UserID"]);
                obj.TieuDe = !string.IsNullOrEmpty(TieuDe) ? TieuDe : null;
                obj.NoiDung = !string.IsNullOrEmpty(NoiDung) ? NoiDung : null;
                obj.DaKetThuc = DaKetThuc;
                obj.BieuQuyetID = Convert.ToInt32(BieuQuyetID);


                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_UpdateBieuQuyetTuDo(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0)  // thành công
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]); // // Table LichHopID
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_Load_DanhSachChiTietBieuQuyetTuDo_ByBieuQuyetID(LH_BIEUQUYETTUDO objLichHop)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_Load_DanhSachChiTietBieuQuyetTuDo_ByBieuQuyetID(JsonConvert.SerializeObject(objLichHop));
                    if (data.Tables.Count > 0)
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]); //Thành công
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }
        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = false, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static string LH_DeleteBieuQuyetTuDo(string BieuQuyetID)
        {
            try
            {
                if (HttpContext.Current.Session["UserID"] == null)
                {
                    return null;
                }
                LH_BIEUQUYETTUDO obj = new LH_BIEUQUYETTUDO();

                obj.BieuQuyetID = Convert.ToInt32(BieuQuyetID);

                using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                {
                    var data = service.LH_DeleteBieuQuyetTuDo(JsonConvert.SerializeObject(obj));
                    if (data.Tables.Count > 0)  // thành công
                    {
                        return JsonConvert.SerializeObject(data.Tables[0]); // // Table LichHopID
                    }
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }



        public class LH_TAILIEUKHAC
        {
            public string DoiTuongID { get; set; }

            public string ThuMuc { get; set; }

            public DateTime? CreatedDate { get; set; }

            public DateTime? UpdateDate { get; set; }

            public int? CreatedUserID { get; set; }

            public int? UpdateUserID { get; set; }

            public string NoiDung { get; set; }

            public string TenFile { get; set; }

            public bool? IsDelete { get; set; }

            public long TaiLieuID { get; set; }

            public string FileID { get; set; }

        }

        public class LH_TAILIEUKHACV2
        {
            public long TaiLieuID { get; set; }
            public string TenTaiLieu { get; set; }
            public string TenTaiLieuData { get; set; }

            public string TuNgay { get; set; }
            public string DenNgay { get; set; }
            public string TenFile { get; set; }
            public string FileID { get; set; }
            public string TaiLieu_NoiDung { get; set; }
            public DateTime? CreatedDate { get; set; }
            public DateTime? LastUpdDate { get; set; }
            public int? CreatedUserID { get; set; }
            public int? LastUpdUserID { get; set; }
            public bool? IsActive { get; set; }
            public bool? IsDelete { get; set; }

        }

        public class LH_BIEUQUYETTUDO
        {
            public int BieuQuyetID { get; set; }
            public string TieuDe { get; set; }
            public string TuNgay { get; set; }
            public string DenNgay { get; set; }
            public string NoiDung { get; set; }
            public bool TinhTrang { get; set; }
            public int SoLuongDongY { get; set; }
            public int SoLuongKhongDongY { get; set; }
            public bool? DaKetThuc { get; set; }
            public DateTime? CreatedDate { get; set; }
            public DateTime? LastUpdDate { get; set; }
            public int? CreatedUserID { get; set; }
            public int? LastUpdUserID { get; set; }
            public bool? IsActive { get; set; }
            public bool? IsDelete { get; set; }

        }

        public class REPORT_THONGKELICHHOP
        {
            public int LichHopID { get; set; }
            public string LichHopTu { get; set; }
            public string LichHopDen { get; set; }
            public bool? IsHopNoiBo { get; set; }
            public bool? IsHopDonViBenNgoai { get; set; }
            public string ChuTriIDs { get; set; }
            public string TinhTrangIDs { get; set; }
            public string DiaDiemHopIDs { get; set; }
            public string ThanhPhanThamDuIDs { get; set; }
            public string TenCuocHop { get; set; }
        }

        public class DM_OBJECT
        {
            public int? Id { get; set; }
            public string MaDanhMuc { get; set; }
            public string TenDanhMuc { get; set; }

            public int? NhomID { get; set; }
            public int? DoiTuongID { get; set; }

            public int? ChuTriID { get; set; }

            public int? ThuKyID { get; set; }

            public int? PhongHopID { get; set; }
            public int? UserID { get; set; }
            public int? NhomChuTriID { get; set; }
            public int? DonViID { get; set; }
            public string TenDonVi { get; set; }
            public string Email { get; set; }

            public string TenNhom { get; set; }
            public string DoUuTien { get; set; }
            public string TenPhongHop { get; set; }
            public string TenChuTri { get; set; }
            public string TenThuKy { get; set; }
            public string TenDoiTuong { get; set; }

            public string TenNhomChuTri { get; set; }

            public List<PhongBan_User> ListObjectUserId { get; set; }

            public bool? DoiTuongNhac { get; set; }

            public DateTime? CreatedDate { get; set; }

            public int? CreatedUserID { get; set; }

            public int? LastUpdUserID { get; set; }

            public int? QuiTrinhID { get; set; }

            public int? NguoiChuyenID { get; set; }
            public int? TinhTrangHienTaiID { get; set; }

            public int? NguoiNhanID { get; set; }

            public DateTime? LastUpdDate { get; set; }

            public bool? IsDelete { get; set; }

        }



        public class objSignalr
        {
            public string TABLE_SIGNALR { get; set; }
        }
        public class SearchVanban
        {
            public string keyword { get; set; }
            public int start { get; set; }
            public int end { get; set; }
        }
        // Entity
        public class LH_NOIDUNG_IN_AN
        {
            public long NoiDungInAnID { get; set; }

            public string CongTacTapTrung { get; set; }

            public string ThoiGian { get; set; }

            public long? CreatedUserID { get; set; }

            public DateTime? CreatedDate { get; set; }

            public DateTime? ThoiGianTu { get; set; }
            public DateTime? ThoiGianDen { get; set; }
        }

        public class ResultPhatHanh
        {
            public string DataPhatHanh { get; set; }
            public string DataLichHopID { get; set; }
            public string DataThanhPhanThamDu { get; set; }
        }

        public class LH_GIAOVIEC
        {
            public long GiaoViecID { get; set; }

            public long? LichHopID { get; set; }

            public string NoiDung { get; set; }

            public int? PhongBanDonViXuLyID { get; set; }

            public int? HanXuLy { get; set; }

            public DateTime? Ngay { get; set; }

            public int? NguoiChiDaoID { get; set; }

            public int? NguoiTheoDoiID { get; set; }

            public string PhongBanDonViPhoiHop { get; set; }

            public string TenFile { get; set; }

            public string FileID { get; set; }

            public DateTime? CreatedDate { get; set; }

            public int? CreatedUserID { get; set; }

            public int? LastUpdUserID { get; set; }

            public DateTime? LastUpdDate { get; set; }

            public bool? IsDelete { get; set; }

            public int? TinhTrangDuyet { get; set; }

            public string NoiDungKhongPheDuyet { get; set; }

            public int? DoiTuongID { get; set; }

            public string ChiTietGiaoViec { get; set; }
        }




        public class LH_BIENBANHOP
        {
            public long BienBanID { get; set; }

            public long? LichHopID { get; set; }

            public string TieuDe { get; set; }

            public string NoiDung { get; set; }

            public string TenFile { get; set; }

            public string FileID { get; set; }

            public DateTime? CreatedDate { get; set; }

            public int? CreatedUserID { get; set; }

            public int? LastUpdUserID { get; set; }

            public DateTime? LastUpdDate { get; set; }

            public bool? IsDelete { get; set; }

        }

        public class LH_DANGKYPHATBIEU
        {
            public long DangKyPhatBieuID { get; set; }

            public int LichHopID { get; set; }

            public int? UserID { get; set; }

            public string NoiDungPhatBieu { get; set; }

            public bool? DaPhatBieu { get; set; }

            public int? STT { get; set; }

            public int? DoUuTien { get; set; }

            public int? TinhTrang { get; set; }

            public int? PhanBoThoiGianID { get; set; }

            public DateTime? ThoiGianBatDau { get; set; }
            public DateTime? ThoiGianKetThuc { get; set; }
            public DateTime? CreatedDate { get; set; }

            public int? CreatedUserID { get; set; }

            public int? LastUpdUserID { get; set; }

            public DateTime? LastUpdDate { get; set; }

            public bool? IsDelete { get; set; }
            public bool? IsUpdateThoiGianBatDau { get; set; }

        }


        public class CN_TAILIEUCHIASE
        {
            public int NguoiNhanChiaSeID { get; set; }
            public int TaiLieuChiaSeID { get; set; }

            public int TaiLieuCuocHopID { get; set; }

        }

        public class objBieuQuyet
        {
            public int LichHopID { get; set; }
            public int PageSize { get; set; }

            public int PageIndex { get; set; }
            public int UserID { get; set; }
            public int BieuQuyetID { get; set; }
            public bool DongY { get; set; }
        }

        public class objBaoVang
        {
            public int LichHopID { get; set; }
            public int LyDoID { get; set; }
            public string LyDoVang { get; set; }
        }

        public class LH_EmailTaiLieuHop
        {
            public string LichHopID { get; set; }
            public string FileID { get; set; }
            public string EmailList { get; set; }

        }

        public class LH_HuyEmail
        {
            public string LichHopID { get; set; }
            public string LoaiThongBao { get; set; }
        }

        public class LH_ThongBaoLichHop
        {
            public int LichHopID { get; set; }
            public string LoaiThongBao { get; set; }
        }

        public class LH_ThongBaoGiaoViec
        {
            public int LichHopID { get; set; }
            public string NguoiNhac { get; set; }
        }

        public class LH_EmailPhatHanh
        {
            public long PhatHanhID { get; set; }
        }
        public class LH_PHATHANH
        {
            public long PhatHanhID { get; set; }
            public string KhoangThoiGian { get; set; }

            public string NoiDung { get; set; }

            public string TenFile { get; set; }

            public string FileID { get; set; }

            public string LichHopPhatHanhID { get; set; }
            public int LoaiLichHopPhatHanhTuan { get; set; }
            public string EmailNhanThongBao { get; set; }
            public string EmailDonViCaNhan { get; set; }
            public DateTime? ThoiGianTu { get; set; }
            public DateTime? ThoiGianDen { get; set; }

            public DateTime? CreatedDate { get; set; }

            public int? CreatedUserID { get; set; }

            public int? LastUpdUserID { get; set; }

            public DateTime? LastUpdDate { get; set; }

            public bool? IsDelete { get; set; }
            public bool? DaPhatHanh { get; set; }

            public string TinhTrangID { get; set; } // Important
            public string ChuoiLichHopID { get; set; } // Important

            public string Role { get; set; }// Important

        }

        public class objDataTable
        {
            public string LichHopID { get; set; }
            public string TenTable { get; set; }
            public bool? PhatHanh { get; set; }
            public string NhomID { get; set; }
            public string ThoiGianTu { get; set; }
        }
        public class objLoadSchedule
        {
            public string RoleUser { get; set; }
            public long UserID { get; set; }
            public string TuNgay { get; set; }
            public string DenNgay { get; set; }
            public string Thang { get; set; }
            public string Nam { get; set; }
            public string Loai { get; set; }
            public string Search { get; set; }
            public string ChuTriID { get; set; }
            public string DoiTuongXemID { get; set; }


        }
        public class ResultData
        {
            public string LH_LICHHOP { get; set; }
            public string LH_TAILIEUCUOCHOP { get; set; }
            public string LH_DOITUONGNHAC { get; set; }
            public string LH_THANHPHAN { get; set; }
            public string LH_CHUANBI { get; set; }

        }
        public class Data
        {
            public string ListLoaiLichHop { get; set; }
            public string ListDoiTuong { get; set; }
            public string ListPhongHop { get; set; }
            public string ListLinhVuc { get; set; }
            public string ListThanhPhanChuanBi { get; set; }
            public string ListDoiTuongNhac { get; set; }

            public string ListGio { get; set; }
            public string ListNgay { get; set; }
            public string ListUsers { get; set; }
            public string ListPhongBan { get; set; }

            public string ListLyDoVang { get; set; }
            public string ListDanhSachTaiLieu { get; set; }
            public string ListLichNhac { get; set; }

            public string ListPhanBoThoiGian { get; set; }
            public string ListNguoiChiDao { get; set; }
            public string ListNguoiTheoDoi { get; set; }
            public string ListChuTri { get; set; }
            public string ListThuKy { get; set; }
            public string ListTinhTrang { get; set; }

            public string ListThuMuc { get; set; }
            public string ListTenTaiLieu { get; set; }

            public string UserLoginSchedule { get; set; }

        }
        public class LH_CHUONGTRINHHOP
        {
            public long ChuongTrinhHopID { get; set; }

            public long? LichHopID { get; set; }

            public string TenChuongTrinh { get; set; }

            public string GioBatDau { get; set; }

            public string GioKetThuc { get; set; }
            public string PhutBatDau { get; set; }

            public string PhutKetThuc { get; set; }
            public DateTime? TuNgay { get; set; }
            public DateTime? DenNgay { get; set; }

            public string GioPhutBatDau { get; set; }

            public string GioPhutKetThuc { get; set; }


            public string NoiDung { get; set; }

            public string TenFile { get; set; }

            public string FileID { get; set; }

            public DateTime? CreatedDate { get; set; }

            public int? CreatedUserID { get; set; }

            public int? LastUpdUserID { get; set; }

            public DateTime? LastUpdDate { get; set; }

            public bool? IsDelete { get; set; }

        }
        public class BaoCaoTongHop
        {
            public string LoaiThe { get; set; }
            public string Tong { get; set; }
        }

        public class LH_ChuyenDuyetTatCa
        {
            public string ChuoiLichHopID { get; set; }
            public string TinhTrangID { get; set; }
            public int NguoiGuiID { get; set; }
        }

        public class LH_LICHHOP
        {
            public long LichHopID { get; set; }

            public string TenCuocHop { get; set; }

            public DateTime? NgayHop { get; set; }
            public DateTime? NgayHopKetThuc { get; set; }

            public string GioBatDau { get; set; }

            public string GioKetThuc { get; set; }

            public string ThoiGianNhacLichHop { get; set; }

            public long? NguoiChuTriID { get; set; }

            public long? ThuKyID { get; set; }

            public bool? KhongHienThi { get; set; }

            public string ThanhPhanThamDuKhac { get; set; }

            public string GhiChu { get; set; }

            public int? PhongHopID { get; set; }

            public string DoiTuongXemID { get; set; }

            public long? QuaTrinhXuLyHienTaiID { get; set; }

            public int? TinhTrangID { get; set; }

            public int? BatDauHop { get; set; }

            public DateTime? CreatedDate { get; set; }

            public int? CreatedUserID { get; set; }

            public int? LastUpdUserID { get; set; }

            public DateTime? LastUpdDate { get; set; }

            public bool? IsDelete { get; set; }

            public string NoiDungKhongPheDuyet { get; set; }


            public bool? IsPrint { get; set; }

            public string TenPhongHopKhac { get; set; }

            public string ChuTriPhu { get; set; }
            public string ThuKyPhu { get; set; }
            public bool? IsDuplicate { get; set; }

            public string ChuanBiKhac { get; set; }

            public string HienThiInChuTri { get; set; }

            public string HienThiInThanhPhan { get; set; }

            public string TenNhomThanhPhan { get; set; }
            public bool? IsShowKiosk { get; set; }
            public string GoogleMeet { get; set; }
            public string LoaiLichHop { get; set; }


        }

        public class LH_THANHPHAN
        {
            public long ThanhPhanID { get; set; }

            public long? LichHopID { get; set; }

            public long? PhongBanID { get; set; }

            public long? UserID { get; set; }

            public long? DoiTuongID { get; set; }

            public bool? DiemDanh { get; set; }

            public string TenPhongBan { get; set; }

            public DateTime? CreatedDate { get; set; }

            public int? CreatedUserID { get; set; }

            public int? LastUpdUserID { get; set; }

            public DateTime? LastUpdDate { get; set; }

            public bool? IsDelete { get; set; }

        }

        public class LH_CHUANBI
        {
            public long ChuanBiID { get; set; }

            public long? LichHopID { get; set; }

            public long? PhongBanID { get; set; }

            public long? UserID { get; set; }

            public DateTime? CreatedDate { get; set; }

            public int? CreatedUserID { get; set; }

            public int? LastUpdUserID { get; set; }

            public DateTime? LastUpdDate { get; set; }

            public bool? IsDelete { get; set; }

            public string TenPhongBan { get; set; }

        }

        public class PhongBan_User
        {
            public string PhongBanID { get; set; }
            public int UserID { get; set; }
            public int? DoiTuongID { get; set; }

            public string TenPhongBan { get; set; }

            public bool? DiemDanh { get; set; }
        }

        public class LH_BIEUQUYET
        {
            public long BieuQuyetID { get; set; }

            public long? LichHopID { get; set; }

            public string TieuDe { get; set; }

            public string NoiDung { get; set; }

            public bool? TinhTrang { get; set; }

            public int? SoLuongDongY { get; set; }

            public int? SoLuongKhongDongY { get; set; }

            public DateTime? CreatedDate { get; set; }

            public int? CreatedUserID { get; set; }

            public int? LastUpdUserID { get; set; }

            public DateTime? LastUpdDate { get; set; }

            public bool? IsDelete { get; set; }
        }

        public class LH_QUATRINHXULY
        {
            public long QuaTrinhXuLyID { get; set; }

            public long? LichHopID { get; set; }

            public long? NguoiGuiID { get; set; }

            public long? NguoiNhanID { get; set; }

            public string NoiDungXuLy { get; set; }

            public int? TinhTrangID { get; set; }

            public string TenFile { get; set; }

            public string FileID { get; set; }

            public DateTime? CreatedDate { get; set; }

            public int? CreatedUserID { get; set; }

            public int? LastUpdUserID { get; set; }

            public DateTime? LastUpdDate { get; set; }

            public bool? IsDelete { get; set; }

        }
        public class LH_THAOLUAN
        {
            public long ThaoLuanID { get; set; }

            public long? LichHopID { get; set; }

            public long? LinhVucID { get; set; }

            public string NoiDung { get; set; }

            public string TenFile { get; set; }

            public string FileID { get; set; }

            public DateTime? CreatedDate { get; set; }

            public int? CreatedUserID { get; set; }

            public int? LastUpdUserID { get; set; }

            public DateTime? LastUpdDate { get; set; }

            public bool? IsDelete { get; set; }

        }
        public class LH_GIAYMOIHOP
        {
            public long GiayMoiHopID { get; set; }

            public long? LichHopID { get; set; }

            public string TenFile { get; set; }

            public string FileID { get; set; }

            public DateTime? CreatedDate { get; set; }

            public int? CreatedUserID { get; set; }

            public int? LastUpdUserID { get; set; }

            public DateTime? LastUpdDate { get; set; }

            public bool? IsDelete { get; set; }

        }
        public class CN_TAILIEU
        {
            public long TaiLieuID { get; set; }

            public int? UserID { get; set; }

            public long? TaiLieuCuocHopID { get; set; }

            public long? LichHopID { get; set; }

            public string TenTaiLieu { get; set; }

            public string TenFile { get; set; }

            public string FileID { get; set; }

            public bool? DuocChiaSe { get; set; }
            public bool? DuocCongKhai { get; set; }

            public DateTime? CreatedDate { get; set; }

            public int? CreatedUserID { get; set; }

            public int? LastUpdUserID { get; set; }

            public DateTime? LastUpdDate { get; set; }

            public bool? IsDelete { get; set; }

        }
        public class LH_TAILIEUCUOCHOP
        {
            public long TaiLieuCuocHopID { get; set; }

            public long? LichHopID { get; set; }

            public string TenTaiLieu { get; set; }

            public string TenFile { get; set; }

            public string FileID { get; set; }

            public bool? DaMail { get; set; }


            public bool? DuocCongKhai { get; set; }
            public string VanBanLienQuan { get; set; }

            public string TaiLieu_CoQuanChuTri { get; set; }
            public string TaiLieu_NoiDung { get; set; }


            public bool? DaPhatHanh { get; set; }

            public DateTime? CreatedDate { get; set; }

            public int? CreatedUserID { get; set; }

            public int? LastUpdUserID { get; set; }

            public DateTime? LastUpdDate { get; set; }

            public bool? IsDelete { get; set; }

        }

        public class LH_TAILIEUKETLUAN
        {
            public long TaiLieuKetLuanID { get; set; }

            public long? LichHopID { get; set; }

            public string TenTaiLieu { get; set; }

            public string TenFile { get; set; }

            public string FileID { get; set; }

            public string GhiChu { get; set; }

            public DateTime? CreatedDate { get; set; }

            public int? CreatedUserID { get; set; }

            public int? LastUpdUserID { get; set; }

            public DateTime? LastUpdDate { get; set; }

            public bool? IsDelete { get; set; }

            public bool? PhatHanh { get; set; }
            public string TaiLieuHop_SoKyHieu { get; set; }
            public string TaiLieuHop_NgayBanHanh { get; set; }

        }


    }
}