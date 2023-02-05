using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.ComponentModel;
using Newtonsoft.Json;
using System.Web.Services;
using log4net;
using log4net.Config;
using PhongHopKhongGiay.PhongHopKhongGiayService;
using System.Configuration;

namespace PhongHopKhongGiay.Schedule
{
    public partial class ChuyenTrang : DotNetNuke.Entities.Modules.PortalModuleBase
    {
        private static readonly ILog log = LogManager.GetLogger(typeof(ChuyenTrang));

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    //Response.Redirect(EditUrl(""));
                    //Response.Redirect(EditUrl("ThuKy"));
                    //Response.Redirect(EditUrl("ThanhPhanThamDu"));
                    //Response.Redirect(EditUrl("TaoLich"));
                    //Response.Redirect(EditUrl("ChuanBi"));
                    //Response.Redirect(EditUrl("QuanLy"));
                    //Response.Redirect(EditUrl("PheDuyet"));
                    Session["UserID"] = UserId;
                    Session["Guid"] = Guid.NewGuid();
                    using (PhongHopKhongGiayServiceClient service = new PhongHopKhongGiayServiceClient())
                    {
                        var Data = service.LH_CheckRoleByUserID(UserId);
                        if (Data.Tables.Count >0 )
                        {
                            var Key = Data.Tables[0].Rows[0]["KeyWords"].ToString();
                            switch (Key)
                            {
                                case "QuanLyLichHop":
                                    Response.Redirect(ConfigurationManager.AppSettings["QuanLyLichHop"]);
                                    break;
                                case "ChuToa":
                                    Response.Redirect(ConfigurationManager.AppSettings["ChuToa"]);
                                    break;
                                case "ThanhPhanThamDu":
                                    Response.Redirect(ConfigurationManager.AppSettings["ThanhPhanThamDu"]);
                                    break;
                                case "ChuanBi":
                                    Response.Redirect(ConfigurationManager.AppSettings["ChuanBi"]);
                                    break;
                                case "TaoLich":
                                    Response.Redirect(ConfigurationManager.AppSettings["TaoLich"]);
                                    break;
                                case "ThuKy":
                                    Response.Redirect(ConfigurationManager.AppSettings["ThuKy"]);
                                    break;
                                case "PheDuyet":
                                    Response.Redirect(ConfigurationManager.AppSettings["PheDuyet"]);
                                    break;
                                case "PhatHanh":
                                    Response.Redirect(ConfigurationManager.AppSettings["Phathanh"]);
                                    break;
                                case "LichHienThi":
                                    Response.Redirect(ConfigurationManager.AppSettings["LichHienThi"]);
                                    break;
                                default:
                                    // code block
                                    break;
                            }
                        }
                    }
                    //data.ListDanhSachTaiLieu = JsonConvert.SerializeObject(DataSet_DanhSachTaiLieuByLichHopID.Tables[0]);
                }
            }
            catch (Exception ex)
            {
                XmlConfigurator.Configure();
                log.Error("Lỗi hàm page load " + ex.Message);
            }
        }


    }
}
