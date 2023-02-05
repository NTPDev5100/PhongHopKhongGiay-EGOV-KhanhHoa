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

namespace PhongHopKhongGiay.Schedule
{
    public partial class PheDuyet : DotNetNuke.Entities.Modules.PortalModuleBase
    {
        private static readonly ILog log = LogManager.GetLogger(typeof(PheDuyet));

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    //Response.Redirect(EditUrl(""));
                    //Response.Redirect(EditUrl("ThuKy"));
                    //Response.Redirect(EditUrl("ThanhPhanThamDu"));
                    Session["UserID"] = UserId;
                    Session["Guid"] = Guid.NewGuid();
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
