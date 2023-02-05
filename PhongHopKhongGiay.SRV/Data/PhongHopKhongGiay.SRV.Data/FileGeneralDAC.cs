
using Dapper;
using log4net;
using ChapThuanDauTu.SRV.Entities.BindingModel;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ChapThuanDauTu.SRV.Data
{
   public class FileGeneralDAC
    {
        protected static readonly ILog _logger = LogManager.GetLogger(typeof(FileGeneralDAC));
        public int CC_File_ins(FileBindingModel model, IDbConnection conn, IDbTransaction trans)
        {
            try
            {
                if (conn.State == ConnectionState.Closed)
                    conn.Open();
                var parameters = new DynamicParameters();
                parameters.Add("StrFileTable", model.StrFileTable, DbType.String, ParameterDirection.Input);
                parameters.Add("StrFile", model.StrFile, DbType.String, ParameterDirection.Input);
                var _data = conn.QuerySingle<int>("SXD_File_ins", parameters, trans, commandType: CommandType.StoredProcedure);
             
                return _data;

            }
            catch (Exception ex)
            {
                _logger.Error(ex.Message);
                return -1;
            }
        }
        public int CC_File_Del(string strfiletable, IDbConnection conn, IDbTransaction trans)
        {
            try
            {
                if (conn.State == ConnectionState.Closed)
                    conn.Open();
                var parameters = new DynamicParameters();
                parameters.Add("StrFileTable", strfiletable, DbType.String, ParameterDirection.Input);
                var _data = conn.QuerySingle<int>("CC_File_Del", parameters, trans, commandType: CommandType.StoredProcedure);
                return _data;

            }
            catch (Exception ex)
            {
                _logger.Error(ex.Message);
                return -1;
            }
        }
    }
}
