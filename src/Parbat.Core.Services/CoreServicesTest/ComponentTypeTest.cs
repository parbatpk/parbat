using System;
using System.Collections.Generic;
using System.Text;


using Microsoft.VisualStudio.TestTools.UnitTesting;
using Parbat.Data;
using System.Data.Common;

namespace CoreServicesTest
{
    [TestClass]
    class ComponentTypeTest:BaseTest
    {
        public ComponentTypeTest()
        {
            _serviceUri = base.GetUrl("/ComponentType/");
        }

        /// <summary>
        /// always return the MAX primary key from ComponentType Table 
        /// </summary>
        /// <returns></returns>
        private long GetMax()
        {
            long max = 0;
            IDatabase db = Database.Instance; 
            DbConnection con = db.CreateConnection();
            DbCommand cmd = db.CreateCommand(con);
            cmd.CommandText = "Select maxI(ComponenttypeID) from Componenttype";


            con.Open();
            max = Convert.ToInt64(cmd.ExecuteScalar());
            con.Close();

            return max;
        }

        /// <summary>
        /// Insert and return the primary key
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        private long Insert(string name)
        {
            IDatabase db = Database.Instance;
            DbConnection con = db.CreateConnection();
            con.Open();
            DbCommand cmd = db.CreateCommand(con);
            cmd.CommandText = string.Format(
                "Insert into ComponentType (Name) values('{0}'); select scope_identity()"
                , name);
            long id = Convert.ToInt64(cmd.ExecuteScalar());
            con.Close();
            return id;

        }

    }
}
