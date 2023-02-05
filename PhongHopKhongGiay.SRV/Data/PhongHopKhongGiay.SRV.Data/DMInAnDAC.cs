using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;
using log4net;
using PhongHopKhongGiay.SRV.Entities;
using Dapper;

namespace PhongHopKhongGiay.SRV.Data
{
    public partial class DMInAnDAC : DataAccessComponent
    {
        protected static readonly ILog log = LogManager.GetLogger(typeof(DMInAnDAC));

        public IEnumerable<DMInAn> GetList(string maChucNang, string maLinhVuc,string loaiInAn, int donViID)
        {
            try
            {
                using (IDbConnection conn = ConnectionPhongHopKhongGiay)
                {
                    conn.Open();
                    var parameter = new DynamicParameters();
                    parameter.Add("MaChucNang", maChucNang, DbType.String, ParameterDirection.Input);
                    parameter.Add("MaLinhVuc", maLinhVuc, DbType.String, ParameterDirection.Input);
                    parameter.Add("LoaiInAn", loaiInAn, DbType.String, ParameterDirection.Input);
                    parameter.Add("DonViID", donViID, DbType.Int32, ParameterDirection.Input);
                    var _data = conn.Query<DMInAn>("sp_DMInAn_Get", parameter, commandType: CommandType.StoredProcedure);
                    conn.Close();
                    return _data.ToList();
                }
            }
            catch (Exception ex)
            {
                log.Error("Class: NhaOCuDAC, function: GetList: " + ex.Message);
                return null;
            }


        }
    }
}

