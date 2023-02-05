using System;
using System.Data;
using System.Collections.Generic;
using PhongHopKhongGiay.SRV.Entities;
using PhongHopKhongGiay.SRV.Services.Contracts;
using PhongHopKhongGiay.SRV.Business;

namespace PhongHopKhongGiay.SRV.Services
{
    public class DanhMucCCService : IDanhMucCCService
    {
        public IEnumerable<DMInAn> GetDanhMucInAn(string maChucNang, string maLinhVuc, string loaiInAn, int donViID)
        {
            DanhMucCCBUS bc = new DanhMucCCBUS();
            var result= bc.GetDanhMucInAn(maChucNang, maLinhVuc, loaiInAn, donViID);
            return result;
        } 
        #region Danh muc dong
        public string ThemDM(string strStoreProc, string strConnectionString, params Object[] arrParams)
        {
            DanhMucCCBUS bc = new DanhMucCCBUS();
            return bc.ThemDM(strStoreProc, strConnectionString, arrParams);
        }
        public int XoaDM(string strStoreProc, string strConnectionString, params Object[] arrParams)
        {
            DanhMucCCBUS bc = new DanhMucCCBUS();
            return bc.XoaDM(strStoreProc, strConnectionString, arrParams);
        }
        public string CapNhatDM(string strStoreProc, string strConnectionString, params Object[] arrParams)
        {
            DanhMucCCBUS bc = new DanhMucCCBUS();
            return bc.CapNhatDM(strStoreProc, strConnectionString, arrParams);
        }
        public DataSet LocDM(string strStoreProc, string strConnectionString, params Object[] arrParams)
        {
            DanhMucCCBUS bc = new DanhMucCCBUS();
            return bc.LocDM(strStoreProc, strConnectionString, arrParams);
        }
        public DataSet LayDM(string strStoreProc, string strConnectionString, params Object[] arrParams)
        {
            DanhMucCCBUS bc = new DanhMucCCBUS();
            return bc.LayDM(strStoreProc, strConnectionString, arrParams);
        }
        #endregion       
    }
}
