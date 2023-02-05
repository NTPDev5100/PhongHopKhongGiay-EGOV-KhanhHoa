using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PhongHopKhongGiay.SRV.Data;
using System.Data;
using PhongHopKhongGiay.SRV.Entities;

namespace PhongHopKhongGiay.SRV.Business
{
   public class DanhMucCCBUS
    {
        public IEnumerable<DMInAn> GetDanhMucInAn(string maChucNang, string maLinhVuc, string loaiInAn, int donViID)
        {
            DMInAnDAC dm = new DMInAnDAC();
            return dm.GetList(maChucNang, maLinhVuc, loaiInAn, donViID);
        }
        #region Danh muc dong
        public string ThemDM(string strStoreProc, string strConnectionString, Object[] arrParams)
        {
            string result = default(string);
            DanhMucDongCCDAC dANHMUCDAC = new DanhMucDongCCDAC();
            result = dANHMUCDAC.ThemDM(strStoreProc, strConnectionString, arrParams);
            return result;
        }

        public int XoaDM(string strStoreProc, string strConnectionString, Object[] arrParams)
        {
            int result = default(int);
            DanhMucDongCCDAC dANHMUCDAC = new DanhMucDongCCDAC();
            result = dANHMUCDAC.XoaDM(strStoreProc, strConnectionString, arrParams);
            return result;
        }

        public string CapNhatDM(string strStoreProc, string strConnectionString, Object[] arrParams)
        {
            string result = default(string);
            DanhMucDongCCDAC dANHMUCDAC = new DanhMucDongCCDAC();
            result = dANHMUCDAC.CapNhatDM(strStoreProc, strConnectionString, arrParams);
            return result;
        }

        public DataSet LocDM(string strStoreProc, string strConnectionString, Object[] arrParams)
        {
            DataSet result = default(DataSet);
            DanhMucDongCCDAC dANHMUCDAC = new DanhMucDongCCDAC();
            result = dANHMUCDAC.LocDM(strStoreProc, strConnectionString, arrParams);
            return result;
        }

        public DataSet LayDM(string strStoreProc, string strConnectionString, Object[] arrParams)
        {
            DataSet result = default(DataSet);
            DanhMucDongCCDAC dANHMUCDAC = new DanhMucDongCCDAC();
            result = dANHMUCDAC.LayDM(strStoreProc, strConnectionString, arrParams);
            return result;
        }
        #endregion
    }
}
