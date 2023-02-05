using PhongHopKhongGiay.SRV.Data;
using PhongHopKhongGiay.SRV.Entities.BindingModel;

using log4net;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PhongHopKhongGiay.SRV.Business
{
   public class FileGeneralBUS
    {
        protected static readonly ILog _logger = LogManager.GetLogger(typeof(FileGeneralBUS));
        public int CC_File_ins(FileBindingModel model, IDbConnection conn, IDbTransaction trans)
        {
            try
            {
                FileGeneralDAC filedac = new FileGeneralDAC();
                var Locc = filedac.CC_File_ins(model,conn,trans);
                return Locc;
            }
            catch (Exception ex)
            {

                _logger.Error("Class FileGeneralBUS,function: CC_File_ins: " + ex.Message);
                return -1;
            }
        }
        public int CC_File_Del(string strfiletable, IDbConnection conn, IDbTransaction trans)
        {
            try
            {
                FileGeneralDAC filedac = new FileGeneralDAC();
                var Locc = filedac.CC_File_Del(strfiletable, conn, trans);
                return Locc;
            }
            catch (Exception ex)
            {

                _logger.Error("Class FileGeneralBUS,function: CC_File_Del: " + ex.Message);
                return -1;
            }
        }
    }
}
