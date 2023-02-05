using System;
using System.Data;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ServiceModel;
using PhongHopKhongGiay.SRV.Entities;

namespace PhongHopKhongGiay.SRV.Services.Contracts
{   
    [ServiceContract]
    public interface IDanhMucCCService
    {
        [OperationContract]
        IEnumerable<DMInAn> GetDanhMucInAn(string maChucNang, string maLinhVuc, string loaiInAn, int donViID);
        #region Danh muc dong
        [OperationContract]
        string ThemDM(string strStoreProc, string strConnectionString, params Object[] arrParams);
        [OperationContract]
        int XoaDM(string strStoreProc, string strConnectionString, params Object[] arrParmas);
        [OperationContract]
        DataSet LayDM(string strStoreProc, string strConnectionString, params Object[] arrParams);
        [OperationContract]
        DataSet LocDM(string strStoreProc, string strConnectionString, params Object[] arrParams);
        [OperationContract]
        string CapNhatDM(string strStoreProc, string strConnectionString, params Object[] arrParams);
        #endregion       
    }
}
