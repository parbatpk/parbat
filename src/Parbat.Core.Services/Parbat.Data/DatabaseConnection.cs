using System;
using System.Data;
using System.Data.Common;
using System.Collections.Generic;
using System.Text;

namespace Parbat.Data
{
    public interface IDatabase
    {
        void SetInstance(DatabaseType databaseType, string connectionString);
        DbConnection CreateConnection();
        DbProviderFactory Factory { get; }
        DbCommand CreateSPCommand(string spName, DbConnection connection);
        DbCommand CreateCommand(DbConnection connection);
        DbParameter CreateParameter(DbCommand cmd, string paramName, object value);
        DataSet GetDataSet(DbCommand cmd);

    }

    public class Database : IDatabase
    {
        private static Database _instance;
        private DatabaseFactory _factoryCreator;
        private string _connectionString;
        private DatabaseType _dbType;

        private Database()
        {
            
        }

        public static IDatabase Instance
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

        public DbCommand CreateSPCommand(string spName, DbConnection connection)
        {
            DbCommand cmd = Factory.CreateCommand();
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.CommandText = spName;
            cmd.Connection = connection;

            return cmd;
        }

        public DbCommand CreateCommand(DbConnection connection)
        {
            DbCommand cmd = Factory.CreateCommand();
            cmd.Connection = connection;

            return cmd;
        }

        public DbParameter CreateParameter(DbCommand cmd, string paramName, object value)
        {
            DbParameter parameter =  cmd.CreateParameter();
            parameter.ParameterName = paramName;
            parameter.Value = value;

            return parameter;
        }

        public DataSet GetDataSet(DbCommand cmd)
        {
            DbDataAdapter adapter = Factory.CreateDataAdapter();
            adapter.SelectCommand = cmd;
            DataSet ds = new DataSet();
            adapter.Fill(ds);

            return ds;
        }
    }
}
