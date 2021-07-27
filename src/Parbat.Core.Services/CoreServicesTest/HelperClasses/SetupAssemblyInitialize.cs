using Microsoft.VisualStudio.TestTools.UnitTesting;

using System;
using System.Threading;
using System.Collections.Generic;
using System.Text;
using System.Data;

using System.Data.Common;
using System.IO;
using Microsoft.SqlServer.Management;
using Microsoft.SqlServer.Management.Smo;
using System.Data.SqlClient;

using Parbat.Data;
using Microsoft.Extensions.Configuration;
using System.Diagnostics;
using Microsoft.SqlServer.Management.Common;

namespace CoreServicesTest
{
    [TestClass]
    class SetupAssemblyInitialize
    {
        static IConfigurationRoot Configuration { get; set; }
        public static string ConnectionString;
        static string SetupConnectionString;
        public static string BaseUrl { get; set; }

        /// <summary>
        /// Create and load database
        /// </summary>
        static void CreateTestDatabase()
        {
            // combine all sps
            string basedirectory = AppContext.BaseDirectory;
            ProcessStartInfo proc = new ProcessStartInfo("combine_sps.bat");
            Process p = Process.Start(proc);
            p.Close();

            // in order to allow the above process to close peacefully 
            // so we can get access to script file 
            Thread.Sleep(5000);

            // read db creation script
            string createDb = File.OpenText("CreateDB.sql").ReadToEnd();
            createDb = createDb.Replace("ParbatDB", "ParbatTestDB");

            createDb = "IF EXISTS (SELECT 1 from sysdatabases where name='ParbatTestDB')\nDROP DATABASE ParbatTestDB\nGo\n" +
                createDb;

            SqlConnection con = new SqlConnection(SetupConnectionString);
            ServerConnection scon = new ServerConnection(con);
            Server server = new Server(scon);
            server.ConnectionContext.ExecuteNonQuery(createDb);

            string cmdDBSelect = "USE ParbatTestDB\nGo\n";
            string combinedSPs = cmdDBSelect + File.OpenText("combine_sps.sql").ReadToEnd();
            server.ConnectionContext.ExecuteNonQuery(combinedSPs);
        }

        /// <summary>
        /// Run the code to setup test database and all SPs
        /// </summary>
        /// <param name="context"></param>
        [AssemblyInitialize]
        public static void AssemblyInit(TestContext context)
        {
            var config = new ConfigurationBuilder()
                .AddJsonFile("appsettings.Test.json");
            Configuration = config.Build();
            ConnectionString = Configuration["ConnectionStrings:db"];
            SetupConnectionString = Configuration["ConnectionStrings:setup"];
            BaseUrl = Configuration["BaseUrl"];

            //CreateTestDatabase();

            Parbat.Data.Database.Instance.SetInstance(DatabaseType.SQL, ConnectionString);

        }

        /// <summary>
        /// We can clean the stuff here (e.g. database deletion etc)
        /// </summary>
        [AssemblyCleanup]
        public static void DeleteTestDatabase()
        {
            return;
        }

        /// <summary>
        /// A simple method to run initialization code
        /// </summary>
        [TestMethod]
        public void VerifyTestDatabase()
        {
            Assert.IsTrue(true);
        }
    }
}
