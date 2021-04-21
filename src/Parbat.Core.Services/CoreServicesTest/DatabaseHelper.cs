using System;
using System.Collections.Generic;
using System.Text;


using System.Data.Common;
using Parbat.Data;

namespace CoreServicesTest
{
    public class DatabaseHelper
    {
        public static DbCommand GetCommand()
        {
            IDatabase instance = Database.Instance;
            DbConnection con = instance.CreateConnection();
            con.Open();
            DbCommand cmd = instance.CreateCommand(con);

            return cmd;
        }
    }
}
