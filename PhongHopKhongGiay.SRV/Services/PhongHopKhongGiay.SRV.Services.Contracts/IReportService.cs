using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ServiceModel;
namespace PhongHopKhongGiay.SRV.Services.Contracts
{
    /// <summary>
    /// Service contract for ReportService.
    /// </summary>
    
    [ServiceContract]
    public interface IReportService
    {
        [OperationContract]
        string Get_DataReport(string ReportCode, int DonViID, object[] Params, out string table);
    }
}
