using Microsoft.Practices.EnterpriseLibrary.Data;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PhongHopKhongGiay.SRV.Data
{
    public abstract class DataAccessComponent
    {
        protected const string CONNECTION_NAME = "PhongHopKhongGiay";
        //static DataAccessComponent()
        //{
        //    // Required for Enterprise Library DAAB 6.0 when using Database Factories.
        //    DatabaseFactory.SetDatabaseProviderFactory(new DatabaseProviderFactory());
        //}
        internal IDbConnection ConnectionPhongHopKhongGiay
        {
            get
            {
                return new SqlConnection(ConfigurationManager.ConnectionStrings["PhongHopKhongGiay"].ConnectionString);
            }
        }
        internal IDbConnection Connection
        {
            get
            {
                return new SqlConnection(ConfigurationManager.ConnectionStrings["DungChung.ConnString"].ConnectionString);
            }
        }
        internal IDbConnection Connection_DVC
        {
            get
            {
                return new SqlConnection(ConfigurationManager.ConnectionStrings["DVC.ConnString"].ConnectionString);
            }
        }
    }
}
