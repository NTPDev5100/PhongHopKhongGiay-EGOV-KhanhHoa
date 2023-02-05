
namespace PhongHopKhongGiay.SRV.Data
{
    using Microsoft.Practices.EnterpriseLibrary.Data;
    using System.Data;

    public class DatabaseFactories
    {
        private const string MasterConnection = "Master";
        private const string PhongHopKhongGiayConnection = "PhongHopKhongGiay";
        private const string ScheduleConnection = "SCHEDULE";

        static DatabaseFactories()
        {
            DatabaseFactory.SetDatabaseProviderFactory(new DatabaseProviderFactory());
        }

        public static Database CreateMasterDatabase()
        {
            return DatabaseFactory.CreateDatabase(MasterConnection);
        }

        public static Database CreatePhongHopKhongGiayDatabase()
        {
            return DatabaseFactory.CreateDatabase(PhongHopKhongGiayConnection);
        }

        public static Database CreateScheduleDatabase()
        {
            return DatabaseFactory.CreateDatabase(ScheduleConnection);
        }


        protected T GetDataValue<T>(IDataReader dr, string columnName)
        {
            // NOTE: GetOrdinal() is used to automatically determine where the column
            //       is physically located in the database table. This allows the
            //       schema to be changed without affecting this piece of code.
            //       This of course sacrifices a little performance for maintainability.
            int i = dr.GetOrdinal(columnName);

            if (!dr.IsDBNull(i))
                return (T)dr.GetValue(i);
            else
                return default(T);
        }
    }
}
