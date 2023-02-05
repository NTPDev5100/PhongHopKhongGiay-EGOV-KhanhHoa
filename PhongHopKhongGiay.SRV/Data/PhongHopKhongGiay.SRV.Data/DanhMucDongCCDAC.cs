using log4net;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PhongHopKhongGiay.SRV.Data
{
  public  class DanhMucDongCCDAC : DataAccessComponent
    {
        protected static readonly ILog log = LogManager.GetLogger(typeof(DanhMucDongCCDAC));
        #region Danh muc dong
        public string ThemDM(string strStoreProc, string strConnectionString, params Object[] arrParams)
        {
            try
            {
                DatabaseProviderFactory dbFactory = new DatabaseProviderFactory();
                Database db = dbFactory.Create(strConnectionString);
                return (string)db.ExecuteScalar(strStoreProc, arrParams);
            }
            catch (Exception ex)
            {
                log4net.Config.XmlConfigurator.Configure();
                log.Error(ex.Message);
                return "";
            }
        }

        public string CapNhatDM(string strStoreProc, string strConnectionString, params Object[] arrParams)
        {
            try
            {
                DatabaseProviderFactory dbFactory = new DatabaseProviderFactory();
                Database db = dbFactory.Create(strConnectionString);
                return (string)db.ExecuteScalar(strStoreProc, arrParams);
            }
            catch (Exception ex)
            {
                log4net.Config.XmlConfigurator.Configure();
                log.Error(ex.Message);
                return null;
            }
        }

        public int XoaDM(string strStoreProc, string strConnectionString, params Object[] arrParams)
        {
            try
            {
                DatabaseProviderFactory dbFactory = new DatabaseProviderFactory();
                Database db = dbFactory.Create(strConnectionString);
                return int.Parse(db.ExecuteScalar(strStoreProc, arrParams).ToString());
            }
            catch (Exception ex)
            {
                log4net.Config.XmlConfigurator.Configure();
                log.Error(ex.Message);
                return 0;
            }
        }

        public DataSet LocDM(string strStoreProc, string strConnectionString, params Object[] arrParams)
        {
            try
            {
                DatabaseProviderFactory dbFactory = new DatabaseProviderFactory();
                Database db = dbFactory.Create(strConnectionString);
                return db.ExecuteDataSet(strStoreProc, arrParams);
            }
            catch (Exception ex)
            {
                log4net.Config.XmlConfigurator.Configure();
                log.Error(ex.Message);
                return null;
            }
        }

        public DataSet LayDM(string strStoreProc, string strConnectionString, params Object[] arrParams)
        {
            try
            {
                DatabaseProviderFactory dbFactory = new DatabaseProviderFactory();
                Database db = dbFactory.Create(strConnectionString);
                return db.ExecuteDataSet(strStoreProc, arrParams);
            }
            catch (Exception ex)
            {
                log4net.Config.XmlConfigurator.Configure();
                log.Error(ex.Message);
                return null;
            }
        }
        #endregion
    }
}
