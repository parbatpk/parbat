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
    public class CourseTypeTest : BaseTest
    {
        /// <summary>
        /// Constructor
        /// </summary>
        public CourseTypeTest()
        {
            _serviceUri = base.GetUrl("/CourseType/");
        }

        /// <summary>
        /// Request to get MAX ID from CourseTypeTable
        /// </summary>
        /// <returns></returns>
        private long GetMax()
        {
            long max = 0;
            DbCommand cmd = DatabaseHelper.GetCommand();
            cmd.Connection.Open();
            cmd.CommandText = "Select max(CourseTypeID) from CourseType";
            max = Convert.ToInt64(cmd.ExecuteScalar());
            cmd.Connection.Close();
            return max;
        }

        /// <summary>
        /// Request to Insert into CourseTypeTable
        /// </summary>
        /// <param name="Name"></param>
        /// <returns></returns>
        private long Insert(string Name)
        {
            DbCommand cmd = DatabaseHelper.GetCommand();
            cmd.Connection.Open();
            cmd.CommandText = string.Format(
                "Insert into CourseType (Name) values('{0}'); select scope_identity()"
                , Name);
            long id = Convert.ToInt64(cmd.ExecuteScalar());
            cmd.Connection.Close();
            return id;
        }


        /// <summary>
        /// Request to Find Valid CourseType
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        private async Task CourseType_Find_Valid()
        {
            long id = Insert("dummyCourse");

            //act
            var request = base.CreateGetMessage(_serviceUri + id);
            var client = AppServer.Instance.CreateClient();
            var respones = await client.SendAsync(request);

            //assert
            respones.EnsureSuccessStatusCode();
            string context = await respones.Content.ReadAsStringAsync();
            CourseType resp = JsonSerializer.Deserialize<CourseType>(context);

            Assert.AreEqual(resp.Name, "dummyCourse");
        }


        /// <summary>
        /// Request to Find Invalid CourseType
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task CourseType_Find_Invalid()
        {
            long max = GetMax();

            // act
            var client = AppServer.Instance.CreateClient();
            string url = _serviceUri + (max + 1);
            var request = base.CreateGetMessage(url);
            var response = await client.SendAsync(request);

            // assert
            Assert.AreEqual(HttpStatusCode.NotFound, response.StatusCode);
        }


        /// <summary>
        /// Request to Get ALL CourseType
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task CourseType_Get_Valid()
        {
            // arrange
            DbCommand cmd = DatabaseHelper.GetCommand();
            cmd.CommandText = "Select count(1) from CourseType";
            cmd.Connection.Open();
            long count = Convert.ToInt64(cmd.ExecuteScalar());
            cmd.Connection.Close();

            // act
            var request = base.CreateGetMessage(_serviceUri);
            var client = AppServer.Instance.CreateClient();
            var response = await client.SendAsync(request);

            var content = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();
            // assert
            List<Hashtable> data = JsonSerializer.Deserialize<List<Hashtable>>(content);
            Assert.IsTrue(data.Count == count);
        }


        /// <summary>
        /// Request to ???
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task CourseType_Post_Valid()
        {
            // arrange
            DbCommand cmd = DatabaseHelper.GetCommand();
            CourseType c = new CourseType()
            {
                CourseTypeID = null,
                Name = "Test_Name",
            };

            // act
            string url = _serviceUri;
            var rawdata = JsonSerializer.Serialize<object>(c);
            var inputData = new StringContent(rawdata, Encoding.Default, "application/json");
            var response = await AppServer.Instance.CreateClient().PostAsync(url, inputData);

            // assert
            response.EnsureSuccessStatusCode();
            var content = await response.Content.ReadAsStringAsync();

            CourseType res = JsonSerializer.Deserialize<CourseType>(content);
            Assert.IsTrue(res.Name == c.Name);

        }

        /// <summary>
        /// Request to Delete Valid CourseType
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task CourseType_Delete_Valid()
        {
            // arrange
            long id = Insert("FakeDeleteData");

            //act
            var client = AppServer.Instance.CreateClient();
            var response = await client.DeleteAsync(_serviceUri + id);

            //assert
            response.EnsureSuccessStatusCode();
        }


        /// <summary>
        /// Request to Delete Invalid CourseType
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task CourseType_Delete_Invalid()
        {
            //arrange
            long max = GetMax();

            // act
            var client = AppServer.Instance.CreateClient();
            var response = await client.DeleteAsync(_serviceUri + (max + 1));

            //assert
            Assert.IsTrue(response.StatusCode == HttpStatusCode.BadRequest);
        }


    }
}
