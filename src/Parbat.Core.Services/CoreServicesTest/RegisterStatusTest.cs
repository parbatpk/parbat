using System;
using System.Collections.Generic;
using System.Text;

using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Text.Json;
using System.Data.Common;
using System.Threading.Tasks;
using System.Net;

namespace CoreServicesTest
{
    //NOTE TWO TEST METHODS IS NOT WRITTEN YET  
    //1-RegisterStatus_Get_Valid
    //2-RegisterStatus_Post_Valid

    [TestClass]
    class RegisterStatusTest:BaseTest
    {
        public RegisterStatusTest()
        {
            _serviceUri = base.GetUrl("/RegisterStatusTest/");
        }

        public long GetMax()
        {
            long max = 0;

            DbCommand cmd = DatabaseHelper.GetCommand();
            cmd.Connection.Open();
            cmd.CommandText = string.Format(
                "select max(RegisterStatusID) from RegisterStatus");
            max = Convert.ToInt64(cmd.ExecuteScalar());
            cmd.Connection.Close();

            return max;
        }

        public long Insert(string ShortName)
        {
            DbCommand cmd = DatabaseHelper.GetCommand();
            cmd.Connection.Open();
            cmd.CommandText = string.Format(
                "insert into RegisterStatus(ShortName) values('{0}'); select scope_identity()",
                ShortName);
            long id = Convert.ToInt64(cmd.ExecuteScalar());
            cmd.Connection.Close();


            return id;
        }

        [TestMethod]
        public async Task RegisterStatus_Find_Valid()
        {
            long id = Insert("Dummy");
            
            //act
            var client = AppServer.Instance.CreateClient();
            var request = base.CreateGetMessage(_serviceUri+id);
            var respones = await client.SendAsync(request);

            //assert 
            respones.EnsureSuccessStatusCode();
            string content = await respones.Content.ReadAsStringAsync();

            //requried Model Class  for assert 
        }

        [TestMethod]
        public async Task RegisterStatus_Find_Invalid()
        {
            long max = GetMax();

            //act 
            var client = AppServer.Instance.CreateClient();
            var request = base.CreateGetMessage((_serviceUri)+(max+1));
            var respones = await client.SendAsync(request);

            //assert
            Assert.AreEqual(HttpStatusCode.NotFound, respones.StatusCode);
        }


        [TestMethod]
        public async Task RegisterStatus_Delete_Valid()
        {
            long id = Insert("Delete");

            //act
            var client = AppServer.Instance.CreateClient();
            var respones = await client.DeleteAsync(_serviceUri+id);

            //assert
            respones.EnsureSuccessStatusCode();
        }

        [TestMethod]
        public async Task RegisterStatus_Delete_Invalid()
        {
            long max = GetMax();

            //act
            var client = AppServer.Instance.CreateClient();
            var respones = await client.DeleteAsync((_serviceUri) + (max + 1));

            //assert
            Assert.IsTrue(HttpStatusCode.BadRequest == respones.StatusCode);

        }
    }
}
