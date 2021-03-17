using System;
using System.Data.Common;
using System.Collections.Generic;
using System.Text;

namespace Parbat.Data
{
    public class Database
    {
        private static Database _instance;
        private DatabaseFactory _factoryCreator;
        private string _connectionString;
        private DatabaseType _dbType;

        private Database()
        {
            
        }

        public static Database Instance
        {
            get
            {
                if(_instance is null)
                {
                    _instance = new Database();
                }

                return _instance;
            }
        }

        public void SetInstance(DatabaseType dbType, string connectionString)
        {
            _dbType = dbType;
            _connectionString = connectionString;

            _factoryCreator = new DatabaseFactory();
            Factory = _factoryCreator.GetFactory(dbType);
        }

        public DbConnection CreateConnection()
        {
            DbConnection con = Factory.CreateConnection();
            con.ConnectionString = _connectionString;

            return con;
        }

        public DbProviderFactory Factory { get; private set; }

        public DbCommand GetSPCommand(string spName, DbConnection connection)
        {
            DbCommand cmd = Factory.CreateCommand();
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.CommandText = spName;
            cmd.Connection = connection;

            return cmd;
        }

        public DbCommand GetCommand(DbConnection connection)
        {
            DbCommand cmd = Factory.CreateCommand();
            cmd.Connection = connection;

            return cmd;
        }
    }
}
