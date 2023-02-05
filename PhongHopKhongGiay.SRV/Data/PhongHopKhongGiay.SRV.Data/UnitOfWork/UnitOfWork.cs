
namespace PhongHopKhongGiay.SRV.Data
{
    using System.Transactions;
    using Microsoft.Practices.EnterpriseLibrary.Data;

    public class UnitOfWork : IUnitOfWork
    {
        #region Members
        private TransactionScope _transactionScope;
        #endregion

        #region Constructor
        public UnitOfWork(bool beginTransaction = true)
        {
            if (beginTransaction)
            {
                _transactionScope = new TransactionScope();
            }
        }
        #endregion

        #region Properties
        private Database _masterDatabase;
        public Database MasterDatabase
        {
            get { return _masterDatabase ?? (_masterDatabase = DatabaseFactories.CreateMasterDatabase()); }
        }
        private Database _PhongHopKhongGiayDatabase;

        private Database _ScheduleDatabase;
        public Database PhongHopKhongGiayDatabase
        {
            get { return _PhongHopKhongGiayDatabase ?? (_PhongHopKhongGiayDatabase = DatabaseFactories.CreatePhongHopKhongGiayDatabase()); }
        }

        public Database ScheduleDatabase
        {
            get { return _ScheduleDatabase ?? (_ScheduleDatabase = DatabaseFactories.CreateScheduleDatabase()); }
        }
        
        public TransactionScope Transaction
        {
            get { return _transactionScope; }
        }
        #endregion

        #region Methods
        public void Dispose()
        {
            if (_transactionScope != null)
            {
                _transactionScope.Dispose();
            }
        }

        public void SaveChanges()
        {
            if (_transactionScope != null)
            {
                _transactionScope.Complete();
            }
        }
        #endregion
    }
}
