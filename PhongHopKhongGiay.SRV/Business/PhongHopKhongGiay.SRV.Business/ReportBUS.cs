using System;
using System.Data;
using log4net;
using Microsoft.Practices.EnterpriseLibrary.Data;
using Newtonsoft.Json;
using PhongHopKhongGiay.SRV.Data;

namespace PhongHopKhongGiay.SRV.Business
{
    public partial class ReportBUS : DataAccessComponent
    {
        protected static readonly ILog log = LogManager.GetLogger(typeof(ReportBUS));

        public string Get_DataReport(string ReportCode, int DonViID, object[] Params, out string table)
        {
            DataSet Data = null;
            DataTable dt = null;
            table = "";
            try
            {
                Database db = DatabaseFactory.CreateDatabase(CONNECTION_NAME);
                DataSet ds = db.ExecuteDataSet("sp_GetReportInfo", new object[] { ReportCode, DonViID });

                if (ds.Tables[0].Rows.Count == 1)
                {
                    dt = ds.Tables[0];
                    string ReportStore = ds.Tables[0].Rows[0]["ProcedureName"].ToString();
                    //Lay du lieu do vao Report!
                    Data = db.ExecuteDataSet(ReportStore, Params);
                }
                table = JsonConvert.SerializeObject(dt);
                return JsonConvert.SerializeObject(Data);
            }
            catch (Exception ex)
            {
                log4net.Config.XmlConfigurator.Configure();
                return "";
            }

        }
    }
}
