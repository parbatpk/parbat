using Microsoft.VisualStudio.TestTools.UnitTesting;
using ParbatCore.Models;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.Common;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace CoreServicesTest
{
    [TestClass]
    class StudentStatusTest:BaseTest
    {
        public StudentStatusTest()
        {
            _serviceUri = base.GetUrl("/StudentStatusTest/");
        }
        public long GetMax()
        {
            long max = 0;

            DbCommand cmd = DatabaseHelper.GetCommand();
            cmd.Connection.Open();
            cmd.CommandText = string.Format(
                "Select max(StudentStatusID) from StudentStatus");
            max = Convert.ToInt64(cmd.ExecuteScalar());
            cmd.Connection.Close();

            return max;
        }

        public long Insert(string Name)
        {
            DbCommand cmd = DatabaseHelper.GetCommand();
            cmd.Connection.Open();
            cmd.CommandText = string.Format(
                "insert into StudentStatus (Name) values('{0}'); select scope_identity()",
                Name);
            long id = Convert.ToInt64(cmd.ExecuteScalar());
            cmd.Connection.Close();

            return id;
        }

        [TestMethod]
        public async Task StudentStatus_Find_Valid()
        {
            long id = Insert("Insert Dummy");

            //act
            var client = AppServer.Instance.CreateClient();
            var request = base.CreateGetMessage(_serviceUri + id);
            var respones = await client.SendAsync(request);


            //assert
            respones.EnsureSuccessStatusCode();
            string content = await respones.Content.ReadAsStringAsync();
            StudentStatus resp = JsonSerializer.Deserialize<StudentStatus>(content);

            Assert.AreEqual(resp.Name, "Insert Dummy");
        }


        [TestMethod]
        public async Task StudentStatus_Find_Invalid()
        {
            long max = GetMax();

            //act
            var client = AppServer.Instance.CreateClient();
            var request = base.CreateGetMessage((_serviceUri) + (max + 1));
            var respones = await client.SendAsync(request);

            //assert
            Assert.AreEqual(HttpStatusCode.NotFound, respones.StatusCode);
        }

        [TestMethod]
        public async Task StudentStatus_Get_Valid()
        {
            // arrange
            DbCommand cmd = DatabaseHelper.GetCommand();
            cmd.Connection.Open();
            cmd.CommandText = "Select count(1) from StudentSatus";
            long count = Convert.ToInt64(cmd.ExecuteScalar());
            cmd.Connection.Close();

            // act
            var client = AppServer.Instance.CreateClient();
            var request = base.CreateGetMessage(_serviceUri);
            var response = await client.SendAsync(request);

            var content = await response.Content.ReadAsStringAsync();
            response.EnsureSuccessStatusCode();

            // assert
            List<Hashtable> data = JsonSerializer.Deserialize<List<Hashtable>>(content);
            Assert.IsTrue(data.Count == count);
        }

        [TestMethod]
        public async Task StudentStatus_Post_Valid()
        {
            // arrange
            DbCommand cmd = DatabaseHelper.GetCommand();

            StudentStatus SS = new StudentStatus()
            {
                StudentStatusID = null,
                Name = "Insert "
            };

            // act
            string url = _serviceUri;
            var rawdata = JsonSerializer.Serialize<object>(SS);
            var inputData = new StringContent(rawdata, Encoding.Default, "application/json");
            var response = await AppServer.Instance.CreateClient().PostAsync(url, inputData);

            // assert
            response.EnsureSuccessStatusCode();
            var content = await response.Content.ReadAsStringAsync();

            StudentStatus res = JsonSerializer.Deserialize<StudentStatus>(content);
            Assert.IsTrue(res.Name == SS.Name);
        }


        [TestMethod]
        public async Task StudentStatus_Delete_Valid()
        {
            long id = Insert("Delete");

            //act 
            var client = AppServer.Instance.CreateClient();
            var respones = await client.DeleteAsync(_serviceUri + id);

            //assert
            respones.EnsureSuccessStatusCode();
        }


        [TestMethod]
        public async Task StudentStatus_Delete_Invalid()
        {
            long max = GetMax();

            //act 
            var client = AppServer.Instance.CreateClient();
            var respones = await client.DeleteAsync((_serviceUri) + (max + 1));

            //assert
            Assert.IsTrue(respones.StatusCode == HttpStatusCode.BadRequest);

        }

    }
}
