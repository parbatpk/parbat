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

    }
}
