using System;
using System.Transactions;
using Microsoft.Practices.EnterpriseLibrary.Data;

namespace PhongHopKhongGiay.SRV.Data
{
    public interface IUnitOfWork : IDisposable
    {
        Database MasterDatabase { get; }
        Database PhongHopKhongGiayDatabase { get; }

        Database ScheduleDatabase { get; }

        void SaveChanges();
        TransactionScope Transaction { get; }
    }
}
