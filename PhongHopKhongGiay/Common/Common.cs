using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Telerik.Web.UI;
using System.Web.Script.Serialization;
using System.Globalization;
using log4net;
using System.Web.Configuration;

namespace PhongHopKhongGiay
{
    public class Common
    {
        //private static MasterServiceClient MasterServiceClient;
        //private static DanhMucXayDungServiceClient danhMucXayDungServiceClient;
        protected static readonly ILog log = LogManager.GetLogger(typeof(Common));
        #region <Person Login Infomation>
        public int UserId = -1;
        public int DonViId = 1;
        public int PhongBanID = -1;
        public int TinhThanhId = -1;
        public int QuanHuyenId = -1;
        public  int PhuongXaId = -1;
        public  string MaDonViId = "";
        public int CapDonViId = -1;
        public static readonly string fileExtension = ".doc,.docx,.xls,.xlsx,.pdf,.tif,.jpg,.png,.gif,.DOC,.DOCX,.XLS,.XLSX,.PDF,.TIF,.JPG,.PNG,.GIF";

        //TramCLH 2017/05/11
        public string UseESB = WebConfigurationManager.AppSettings["UseESB"];

        //Hungnk15 12/04/2019
        public enum NotifyResult:long
        {
            Success = 1,
            Failed = 0,
        }
        public Common()
        {
            try
            {
                if ( HttpContext.Current.Session["USER_MASTER"]!=null)
                {
                    string uM = HttpContext.Current.Session["USER_MASTER"].ToString();
                    dynamic re = new JavaScriptSerializer().Deserialize<dynamic>(uM);
                    DonViId = re["DonViID"] == null ? -1 : (int) re["DonViID"];
                    //UserId = re["User_MasterID"]==null?-1:(int)re["User_MasterID"];
                    UserId = re["User_PortalID"] == null ? -1 : (int)re["User_PortalID"];
                    TinhThanhId = re["TinhThanhID"]==null?-1:(int)re["TinhThanhID"];
                    QuanHuyenId = re["QuanHuyenID"]==null?-1:(int)re["QuanHuyenID"];
                    MaDonViId = re["MaDonVi"]==null?"":(string)re["MaDonVi"];
                    CapDonViId = re["CapDonViID"]==null?-1:(int)re["CapDonViID"];
                }                
            }
            catch (Exception)
            {
                
                throw;
            }
        
        }

        public int  GetUserID()
        {
            if (HttpContext.Current.Session["USER_MASTER"] != null)
            {
                string uM = HttpContext.Current.Session["USER_MASTER"].ToString();
                dynamic re = new JavaScriptSerializer().Deserialize<dynamic>(uM);
                return  re["User_PortalID"] == null ? -1 : (int)re["User_PortalID"];
            }
            else
            {
                return 0;
            }
        }

        #region <Bind ComboBox>
        /// <summary>
        /// Bind Danh mục DKKD vào radComboBox
        /// </summary>
        /// <param name="radComboBox">Tên RadComboBox ID</param>
        /// <param name="tableName">Tên danh mục</param>
        /// <param name="hasEmptyRow">Thêm 1 RadComboBoxItem "---Chọn---" vào RadComboBox</param>


        /// <summary>
        /// Bind Danh mục MasterTable vào radComboBox. tableObject là object tương ứng với danh mục.
        /// </summary>
        /// <param name="radComboBox">Tên RadComboBox ID</param>
        /// <param name="tableName">Tên danh mục</param>
        /// <param name="tableObject">Object danh mục</param>
        /// <param name="hasEmptyRow">Thêm 1 RadComboBoxItem "---Chọn---" vào RadComboBox</param>
        //public void BindComboBox(RadComboBox radComboBox, string tableName, object tableObject, string selectValue, bool hasEmptyRow = false)
        //{
        //    MasterServiceClient MasterServiceClient = new MasterServiceClient();
        //    MasterXayDungServiceClient masterXayDungService = new MasterXayDungServiceClient();
        //    try
        //    {
        //        //set enable combobox theo cap don vi
        //        //1:tinh
        //        //2:huyen
        //        //3:phuong

        //        int capDonVi = masterXayDungService.GetCapDonVi(UserId, DonViId);
        //        string cacheKey=string.Empty ; 
        //        switch (tableName)
        //        {
        //            case "DM_TINHTHANH":

        //                cacheKey = CacheHelper.BuildKey("MST_DM_QUOCGIA" , string.Empty);
        //                DM_QUOCGIA[] listQuocGia = CacheHelper.GetData<DM_QUOCGIA[]>(cacheKey);
        //                if (listQuocGia == null)
        //                {
        //                    listQuocGia = MasterServiceClient.DM_QUOCGIA_Lst(new DM_QUOCGIA { Used = true });
        //                    CacheHelper.SetData(cacheKey, listQuocGia);
        //                }
        //                string DKKDQuocGiaDefault = listQuocGia.Where(x => x.MaQuocGia == "VN").Select(x => x.QuocGiaID).FirstOrDefault().ToString(CultureInfo.InvariantCulture);

        //                cacheKey = CacheHelper.BuildKey("MST_" + tableName, DKKDQuocGiaDefault);
        //                DM_TINHTHANH[] listTinhThanh = CacheHelper.GetData<DM_TINHTHANH[]>(cacheKey);
        //                if (listTinhThanh == null || listTinhThanh.Count() <= 0)
        //                {
        //                    DM_TINHTHANH tinh = (DM_TINHTHANH)tableObject;
        //                    tinh.Used = true;
        //                    tinh.QuocGiaID =long.Parse(DKKDQuocGiaDefault);
        //                    listTinhThanh = MasterServiceClient.DM_TINHTHANH_Lst(tinh);
        //                    CacheHelper.SetData(cacheKey, listTinhThanh);
        //                }
        //                radComboBox.DataSource = listTinhThanh;
        //                radComboBox.DataValueField = "TinhThanhID";
        //                radComboBox.DataTextField = "TenTinhThanh";
        //                radComboBox.Enabled = false;
        //                break;
        //            case "DM_QUANHUYEN":
        //                DM_QUANHUYEN huyen = (DM_QUANHUYEN)tableObject;
        //                cacheKey = CacheHelper.BuildKey("MST_" + tableName, huyen.TinhThanhID.ToString());
        //                DM_QUANHUYEN[] listQuanHuyen = CacheHelper.GetData<DM_QUANHUYEN[]>(cacheKey);
        //                if (listQuanHuyen == null || listQuanHuyen.Count() <= 0)
        //                {
        //                    huyen.Used = true;
        //                    listQuanHuyen = MasterServiceClient.DM_QUANHUYEN_Lst(huyen);
        //                    CacheHelper.SetData(cacheKey, listQuanHuyen);
        //                }
        //                radComboBox.DataSource = listQuanHuyen;
        //                radComboBox.DataValueField = "QuanHuyenID";
        //                radComboBox.DataTextField = "TenQuanHuyen";
        //                if (capDonVi > 1)//tỉnh
        //                {
        //                    radComboBox.Enabled = false;
        //                }
        //                else
        //                {
        //                    radComboBox.Enabled = true;
        //                }
        //                break;
        //            case "DM_PHUONGXA":
        //                DM_PHUONGXA phuong = (DM_PHUONGXA)tableObject;
        //                cacheKey = CacheHelper.BuildKey("MST_" + tableName, phuong.QuanHuyenID.ToString());
        //                DM_PHUONGXA[] listPhuongXa = CacheHelper.GetData<DM_PHUONGXA[]>(cacheKey);
        //                if (listPhuongXa == null || listPhuongXa.Count() < 0)
        //                {
        //                    phuong.Used = true;
        //                    listPhuongXa = MasterServiceClient.DM_PHUONGXA_Lst(phuong);
        //                    CacheHelper.SetData(cacheKey, listPhuongXa);
        //                }
        //                radComboBox.DataSource = listPhuongXa;
        //                radComboBox.DataValueField = "PhuongXaID";
        //                radComboBox.DataTextField = "TenPhuongXa";
        //                if (capDonVi >= 3)//tỉnh
        //                {
        //                    radComboBox.Enabled = false;
        //                }
        //                else
        //                {
        //                    radComboBox.Enabled = true;
        //                }
        //                break;
        //            case "DUONG_PHUONG_QUAN":

        //                DUONG_PHUONG_QUAN duong = (DUONG_PHUONG_QUAN)tableObject;
        //                string parram = string.Empty;
        //                parram = (!string.IsNullOrEmpty(duong.PhuongXaID.ToString()) ? duong.TinhThanhID.ToString() + ',' + duong.PhuongXaID.ToString() : duong.TinhThanhID.ToString() + ',' + duong.QuanHuyenID.ToString());
        //                cacheKey = CacheHelper.BuildKey("MST_" + tableName, parram);
        //                DUONG_PHUONG_QUAN[] listDuongPhuongQuan = CacheHelper.GetData<DUONG_PHUONG_QUAN[]>(cacheKey);
        //                if (listDuongPhuongQuan == null || listDuongPhuongQuan.Count() <= 0)
        //                {
        //                    listDuongPhuongQuan = MasterServiceClient.DUONG_PHUONG_QUAN_Lst(duong);
        //                    CacheHelper.SetData(cacheKey, listDuongPhuongQuan);
        //                }
        //                radComboBox.DataSource = listDuongPhuongQuan;
        //                radComboBox.DataValueField = "DuongID";
        //                radComboBox.DataTextField = "TenDuong";
        //                break;
        //            case "DM_LOAIGIAYTO":
        //                cacheKey = CacheHelper.BuildKey("MST_" + tableName, string.Empty);
        //                DM_LOAIGIAYTO[] listLoaiGiayTo = CacheHelper.GetData<DM_LOAIGIAYTO[]>(cacheKey);
        //                if (listLoaiGiayTo == null || listLoaiGiayTo.Count() <= 0)
        //                {
        //                    DM_LOAIGIAYTO loaiGiay = (DM_LOAIGIAYTO)tableObject;
        //                    loaiGiay.Used = true;
        //                    listLoaiGiayTo =  MasterServiceClient.DM_LOAIGIAYTO_Lst(loaiGiay);
        //                    CacheHelper.SetData(cacheKey, listLoaiGiayTo);
        //                }

        //                radComboBox.DataSource = listLoaiGiayTo;
        //                radComboBox.DataValueField = "LoaiGiayToID";
        //                radComboBox.DataTextField = "TenLoaiGiayTo";

        //                break;
        //        }
        //        radComboBox.DataBind();
        //        if (hasEmptyRow && radComboBox.Items.Count > 0)
        //        {
        //            radComboBox.Items.Insert(0, new RadComboBoxItem("---Chọn---", string.Empty));
        //        }
        //        if (!string.IsNullOrEmpty(selectValue))
        //            radComboBox.SelectedValue = selectValue;
        //    }
        //    catch(Exception ex)
        //    {

        //    }
        //    finally
        //    {
        //        if (MasterServiceClient != null && MasterServiceClient.State != System.ServiceModel.CommunicationState.Closed) MasterServiceClient.Close();
        //        if (masterXayDungService != null && masterXayDungService.State != System.ServiceModel.CommunicationState.Closed) masterXayDungService.Close();
        //    }
        //}
        #endregion
        #endregion

        #region <Danh sach Tinh Trang>
        public enum TinhTrangGiayPhep
        {
            TatCa=0,
            DangHoatDong =1,
            Huy=2,
            ThuHoi=3
        }
        public class TinhTrang
        {
            public int TinhTrangId { get; set; }
            public string TenTinhTrang { get; set; }
        }
        /// <summary>
        /// Load Danh sách tình trạng của giấy phép đăng ký kinh doanh
        /// </summary>
        /// <returns>List<TinhTrang></returns>
        public static List<TinhTrang> TinhTrangList()
        {
            List<TinhTrang> tinhTrangList = new List<TinhTrang>();
            tinhTrangList.Add(new TinhTrang { TinhTrangId = 0, TenTinhTrang = "Tất cả" });
            tinhTrangList.Add(new TinhTrang { TinhTrangId = 1, TenTinhTrang = "Đang hoạt động" });
            tinhTrangList.Add(new TinhTrang { TinhTrangId = 2, TenTinhTrang = "Hủy" });
            tinhTrangList.Add(new TinhTrang { TinhTrangId = 3, TenTinhTrang = "Thu hồi" });
            return tinhTrangList;
        }

        public static void BindTinhTrangList(RadComboBox radComboBox)
        {
            radComboBox.DataSource = TinhTrangList();
            radComboBox.DataValueField = "TinhTrangId";
            radComboBox.DataTextField = "TenTinhTrang";
            radComboBox.DataBind();
        }
        #endregion

        #region <Danh sach Mau In>
        public class MauIn
        {
            public int MauInId { get; set; }
            public string TenMauIn { get; set; }
        }

        public static List<MauIn> MauInList()
        {
            List<MauIn> mauInList = new List<MauIn>();
            mauInList.Add(new MauIn { MauInId = 1, TenMauIn = "Giấy chứng nhận không có điều kiện" });
            mauInList.Add(new MauIn { MauInId = 2, TenMauIn = "Giấy chứng nhận có điều kiện" });
            return mauInList;
        }

        public static void BindMauInList(RadComboBox radComboBox)
        {
            radComboBox.DataSource = MauInList();
            radComboBox.DataValueField = "MauInId";
            radComboBox.DataTextField = "TenMauIn";
            radComboBox.DataBind();
        }

        #endregion

        #region <Danh sách loại gợi ý>
        public enum LoaiGoiY
        {
            DonViTuVan = 0,
            GhiChu,
            GiayTo,
            KetLuan,
            DeXuat,
            DuongPho,
            QuyMo,
            GhiChuViTri,
            NoiDungFile,
            DonViThietKe,
            KetCau,
            GiayToPhapLySoHuu,
            GiayToPhapLySuDung,
            GiayToQuyenSuDungDat,
            GhiChuDiDoi,
            RanhGioiLoDatDiDoiDen,
            CoQuanCap,
            ChiGioiDuongDo,
            ChiGioiXayDung, 
            DonViThamDinh,
            SoKyHieuBanVe,
            MauSac,
            KyHieuThietKe
        }
        #endregion

        #region <Danh sách loại hồ sơ>
        public enum LoaiGiayPhep
        {
            CPXD_CTKTT = 1,
            CPXD_CTGDKTT,
            CPXD_CTGDTT,
            CPXD_CTN,
            CPXD_CTTT,
            CPXD_DA,
            CPXD_NO,
            CPDD
        }
        #endregion

        #region <Danh sach loại số>

        public enum LoaiSo
        {
            CapPhep = 1,
            GiaHan,
            DieuChinh,
            CapLai,
            Khac
        }

        #endregion

        #region <Functions>

        /// <summary>
        /// Kiểm tra và chuyển các giá trị truyền vào thành 1 ngày. Nếu các giá trị hợp lệ thì sẽ trả về theo ngày của giá trị, nếu không trả về null
        /// </summary>
        /// <param name="Year">Năm</param>
        /// <param name="Month">Tháng</param>
        /// <param name="Day">Ngày</param>
        /// <param name="Hour">Giờ</param>
        /// <param name="Minute">Phút</param>
        /// <param name="Second">Giây</param>
        /// <returns></returns>
        public static DateTime? DateFromInt(int? year, int? month, int? day, int? hour, int? minute, int? second)
        {
            try
            {
                DateTime result = new DateTime(year.Value, month.Value, day.Value, hour.Value, minute.Value, second.Value);
                return result;
            }
            catch
            {
                return null;
            }
        }

        /// <summary>
        /// Kiểm tra và chuyển các giá trị truyền vào thành 1 ngày. Nếu các giá trị hợp lệ thì sẽ trả về theo ngày của giá trị, nếu không trả về null
        /// </summary>
        /// <param name="Year">Năm</param>
        /// <param name="Month">Tháng</param>
        /// <param name="Day">Ngày</param>
        /// <returns></returns>
        public static DateTime? DateFromInt(int? year, int? month, int? day)
        {
            try
            {
                DateTime result = new DateTime(year.Value, month.Value, day.Value);
                return result;
            }
            catch
            {
                return null;
            }
        }

        /// <summary>
        /// Kiểm tra và chuyển các giá trị truyền vào thành 1 ngày. Nếu các giá trị hợp lệ thì sẽ trả về theo ngày của giá trị, nếu không trả về null
        /// </summary>
        /// <param name="Year">Năm</param>
        /// <param name="Month">Tháng</param>
        /// <param name="Day">Ngày</param>
        /// <returns></returns>
        public static DateTime? DateFromString(string strYear, string strMonth, string strDay)
        {
            try
            {
                int intYear; int intMonth; int intDay;
                
                if (int.TryParse(strYear, out intYear) && int.TryParse(strMonth,out intMonth) && int.TryParse(strDay,out intDay))
                {
                    DateTime result = new DateTime(intYear, intMonth, intDay);
                    return result;
                }
                return null;
            }
            catch
            {
                return null;
            }
        }

        public static Int32? ConvertStringToInt(string str)
        {
            try
            {
                return Int32.Parse(str);
            }
            catch
            {
                return null;
            }
        }
        #endregion

        #region <Show Message>
        /// <summary>
        /// Show message
        /// </summary>
        /// <param name="rwm">RadWindowManager hiện hành</param>
        /// <param name="message">Nội dung thông báo</param>
        
        public static void ShowMessageBox(RadWindowManager rwm, string message, string imgUrl = "", int width = 300, int height = 150)
        {
            try
            {
                if (!string.IsNullOrEmpty(imgUrl))
                    rwm.RadAlert(message, width, height, "Thông báo", "", imgUrl);
                else
                    rwm.RadAlert(message, width, height, "Thông báo", "");
            }
            catch (Exception ex)
            {
                log4net.Config.XmlConfigurator.Configure();
                log.Error(ex.Message);
            }
        }

        #endregion
        
        public double ConvertFromStringToDoubleWithNewFormat(string input = "")
        {
            try
            {
                if (string.IsNullOrEmpty(input.Trim()))
                {
                    return 0;
                }
                double value = 0;
                input = input.Replace(".", string.Empty);
                input = input.Trim().Replace(',', '.');
                if (double.TryParse(input, out value))
                {
                    return value;
                }
                else
                    return 0;
            }
            catch (Exception ex)
            {
                log4net.Config.XmlConfigurator.Configure();
                log.Error(ex.Message);
                return 0;
            }
        }

        public static string ConvertDoubleToString(double value = 0) 
        {
            try
            {
                string rs = string.Empty;

                if (value != null)
                {
                    rs = value.ToString("N3"); // 1,234.5

                    rs = rs.Replace(',', ' ');
                    rs = rs.Trim().Replace('.', ',');
                    rs = rs.Replace(' ', '.');
                }

                return rs;
            }
            catch (Exception ex)
            {
                log4net.Config.XmlConfigurator.Configure();
                log.Error(ex.Message);
                return string.Empty;
            }
        }

        public static string CheckTypeStringIsNullOrEmpty(object item)
        {
            if (item == null || item.ToString() == string.Empty) return string.Empty;
            return item.ToString();
        }
        public static string SplitTitle(string value, int length)
        {
            if (value == null || value.Trim().Length <= length)
                return value;

            var index = value.Trim().LastIndexOf(" ", StringComparison.Ordinal);

            while ((index + 3) > length)
                index = value.Substring(0, index).Trim().LastIndexOf(" ", StringComparison.Ordinal);

            if (index > 0)
                return value.Substring(0, index) + "...";

            return value.Substring(0, length - 3) + "...";
        }

        public static long? CheckTypeLongIsNullOrEmpty(object item)
        {
            if (item == null || item.ToString() == string.Empty) return null;
            return Convert.ToInt32(item.ToString());
        }
        public static int? CheckTypeIntIsNullOrEmpty(object item)
        {
            if (item == null || item.ToString() == string.Empty) return null;
            return Convert.ToInt16(item.ToString());
        }
        public static float? CheckTypeFloatIsNullOrEmpty(object item)
        {
            if (item == null || item.ToString() == string.Empty) return null;
            return Single.Parse(item.ToString());
        }
        public static DateTime? CheckTypeDateTimeIsNullOrEmpty(object item)
        {
            if (item == null || item.ToString() == string.Empty) return (DateTime?)null;
            return DateTime.ParseExact(item.ToString(), "dd/MM/yyyy", CultureInfo.InvariantCulture);
        }

        public static string ConvertStringToMoney(object item)
        {
            if (item == null || item.ToString() == string.Empty) return string.Empty;
            decimal x = decimal.Parse(item.ToString(), NumberStyles.Float);
            return string.Format("{0:##,##0}", x);
        }

        public static string FormatBirthDate(string date, string month, string year)
        {
            if (!string.IsNullOrEmpty(date) && !string.IsNullOrEmpty(month) && !string.IsNullOrEmpty(year))
            {
                return date + "/" + month + "/" + year;
            }

            if (!string.IsNullOrEmpty(month) && !string.IsNullOrEmpty(year))
            {
                return month + "/" + year;
            }

            if (!string.IsNullOrEmpty(year))
            {
                return year;
            }
            return string.Empty;
        }

        public static bool CheckValidationDateAndReturnNotify(ref string date, ref string month, ref string year, out string notify)
        {
            notify = string.Empty;

            if (string.IsNullOrEmpty(year))
            {
                notify = "Vui lòng nhập năm";
                return false;
            }

            //check năm 11900
            if (string.IsNullOrEmpty(month) && !string.IsNullOrEmpty(date))
            {
                notify = "Vui lòng nhập tháng";
                return false;
            }

            if (!string.IsNullOrEmpty(date) && !string.IsNullOrEmpty(month) &&
               !string.IsNullOrEmpty(year))
            {
                date = date.Length == 1 ? ("0" + date) : date;
                month = month.Length == 1 ? ("0" + month) : month;
                var strDate = year + "-" + month + "-" + date;
                DateTime temp;
                if (DateTime.TryParse(strDate, out temp))
                {
                    if (temp > DateTime.Now)
                    {
                        notify = "Bạn không được nhập ngày sinh lớn ngày hiện tại";
                        return false;
                    }
                }
                else
                {
                    notify = "Bạn nhập ngày tháng năm sinh không hợp lệ";
                    return false;
                }
            }
            if (string.IsNullOrEmpty(date) && !string.IsNullOrEmpty(month) && !string.IsNullOrEmpty(year))
            {
                if (Convert.ToInt32(month) > DateTime.Now.Month)
                {
                    notify = "Bạn nhập tháng phải nhỏ hơn tháng hiện tại";
                    return false;
                }
            }

            return true;

        }

        public static string CountDownloadFile(object param_File)
        {
            try
            {
                if (param_File == null) return "0";
                if (string.IsNullOrEmpty(param_File.ToString())) return "0";
                else
                {
                    Array numberCountArray = param_File.ToString().Split('|');
                    return numberCountArray.Length.ToString();
                }
            }
            catch (Exception ex)
            {
                log4net.Config.XmlConfigurator.Configure();
                log.Error(ex.Message);
                return "0";
            }

        }
    }
}