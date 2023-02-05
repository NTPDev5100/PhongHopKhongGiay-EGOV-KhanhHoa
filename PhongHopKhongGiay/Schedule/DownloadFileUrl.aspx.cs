using System;
using System.Web.UI;
using DotNetNuke.Entities.Users;
using log4net;
using PhongHopKhongGiay;
using Telerik.Web.UI;

namespace PhongHopKhongGiay.Schedule
{
    public partial class DownloadFileUrl : DotNetNuke.Framework.PageBase
    {
        private static readonly ILog log = LogManager.GetLogger(typeof(DownloadFileUrl));
        private Common Common;
        private Crypto crypto;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
            Common = new Common();
            crypto = new Crypto();
            try
            {
                AlfrescoHelper ah = new AlfrescoHelper();
                string TenFile = string.Empty;
                if (Request.QueryString["FileID"] ==null && string.IsNullOrEmpty(Request.QueryString["FileID"].ToString()))
                {
                    Common.ShowMessageBox(rwmWindow, "Tên File không tồn tại!");
                    return;
                }

                TenFile = crypto.Decrypt(Request.QueryString["FileID"].ToString());
                var rs = ah.DownloadFileFromAlfrescoServer(Response, TenFile);
                if (!rs) Common.ShowMessageBox(rwmWindow, "File không tồn tại!");
            }
            catch (Exception ex)
            {
                log4net.Config.XmlConfigurator.Configure();
                log.Error(ex.Message);
                Common.ShowMessageBox(rwmWindow, "Lỗi tải file!");

            }
            
        }



    }
}