using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DotNetNuke;
using DotNetNuke.Common.Utilities;
using DotNetNuke.Security;
using DotNetNuke.Services.Exceptions;
using DotNetNuke.Services.Localization;
using DotNetNuke.Entities.Modules;
using DotNetNuke.Entities.Modules.Actions;
using DotNetNuke.Framework;
using DotNetNuke.Entities.Portals;
using Telerik.Web.UI;
using System.Data;
using System.Configuration;


namespace PhongHopKhongGiay.Schedule
{
    public partial class LichTV : PortalModuleBase
    {
        private static dynamic ttDangNhap;
        private Crypto crypto = new Crypto();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["USER_MASTER"] != null)
                {
                    string uM = Session["USER_MASTER"].ToString();
                    ttDangNhap = new System.Web.Script.Serialization.JavaScriptSerializer().Deserialize<dynamic>(uM);
                }
                string URL = Request.Url.AbsoluteUri;
                string Output = URL.Substring(0, URL.LastIndexOf("/") + 1);
                LichTVUrl.Value = Output + "DesktopModules/HanhChinhCong/PhongHopKhongGiay/PhongHopKhongGiay/Schedule/LichTV_9.aspx";
            }
        }
    }
}