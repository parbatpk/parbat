using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using System.Data.Common;
using Parbat.Data;

namespace ParbatCore.Models
{
    public class TestModel
    {
        public object Test()
        {
            DbConnection con = Database.Instance.CreateConnection();
            con.Open();
            DbCommand cmd2 = Database.Instance.Factory.CreateCommand();
            cmd2.CommandText = "select 1";
            //DbCommand cmd = Database.Instance.GetSPCommand("test", con);
            cmd2.Connection = con;
            var x = cmd2.ExecuteScalar();

            return x;
            
        }

        public void SimpleCommand()
        {
            // Simple Command
            DbConnection con = Database.Instance.CreateConnection();
            DbCommand cmd = Database.Instance.Factory.CreateCommand();
            cmd.Connection = con;
            con.Open();

            cmd.ExecuteNonQuery();

        }

        public void CreateCommand()
        {
            DbConnection con = Database.Instance.CreateConnection();
            DbCommand cmd = Database.Instance.GetCommand(con);
            con.Open();

            cmd.ExecuteNonQuery();
        }

        public void CreateSPCommand()
        {
            DbConnection con = Database.Instance.CreateConnection();
            DbCommand cmd = Database.Instance.GetSPCommand("sp", con);
            con.Open();
            cmd.ExecuteNonQuery();
        }
    }
}
