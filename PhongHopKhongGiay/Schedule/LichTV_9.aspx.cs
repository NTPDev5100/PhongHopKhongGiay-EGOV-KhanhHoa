using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using log4net;
using System.Web.UI.HtmlControls;
using PhongHopKhongGiay.LCTSRV;
using PhongHopKhongGiay.MasterService;

namespace PhongHopKhongGiay.Schedule
{
    public partial class LichTV_9 : System.Web.UI.Page
    {
        private LCTServiceClient client;
        private static readonly ILog log = LogManager.GetLogger(typeof(LichTV_9));
        private static dynamic ttDangNhap;
        private MasterServiceClient masterServiceClient;
        private Crypto crypto = new Crypto();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                //if (Request.QueryString["id"] != null)
                //{
                    hdDonViID.Value = "2";
                    //lblNgay.Text = "Hôm nay, ngày " + DateTime.Today.ToString("dd/MM/yyyy");
                    LoadLichHomNayLbl();
                    LoadLCTHomNay();
                    //LoadBackground();
                    //LoadLCTTuan();
                    LoadTenDonVi("2");
                //}

            }
        }

        private void LoadLCTHomNay()
        {
            client = new LCTServiceClient();
            masterServiceClient = new MasterServiceClient();
            try
            {
                if (Request.QueryString["id"] != null)
                {
                    hdDonViID.Value = crypto.Decrypt(Request.QueryString["id"].ToString());
                }
                long donViID = 0;
                long.TryParse(hdDonViID.Value, out donViID);
                //SlideLichCongTacSetting slideLichCongTacSetting = masterServiceClient.GetSlideLichCongTacSetting(donViID);
                SlideLichCongTacSetting slideLichCongTacSetting = masterServiceClient.GetSettingCauHinhLichCongTac(donViID);
                //scroll.Visible = false;
                //scroll2.Visible = true;
                LoadLichNgay(table2);
            }
            catch (Exception ex)
            {
                log4net.Config.XmlConfigurator.Configure();
                log.Error(ex.Message);
                client.Abort();
            }
            finally
            {
                client.Close();
                masterServiceClient.Close();
            }
        }
        private void LoadTenDonVi(string donViID)
        {
            client = new LCTServiceClient();
            masterServiceClient = new MasterServiceClient();
            try
            {
                SlideLichCongTacSetting slideLichCongTacSetting = masterServiceClient.GetSettingCauHinhLichCongTac(Int64.Parse(donViID));
                //ten don vi
                if (!string.IsNullOrEmpty(slideLichCongTacSetting.TitleBanner_TenDonVi))
                {
                    lbTitle1.Text = slideLichCongTacSetting.TitleBanner_TenDonVi.ToUpper();
                }
                else
                {
                    string tenDonVi = client.LICHCONGTAC_GETTENDONVI(Int64.Parse(donViID));
                    lbTitle1.Text = tenDonVi.ToUpper();
                }
                if (!string.IsNullOrEmpty(slideLichCongTacSetting.TitleBannerDonVi_Color))
                {
                    lbTitle1.Style.Add("color", slideLichCongTacSetting.TitleBannerDonVi_Color);
                }
                else
                {
                    lbTitle1.Style.Add("color", "#FFFFFF");
                }
                if (slideLichCongTacSetting.TitleBannerDonVi_FontSize >0 )
                {
                    lbTitle1.Style.Add("font-size", slideLichCongTacSetting.TitleBannerDonVi_FontSize.ToString() + "pt");
                }
                else
                {
                    lbTitle1.Style.Add("font-size", "25pt");
                }
                lbTitle1.Style.Add("font-weight", "700");
                lbTitle1.Style.Add("text-align", "center");
                lbTitle1.Style.Add("ftext-shadow", "0px 0 #ffffff, 0 1px #ffffff, 1px 0 #ffffff, 0 0px #ffffff");

                //noi dung

                if (!string.IsNullOrEmpty(slideLichCongTacSetting.TitleBanner_NoiDung))
                {
                    lbTitle2.Text = slideLichCongTacSetting.TitleBanner_NoiDung.ToUpper();
                }
                else
                {                  
                    lbTitle2.Text = "LỊCH HỌP & LỊCH CÔNG TÁC".ToUpper();
                }
                if (!string.IsNullOrEmpty(slideLichCongTacSetting.TitleBannerNoiDung_Color))
                {
                    lbTitle2.Style.Add("color", slideLichCongTacSetting.TitleBannerNoiDung_Color);
                }
                else
                {
                    lbTitle2.Style.Add("color", "#FFFFFF");
                }
                if (slideLichCongTacSetting.TitleBannerNoiDung_FontSize > 0)
                {
                    lbTitle2.Style.Add("font-size", slideLichCongTacSetting.TitleBannerNoiDung_FontSize.ToString() + "pt");
                }
                else
                {
                    lbTitle2.Style.Add("font-size", "21pt");
                }
                lbTitle2.Style.Add("font-weight", "700");
                lbTitle2.Style.Add("text-align", "center");
                lbTitle2.Style.Add("ftext-shadow", "0px 0 #ffffff, 0 1px #ffffff, 1px 0 #ffffff, 0 0px #ffffff");

                
            }
            catch (Exception ex)
            {
                log4net.Config.XmlConfigurator.Configure();
                log.Error(ex.Message);
                client.Abort();
            }
            finally
            {
                client.Close();
                masterServiceClient.Close();
            }
        }
        private void LoadLichNgay(HtmlTable ptable)
        {
            client = new LCTServiceClient();
            masterServiceClient = new MasterServiceClient();
            try
            {
                if (Request.QueryString["id"] != null)
                {
                    hdDonViID.Value = crypto.Decrypt(Request.QueryString["id"].ToString());
                }
                long donViID = 0;
                long.TryParse(hdDonViID.Value, out donViID);
                SlideLichCongTacSetting slideLichCongTacSetting = masterServiceClient.GetSettingCauHinhLichCongTac(donViID);
                //if (!string.IsNullOrEmpty(slideLichCongTacSetting.BannerBackgroundUrl))
                //{
                //    bannerLCT.Style.Add("background", "url(" + ResolveUrl(slideLichCongTacSetting.BannerBackgroundUrl) + ")");
                //}
                //else
                //{
                //    bannerLCT.Style.Add("background", "url(Image/TV/LichTV_01_1.jpg)");
                //}
                bannerLCT.Style.Add("background-size", "100%");
                bannerLCT.Style.Add("background-repeat", "no-repeat");
                
                List<LICHCONGTAC_TV> list = client.LICHCONGTAC_TV(DateTime.Now.ToString("dd/MM/yyyy"), "", donViID, 1);
                //List<LICHCONGTAC_TV> list1 = client.LICHCONGTAC_TV(DateTime.Now.ToString("dd/MM/yyyy"), "", donViID, 2);
                //if (list != null && list.Count > 0 && list1 != null && list1.Count > 0)
                //{
                //    DateTime ngayHop = Convert.ToDateTime(list.FirstOrDefault().Ngay);
                //    DateTime ngayLCT = Convert.ToDateTime(list1.FirstOrDefault().Ngay);
                //    if(ngayHop.Date == ngayLCT.Date || (ngayHop.Date == DateTime.Today.Date && ngayLCT < DateTime.Today.Date))
                //    {
                //        list = list1;
                //        // list.AddRange(list1);
                //    }
                //    //else if(ngayLCT.Date < ngayHop.Date)
                //    //{
                //    //    list = list1;
                //    //}
                //}
                //else
                //{
                //    list.AddRange(list1);
                //}
                //list = list.OrderByDescending(s => s.Ngay).ToList();
                ptable.Rows.Clear();
                foreach (LICHCONGTAC_TV item in list)
                {

                    DateTime timeS = Convert.ToDateTime(item.Ngay);
                    DateTime dateCur = Convert.ToDateTime(item.dNgay);


                    if (!string.IsNullOrEmpty(slideLichCongTacSetting.TitleTuDen_Color))
                    {
                        lblNgay.Style.Add("color", slideLichCongTacSetting.TitleTuDen_Color);
                    }
                    else
                    {
                        lblNgay.Style.Add("color", "#0033ff");
                    }

                    if (slideLichCongTacSetting.TitleTuDen_FontSize > 0)
                    {
                        lblNgay.Style.Add("font-size", slideLichCongTacSetting.TitleTuDen_FontSize.ToString() + "pt");
                    }
                    else
                    {
                        lblNgay.Style.Add("font-size", "20pt");
                    }

                    lblNgay.Style.Add("font-weight", "bold");
                    lblNgay.Style.Add("text-align", "center");

                    if (item.NgayHop == "Hôm nay" || timeS < DateTime.Today.Date)
                    {
                        lblNgay.Text = "Hôm nay, ngày " + DateTime.Today.ToString("dd/MM/yyyy");

                        DateTime timeE = timeS.AddMinutes(Convert.ToDouble(item.ThoiLuong));
                        System.Web.UI.HtmlControls.HtmlTableRow r = new System.Web.UI.HtmlControls.HtmlTableRow();
                        System.Web.UI.HtmlControls.HtmlTableCell cell = new System.Web.UI.HtmlControls.HtmlTableCell();
                        if (!string.IsNullOrEmpty(slideLichCongTacSetting.Time_Color))
                        {
                            cell.Style.Add("color", slideLichCongTacSetting.Time_Color);
                        }
                        else
                        {
                            cell.Style.Add("color", "#ce1126");
                        }

                        if (slideLichCongTacSetting.Time_FontSize > 0)
                        {
                            cell.Style.Add("font-size", slideLichCongTacSetting.Time_FontSize.ToString() + "pt");
                        }
                        else
                        {
                            cell.Style.Add("font-size", "30pt");
                        }
                        //cell.Style.Add("text-shadow", "-1px 0 black, 0 1px black, 1px 0 black, 0 -1px black");
                        cell.Style.Add("font-weight", "700");
                        //cell.InnerHtml = "<font style='text-decoration:underline'>" + timeS.Hour.ToString("D2") + ":" + timeS.Minute.ToString("D2") + " - " +
                        //        timeE.Hour.ToString("D2") + ":" + timeE.Minute.ToString("D2");
                        if (string.IsNullOrEmpty(item.GioHop))
                        {
                            if (item.ThoiLuong != "0")
                            {
                                cell.InnerHtml = timeS.ToString("dd/MM/yyyy HH:mm") + " - " + timeE.ToString("dd/MM/yyyy HH:mm");
                            }
                            else
                            {
                                cell.InnerHtml = timeS.ToString("dd/MM/yyyy HH:mm");
                            }
                        }
                        else
                        {
                            if (item.ThoiLuong != "0")
                            {
                                cell.InnerHtml = timeS.Hour.ToString("D2") + ":" + timeS.Minute.ToString("D2") + " - " +
                                        timeE.Hour.ToString("D2") + ":" + timeE.Minute.ToString("D2");
                            }
                            else
                            {
                                cell.InnerHtml = timeS.Hour.ToString("D2") + ":" + timeS.Minute.ToString("D2");
                            }
                        }
                        r.Cells.Add(cell);
                        ptable.Rows.Add(r);

                        System.Web.UI.HtmlControls.HtmlTableRow r2 = new System.Web.UI.HtmlControls.HtmlTableRow();
                        System.Web.UI.HtmlControls.HtmlTableCell cell2 = new System.Web.UI.HtmlControls.HtmlTableCell();
                        if (!string.IsNullOrEmpty(slideLichCongTacSetting.Title_Color))
                        {
                            cell2.Style.Add("color", slideLichCongTacSetting.Title_Color);
                        }
                        else
                        {
                            cell2.Style.Add("color", "#014a26");
                        }
                        cell2.Style.Add("text-align", "left");

                        if (slideLichCongTacSetting.Title_FontSize > 0)
                        {
                            cell2.Style.Add("font-size", slideLichCongTacSetting.Title_FontSize.ToString() + "pt");
                        }
                        else
                        {
                            cell2.Style.Add("font-size", "30pt");
                        }
                        cell2.Style.Add("text-align", "justify");
                        cell2.Style.Add("font-weight", "400");
                        //cell2.Style.Add("text-shadow", "-1px 0 black, 0 1px black, 1px 0 black, 0 -1px black");
                        cell2.InnerText = item.NoiDung.ToString();
                        r2.Cells.Add(cell2);
                        ptable.Rows.Add(r2);

                        //System.Web.UI.HtmlControls.HtmlTableRow r3 = new System.Web.UI.HtmlControls.HtmlTableRow();
                        //System.Web.UI.HtmlControls.HtmlTableCell cell3 = new System.Web.UI.HtmlControls.HtmlTableCell();
                        //cell3.Style.Add("color", "#130C58");
                        //cell3.Style.Add("text-align", "center");
                        //cell3.Style.Add("font-size", "18pt");
                        //cell3.Style.Add("font-style", "italic");
                        //cell3.InnerText = "------oOo------";
                        //r3.Cells.Add(cell3);
                        //table.Rows.Add(r3);

                        System.Web.UI.HtmlControls.HtmlTableRow r4 = new System.Web.UI.HtmlControls.HtmlTableRow();
                        System.Web.UI.HtmlControls.HtmlTableCell cell4 = new System.Web.UI.HtmlControls.HtmlTableCell();
                        //
                        if (!string.IsNullOrEmpty(slideLichCongTacSetting.Presenter_Color))
                        {
                            cell4.Style.Add("color", slideLichCongTacSetting.Presenter_Color);
                        }
                        else
                        {
                            cell4.Style.Add("color", "#ce1126");
                        }
                        cell4.Style.Add("text-align", "left");
                        //
                        if (slideLichCongTacSetting.Presenter_FontSize > 0)
                        {
                            cell4.Style.Add("font-size", slideLichCongTacSetting.Presenter_FontSize.ToString() + "pt");
                        }
                        else
                        {
                            cell4.Style.Add("font-size", "30pt");
                        }
                        cell4.Style.Add("font-weight", "300");
                        //cell4.Style.Add("text-shadow", "-1px 0 black, 0 1px black, 1px 0 black, 0 -1px black");
                        if (!string.IsNullOrWhiteSpace(item.ChuTri))
                        {
                            if (!string.IsNullOrWhiteSpace(item.TenChucVu))
                            {
                                cell4.InnerHtml = "   - Chủ trì: <b>" + item.ChuTri.ToString() + " - " + item.TenChucVu.ToString() + "</b>";
                            }
                            else
                            {
                                cell4.InnerHtml = "   - Chủ trì: <b>" + item.ChuTri.ToString() + "</b>";
                            }

                            r4.Cells.Add(cell4);
                            ptable.Rows.Add(r4);
                        }

                        //lanh dao

                        System.Web.UI.HtmlControls.HtmlTableRow r7 = new System.Web.UI.HtmlControls.HtmlTableRow();
                        System.Web.UI.HtmlControls.HtmlTableCell cell7 = new System.Web.UI.HtmlControls.HtmlTableCell();

                        if (slideLichCongTacSetting.AnHienTenLanhDao == true)
                        {
                            if (!string.IsNullOrEmpty(slideLichCongTacSetting.LanhDaoThamGia_Color))
                            {
                                cell7.Style.Add("color", slideLichCongTacSetting.LanhDaoThamGia_Color);
                            }
                            else
                            {
                                cell7.Style.Add("color", "#ce1126");
                            }
                            cell7.Style.Add("text-align", "left");
                            //
                            if (slideLichCongTacSetting.LanhDaoThamGia_FontSize > 0)
                            {
                                cell7.Style.Add("font-size", slideLichCongTacSetting.LanhDaoThamGia_FontSize.ToString() + "pt");
                            }
                            else
                            {
                                cell7.Style.Add("font-size", "30pt");
                            }
                            cell7.Style.Add("font-weight", "300");
                            cell7.InnerHtml = "   - Lãnh đạo tham gia: <b>";
                            var dsLANHDAOTHAMGIA = client.LANHDAOTHAMGIA_GetByLichCongTacID(item.ID, false);
                            string lanhDaoThamGia = string.Empty;
                            if (dsLANHDAOTHAMGIA.Count > 0)
                            {
                                var hoTenLDTG = dsLANHDAOTHAMGIA.Select(m => m.HoTen).ToArray();
                                lanhDaoThamGia = string.Join(", ", hoTenLDTG);
                            }
                            var dsLANHDAOVANPHONG = client.LANHDAOTHAMGIA_GetByLichCongTacID(item.ID, true);
                            if (dsLANHDAOVANPHONG.Count > 0)
                            {
                                var hoTenLDVP = dsLANHDAOVANPHONG.Select(m => m.HoTen).ToArray();
                                lanhDaoThamGia += ", " + string.Join(", ", hoTenLDVP);
                            }
                            cell7.InnerHtml += lanhDaoThamGia;
                            cell7.InnerHtml += "</b>";
                            if (cell7.InnerHtml != "   - Lãnh đạo tham gia: <b></b>")
                            {
                                r7.Cells.Add(cell7);
                                ptable.Rows.Add(r7);
                            }
                        }

                        //thanh vien

                        System.Web.UI.HtmlControls.HtmlTableRow r8 = new System.Web.UI.HtmlControls.HtmlTableRow();
                        System.Web.UI.HtmlControls.HtmlTableCell cell8 = new System.Web.UI.HtmlControls.HtmlTableCell();

                        if (slideLichCongTacSetting.AnHienTenThanhVien == true)
                        {
                            if (!string.IsNullOrEmpty(slideLichCongTacSetting.ThanhPhanThamDu_Color))
                            {
                                cell8.Style.Add("color", slideLichCongTacSetting.ThanhPhanThamDu_Color);
                            }
                            else
                            {
                                cell8.Style.Add("color", "#ce1126");
                            }
                            cell8.Style.Add("text-align", "left");
                            //
                            if (slideLichCongTacSetting.ThanhPhanThamDu_FontSize > 0)
                            {
                                cell8.Style.Add("font-size", slideLichCongTacSetting.ThanhPhanThamDu_FontSize.ToString() + "pt");
                            }
                            else
                            {
                                cell8.Style.Add("font-size", "16pt");
                            }
                            cell8.Style.Add("font-weight", "300");

                            cell8.InnerHtml = "   - Thành phần tham dự: <b>" + item.LanhDaoPhong.ToString() + "</b>";
                            if (cell8.InnerHtml != "   - Thành phần tham dự: <b></b>")
                            {
                                r8.Cells.Add(cell8);
                                ptable.Rows.Add(r8);
                            }
                        }

                        System.Web.UI.HtmlControls.HtmlTableRow r5 = new System.Web.UI.HtmlControls.HtmlTableRow();
                        System.Web.UI.HtmlControls.HtmlTableCell cell5 = new System.Web.UI.HtmlControls.HtmlTableCell();
                        if (!string.IsNullOrEmpty(slideLichCongTacSetting.Address_Color))
                        {
                            cell5.Style.Add("color", slideLichCongTacSetting.Address_Color);
                        }
                        else
                        {
                            cell5.Style.Add("color", "#ce1126");
                        }
                        cell5.Style.Add("text-align", "left");
                        if (slideLichCongTacSetting.Address_FontSize > 0)
                        {
                            cell5.Style.Add("font-size", slideLichCongTacSetting.Address_FontSize.ToString() + "pt");
                        }
                        else
                        {
                            cell5.Style.Add("font-size", "30pt");
                        }
                        cell5.Style.Add("font-weight", "300");
                        //cell5.Style.Add("text-shadow", "-1px 0 black, 0 1px black, 1px 0 black, 0 -1px black");
                        cell5.InnerHtml = "   - Địa điểm: <b>" + item.DiaDiem.ToString() + "</b>";
                        r5.Cells.Add(cell5);
                        ptable.Rows.Add(r5);

                        System.Web.UI.HtmlControls.HtmlTableRow r6 = new System.Web.UI.HtmlControls.HtmlTableRow();
                        System.Web.UI.HtmlControls.HtmlTableCell cell6 = new System.Web.UI.HtmlControls.HtmlTableCell();
                        cell6.InnerHtml = "<hr />";
                        r6.Cells.Add(cell6);
                        ptable.Rows.Add(r6);
                    }
                    else
                    {
                        lblNgay.Text = "Hôm nay, ngày " + DateTime.Today.ToString("dd/MM/yyyy");
                    }
                }

            }
            catch (Exception ex)
            {
                log4net.Config.XmlConfigurator.Configure();
                log.Error(ex.Message);
                client.Abort();
            }
            finally
            {
                client.Close();
                masterServiceClient.Close();
            }
        }

        private void LoadLCTTuan()
        {
            client = new LCTServiceClient();
            masterServiceClient = new MasterServiceClient();
            try
            {
                if (Request.QueryString["id"] != null)
                {
                    hdDonViID.Value = crypto.Decrypt(Request.QueryString["id"].ToString());
                }
                long donViID = 0;
                long.TryParse(hdDonViID.Value, out donViID);
                SlideLichCongTacSetting slideLichCongTacSetting = masterServiceClient.GetSettingCauHinhLichCongTac(donViID);
                //string connstr = ConfigurationManager.AppSettings["LCT"];
                //hdbackgroundNew.Value = "url(" + ResolveUrl(slideLichCongTacSetting.BackgroundUrl) + ")";
                marqueeTuan.Value = slideLichCongTacSetting.Interval_Week.ToString();
                marqueeNgay.Value = slideLichCongTacSetting.Interval.ToString();
                Week week = Week.GetWeekInYear(DateTime.Today, DateTime.Now.Year);
                week = Week.GetDayOfWeek(Convert.ToInt32(week.CurrentWeekOfYear), DateTime.Today.Year);
                //lblTuan.Text = "Tuần " + (week.CurrentWeekOfYear).ToString() + ": " + week.StartDay.ToString("dd/MM/yyyy") + " - " + week.EndDay.ToString("dd/MM/yyyy");

                if (!string.IsNullOrEmpty(slideLichCongTacSetting.HomNayTime_Color_Week))
                {
                    lblTuan.Style.Add("color", slideLichCongTacSetting.HomNayTime_Color_Week);
                }
                else
                {
                    lblTuan.Style.Add("color", "#0033ff");
                }

                if (slideLichCongTacSetting.HomNayTime_FontSize_Week > 0)
                {
                    lblTuan.Style.Add("font-size", slideLichCongTacSetting.HomNayTime_FontSize_Week.ToString() + "pt");
                }
                else
                {
                    lblTuan.Style.Add("font-size", "18pt");
                }

                lblTuan.Style.Add("font-weight", "bold");
                lblTuan.Style.Add("text-align", "center");          

                lblTuan.Text = "Từ " + week.StartDay.ToString("dd/MM/yyyy") + " đến " + week.EndDay.AddDays(4).ToString("dd/MM/yyyy");
                //DataSet ds = DataProvider.Instance(connstr).ExecuteQueryStoreProc("sp_Get_LCT_BOOK_TV", Utility.getParams(DateTime.Now.ToString("dd/MM/yyyy"),DateTime.Now.AddDays(1).ToString("dd/MM/yyyy")));
                List<LICHCONGTAC_TV> list = client.LICHCONGTAC_TV(DateTime.Now.ToString("dd/MM/yyyy"), week.EndDay.AddDays(4).ToString("dd/MM/yyyy"), donViID, 1);
                List<LICHCONGTAC_TV> list1 = client.LICHCONGTAC_TV(DateTime.Now.ToString("dd/MM/yyyy"), week.EndDay.AddDays(4).ToString("dd/MM/yyyy"), donViID, 2);
                list.AddRange(list1);
                //list = list.OrderBy(s => s.Ngay).ToList();
                table1.Rows.Clear();
                foreach (LICHCONGTAC_TV item in list)
                {

                    DateTime timeS = Convert.ToDateTime(item.Ngay);
                    DateTime dateCur = Convert.ToDateTime(item.dNgay);

                    DateTime timeE = timeS.AddMinutes(Convert.ToDouble(item.ThoiLuong));
                    //srcdr["ThoiGian"] = timeS.Hour.ToString("D2") + ":" + timeS.Minute.ToString("D2") + "-" +
                    //    timeE.Hour.ToString("D2") + ":" + timeE.Minute.ToString("D2");
                    System.Web.UI.HtmlControls.HtmlTableRow r = new System.Web.UI.HtmlControls.HtmlTableRow();
                    System.Web.UI.HtmlControls.HtmlTableCell cell = new System.Web.UI.HtmlControls.HtmlTableCell();
                    if (!string.IsNullOrEmpty(slideLichCongTacSetting.Time_Color_Week))
                    {
                        cell.Style.Add("color", slideLichCongTacSetting.Time_Color_Week);
                    }
                    else
                    {
                        cell.Style.Add("color", "#0033ff");
                    }

                    if (slideLichCongTacSetting.Time_FontSize_Week > 0)
                    {
                        cell.Style.Add("font-size", slideLichCongTacSetting.Time_FontSize_Week.ToString() + "pt");
                    }
                    else
                    {
                        cell.Style.Add("font-size", "16pt");
                    }
                    //cell.Style.Add("text-shadow", "-1px 0 black, 0 1px black, 1px 0 black, 0 -1px black");
                    cell.Style.Add("font-weight", "600");
                    if (string.IsNullOrEmpty(item.GioHop))
                    {
                        if (item.ThoiLuong != "0")
                        {
                            cell.InnerHtml = timeS.ToString("dd/MM/yyyy HH:mm") + " - " + timeE.ToString("dd/MM/yyyy HH:mm");
                        }
                        else
                        {
                            cell.InnerHtml = timeS.ToString("dd/MM/yyyy HH:mm");
                        }
                    }
                    else
                    {
                        if (item.ThoiLuong != "0")
                        {
                            cell.InnerHtml = timeS.Hour.ToString("D2") + ":" + timeS.Minute.ToString("D2") + " - " +
                                timeE.Hour.ToString("D2") + ":" + timeE.Minute.ToString("D2") + "</font>" + " (" + DayOfWeek(dateCur) + ", ngày " + dateCur.Day + "/" + dateCur.Month + "/" + dateCur.Year + ")";
                        }
                        else
                        {
                            cell.InnerHtml = timeS.Hour.ToString("D2") + ":" + timeS.Minute.ToString("D2") + "</font>" + " (" + DayOfWeek(dateCur) + ", ngày " + dateCur.Day + "/" + dateCur.Month + "/" + dateCur.Year + ")";
                        }
                    }
                    r.Cells.Add(cell);
                    table1.Rows.Add(r);

                    System.Web.UI.HtmlControls.HtmlTableRow r2 = new System.Web.UI.HtmlControls.HtmlTableRow();
                    System.Web.UI.HtmlControls.HtmlTableCell cell2 = new System.Web.UI.HtmlControls.HtmlTableCell();
                    if (!string.IsNullOrEmpty(slideLichCongTacSetting.NguoiChuTri_Color_Week))
                    {
                        cell2.Style.Add("color", slideLichCongTacSetting.NguoiChuTri_Color_Week);
                    }
                    else
                    {
                        cell2.Style.Add("color", "#420202");
                    }
                    if (slideLichCongTacSetting.NguoiChuTri_FontSize_Week > 0)
                    {
                        cell2.Style.Add("font-size", slideLichCongTacSetting.NguoiChuTri_FontSize_Week.ToString() + "pt");
                    }
                    else
                    {
                        cell2.Style.Add("font-size", "16pt");
                    }
                    cell2.Style.Add("text-align", "justify");
                    cell2.Style.Add("font-weight", "400");
                    //cell2.Style.Add("text-shadow", "-1px 0 black, 0 1px black, 1px 0 black, 0 -1px black");
                    //cell2.InnerText = item.NoiDung.ToString()
                    //    + (!string.IsNullOrEmpty(item.DiaDiem) ? " tại " + item.DiaDiem.ToLower().ToString() :"")
                    //    + (!string.IsNullOrEmpty(item.ChuTri) ? " (" + item.ChuTri.ToString() + ")" : "");
                    if (!string.IsNullOrWhiteSpace(item.ChuTri))
                    {
                        if (string.IsNullOrWhiteSpace(item.TenChucVu))
                        {
                            cell2.InnerHtml = "   - Chủ trì: <b>" + item.ChuTri.ToString() + "<b>";
                        }
                        else
                        {
                            cell2.InnerHtml = "   - Chủ trì: <b>" + item.ChuTri.ToString() + " - " + item.TenChucVu.ToString() + "<b>";
                        }


                        r2.Cells.Add(cell2);
                        table1.Rows.Add(r2);
                    }
                    //lanh dao tuan

                    System.Web.UI.HtmlControls.HtmlTableRow r7 = new System.Web.UI.HtmlControls.HtmlTableRow();
                    System.Web.UI.HtmlControls.HtmlTableCell cell7 = new System.Web.UI.HtmlControls.HtmlTableCell();

                    if (slideLichCongTacSetting.AnHienTenLanhDao == true)
                    {
                        //cell7.Style.Add("color", "#420202");
                        //cell7.Style.Add("text-align", "justify");
                        //cell7.Style.Add("font-size", "16pt");
                        //cell7.Style.Add("font-weight", "400");
                        if (!string.IsNullOrEmpty(slideLichCongTacSetting.LanhDaoThamGia_Color_Week))
                        {
                            cell7.Style.Add("color", slideLichCongTacSetting.LanhDaoThamGia_Color_Week);
                        }
                        else
                        {
                            cell7.Style.Add("color", "#420202");
                        }
                        cell7.Style.Add("text-align", "justify");
                        //
                        if (slideLichCongTacSetting.LanhDaoThamGia_FontSize_Week > 0)
                        {
                            cell7.Style.Add("font-size", slideLichCongTacSetting.LanhDaoThamGia_FontSize_Week.ToString() + "pt");
                        }
                        else
                        {
                            cell7.Style.Add("font-size", "16pt");
                        }
                        cell7.Style.Add("font-weight", "400");
                        cell7.InnerHtml = "   - Lãnh đạo tham gia: <b>";
                        var dsLANHDAOTHAMGIA = client.LANHDAOTHAMGIA_GetByLichCongTacID(item.ID, false);
                        string lanhDaoThamGia = string.Empty;
                        if (dsLANHDAOTHAMGIA.Count > 0)
                        {
                            var hoTenLanhDaoThamGiaArr = dsLANHDAOTHAMGIA.Select(m => m.HoTen).ToArray();
                            lanhDaoThamGia = string.Join(", ", hoTenLanhDaoThamGiaArr);
                        }
                        var dsLANHDAOVANPHONG = client.LANHDAOTHAMGIA_GetByLichCongTacID(item.ID, true);
                        if (dsLANHDAOVANPHONG.Count > 0)
                        {
                            var hoTenVanPhongArr = dsLANHDAOVANPHONG.Select(m => m.HoTen).ToArray();
                            lanhDaoThamGia += ", " + string.Join(", ", hoTenVanPhongArr);
                        }
                        cell7.InnerHtml += lanhDaoThamGia;
                        cell7.InnerHtml += "</b>";
                        if (cell7.InnerHtml != "   - Lãnh đạo tham gia: <b></b>")
                        {
                            r7.Cells.Add(cell7);
                            table1.Rows.Add(r7);
                        }
                    }

                    //thanh vien tuan

                    System.Web.UI.HtmlControls.HtmlTableRow r8 = new System.Web.UI.HtmlControls.HtmlTableRow();
                    System.Web.UI.HtmlControls.HtmlTableCell cell8 = new System.Web.UI.HtmlControls.HtmlTableCell();

                    if (slideLichCongTacSetting.AnHienTenThanhVien == true)
                    {
                        if (!string.IsNullOrEmpty(slideLichCongTacSetting.ThanhPhanThamDu_Color_Week))
                        {
                            cell8.Style.Add("color", slideLichCongTacSetting.ThanhPhanThamDu_Color_Week);
                        }
                        else
                        {
                            cell8.Style.Add("color", "#420202");
                        }
                        cell8.Style.Add("text-align", "justify");
                        //
                        if (slideLichCongTacSetting.ThanhPhanThamDu_FontSize_Week > 0)
                        {
                            cell8.Style.Add("font-size", slideLichCongTacSetting.ThanhPhanThamDu_FontSize_Week.ToString() + "pt");
                        }
                        else
                        {
                            cell8.Style.Add("font-size", "16pt");
                        }
                        cell8.Style.Add("font-weight", "400");

                        cell8.InnerHtml = "   - Thành phần tham dự: <b>" + item.LanhDaoPhong.ToString() + "</b>";
                        if (cell8.InnerHtml != "   - Thành phần tham dự: <b></b>")
                        {
                            r8.Cells.Add(cell8);
                            table1.Rows.Add(r8);
                        }
                    }

                    System.Web.UI.HtmlControls.HtmlTableRow r3 = new System.Web.UI.HtmlControls.HtmlTableRow();
                    System.Web.UI.HtmlControls.HtmlTableCell cell3 = new System.Web.UI.HtmlControls.HtmlTableCell();
                    if (!string.IsNullOrEmpty(slideLichCongTacSetting.Content_Color_Week))
                    {
                        cell3.Style.Add("color", slideLichCongTacSetting.Content_Color_Week);
                    }
                    else
                    {
                        cell3.Style.Add("color", "#420202");
                    }
                    if (slideLichCongTacSetting.Content_FontSize_Week > 0)
                    {
                        cell3.Style.Add("font-size", slideLichCongTacSetting.Content_FontSize_Week.ToString() + "pt");
                    }
                    else
                    {
                        cell3.Style.Add("font-size", "16pt");
                    }
                    cell3.Style.Add("text-align", "justify");
                    cell3.Style.Add("font-weight", "400");
                    //cell2.Style.Add("text-shadow", "-1px 0 black, 0 1px black, 1px 0 black, 0 -1px black");
                    //cell2.InnerText = item.NoiDung.ToString()
                    //    + (!string.IsNullOrEmpty(item.DiaDiem) ? " tại " + item.DiaDiem.ToLower().ToString() :"")
                    //    + (!string.IsNullOrEmpty(item.ChuTri) ? " (" + item.ChuTri.ToString() + ")" : "");

                    if (!string.IsNullOrWhiteSpace(item.DiaDiem))
                    {
                        cell3.InnerHtml = "   - Nội dung: " + item.NoiDung.ToString() + " tại " + item.DiaDiem.ToString() ;
                    }
                    else
                    {
                        cell3.InnerHtml = "   - Nội dung: " + item.NoiDung.ToString() ;
                    }

                    r3.Cells.Add(cell3);
                    table1.Rows.Add(r3);

                    System.Web.UI.HtmlControls.HtmlTableRow r9 = new System.Web.UI.HtmlControls.HtmlTableRow();
                    System.Web.UI.HtmlControls.HtmlTableCell cell9 = new System.Web.UI.HtmlControls.HtmlTableCell();
                    cell9.InnerHtml = "<br />";


                    r9.Cells.Add(cell9);
                    table1.Rows.Add(r9);
                }
            }
            catch (Exception ex)
            {
                log4net.Config.XmlConfigurator.Configure();
                log.Error(ex.Message);
                client.Abort();
            }
            finally
            {
                client.Close();
                masterServiceClient.Close();
            }
        }

        private void LoadLichHomNayLbl()
        {
            //lblLichHomNay.Text = "NGÀY " + DateTime.Now.Day + " THÁNG " + DateTime.Now.Month + " NĂM " + DateTime.Now.Year;
            lblLichHomNay.Text = "LỊCH CÔNG TÁC";
            masterServiceClient = new MasterServiceClient();
            try
            {
                if (Request.QueryString["id"] != null)
                {
                    hdDonViID.Value = crypto.Decrypt(Request.QueryString["id"].ToString());
                }
                long donViID = 0;
                long.TryParse(hdDonViID.Value, out donViID);
                //List<VoDonViSearch> dv = masterServiceClient.GetDonViById_Lst(donViID);
                //if (dv != null && dv.Count > 0)
                //{
                //    lblDonVi.Text = dv.FirstOrDefault().TenDonVi.ToUpper();
                //}
            }
            catch (Exception ex)
            {
                log4net.Config.XmlConfigurator.Configure();
                log.Error(ex.Message);
                client.Abort();
            }
            finally
            {
                masterServiceClient.Close();
            }

        }

        public void Timer1_Tick(object sender, EventArgs e)
        {
            LoadLCTHomNay();
            //LoadLCTTuan();
            //LoadBackground();
        }

        private void LoadBackground()
        {
            client = new LCTServiceClient();
            masterServiceClient = new MasterServiceClient();
            try
            {
                if (Request.QueryString["id"] != null)
                {
                    hdDonViID.Value = crypto.Decrypt(Request.QueryString["id"].ToString());
                }
                long donViID = 0;
                long.TryParse(hdDonViID.Value, out donViID);
                SlideLichCongTacSetting slideLichCongTacSetting = masterServiceClient.GetSettingCauHinhLichCongTac(donViID);
                //string imgUrl_body = ResolveUrl("~/DesktopModules/QuangNinh/DungChung/DungChung.GUI/HeThong/Files/Upload/Setting/635611464085413141.jpg");
                string imgUrl_body = ResolveUrl(slideLichCongTacSetting.BackgroundUrl);
                hdbackgroundCurrent.Value = "url(" + imgUrl_body + ")";
                form1.Style.Add("background", "url(" + imgUrl_body + ")");
                form1.Style.Add("background-size", "100% 100%");
                //marquee.Attributes.Add("scrollamount", slideLichCongTacSetting.Interval.ToString());
                //marquee1.Attributes.Add("scrollamount", slideLichCongTacSetting.Interval_Week.ToString());
                marqueeChild.Attributes["style"] = "animation: marquee " + slideLichCongTacSetting.Interval_Week.ToString() + "s linear infinite";
                marqueeChild1.Attributes["style"] = "animation: marquee " + slideLichCongTacSetting.Interval.ToString() + "s linear infinite";
            }
            catch (Exception ex)
            {
                log4net.Config.XmlConfigurator.Configure();
                log.Error(ex.Message);
                client.Abort();
            }
            finally
            {
                client.Close();
                masterServiceClient.Close();
            }
        }

        private string DayOfWeek(DateTime date)
        {
            switch (date.DayOfWeek)
            {
                case System.DayOfWeek.Sunday:
                    return "Chủ nhật";
                case System.DayOfWeek.Monday:
                    return "Thứ 2";
                case System.DayOfWeek.Tuesday:
                    return "Thứ 3";
                case System.DayOfWeek.Wednesday:
                    return "Thứ 4";
                case System.DayOfWeek.Thursday:
                    return "Thứ 5";
                case System.DayOfWeek.Friday:
                    return "Thứ 6";
                case System.DayOfWeek.Saturday:
                    return "Thứ 7";
            }
            return "";
        }
    }
}