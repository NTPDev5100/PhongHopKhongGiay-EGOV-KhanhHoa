using PhongHopKhongGiay.SRV.Business;
using PhongHopKhongGiay.SRV.Services.Contracts;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;



namespace PhongHopKhongGiay.SRV.Services
{
    public class ReportService : IReportService
    {
        /// <summary>
        /// Calls the Ins_DmLinhVucKinhDoanh business method of the DanhMucKinhDoanhBUS.
        /// </summary>
        /// <param name="dMLINHVUCKINHDOANH"> A dMLINHVUCKINHDOANH value.</param>
        /// <returns>Returns a DMLinhVucKinhDoanh object.</returns>
        public string Get_DataReport(string ReportCode, int DonViID, object[] Params, out string table)
        {
            ReportBUS rpt = new ReportBUS();            
            var result= rpt.Get_DataReport(ReportCode, DonViID, Params, out table);
            return result;
        }
    }
}
