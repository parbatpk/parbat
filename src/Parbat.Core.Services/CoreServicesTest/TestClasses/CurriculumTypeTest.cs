using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Net;
using System.Net.Http;

using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Threading.Tasks;
using System.Text.Json;
using System.Collections;
using System.Collections.Generic;
using System.Text;

using Parbat.Data;
using ParbatCore.Models;

namespace CoreServicesTest
{
    [TestClass]
    public class CurriculumTypeTest : BaseTest
    {
        public CurriculumTypeTest()
        {
            _serviceUri = base.GetUrl("/CurriculumType/");
        }

        /// <summary>
        /// Request to get MAX ID from CurriculumTypeTable
        /// </summary>
        /// <returns></returns>
        private long GetMax()
        {
            IDatabase instance = Database.Instance;

            // arrange
            long max = 0;
            DbCommand cmd = DatabaseHelper.GetCommand();
            cmd.CommandText = "Select max(CurriculumTypeID) from CurriculumType";

            cmd.Connection.Open();
            max = Convert.ToInt64(cmd.ExecuteScalar());
            cmd.Connection.Close();
            return max;
        }

        /// <summary>
        /// Request to Insert into CurriculumTypeTable
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        private long Insert(string name)
        {
            // arrange   
            DbCommand cmd = DatabaseHelper.GetCommand();
            cmd.Connection.Open();
            cmd.CommandText = string.Format(
                "Insert into CurriculumType (Name) Values('{0}'); select scope_identity()"
                , name);
            long id = Convert.ToInt64(cmd.ExecuteScalar());
            cmd.Connection.Close();

            return id;
        }

        /// <summary>
        /// Request to Find Valid CurriculumType
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task CurriculumType_Find_Valid()
        {
            long id = Insert("new type");

            // act
            var request = base.CreateGetMessage(_serviceUri + id);
            var client = AppServer.Instance.CreateClient();
            var response = await client.SendAsync(request);

            //assert
            response.EnsureSuccessStatusCode();
            string content = await response.Content.ReadAsStringAsync();
            CurriculumType resp = JsonSerializer.Deserialize<CurriculumType>(content);

            Assert.AreEqual(resp.Name, "new type");

        }

        /// <summary>
        /// Request to Find Invalid CurriculumType
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task CurriculumType_Find_Invalid()
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
        /// Request to Get ALL CurriculumType
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task CurriculumType_Get_Valid()
        {
            // arrange
            DbCommand cmd = DatabaseHelper.GetCommand();
            cmd.Connection.Open();
            cmd.CommandText = "Select count(1) from CurriculumType";
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
        /// Request to ????
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task CurriculumType_Post_Valid()
        {
            // arrange
            DbCommand cmd = DatabaseHelper.GetCommand();

            CurriculumType ctype = new CurriculumType()
            {
                CurriculumTypeID = null,
                Name = "Insertion Test"
            };

            // act
            string url = _serviceUri;
            var rawdata = JsonSerializer.Serialize<object>(ctype);
            var inputData = new StringContent(rawdata, Encoding.Default, "application/json");
            var response = await AppServer.Instance.CreateClient().PostAsync(url, inputData);

            // assert
            response.EnsureSuccessStatusCode();
            var content = await response.Content.ReadAsStringAsync();


            CurriculumType res = JsonSerializer.Deserialize<CurriculumType>(content);
            Assert.IsTrue(res.Name == ctype.Name);
        }


        /// <summary>
        /// Request to Delete Valid CurriculumType
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task CurriculumType_Delete_Valid()
        {
            // arrange
            long id = Insert("to delete");

            //act
            var client = AppServer.Instance.CreateClient();
            var response = await client.DeleteAsync(_serviceUri + id);

            //assert
            response.EnsureSuccessStatusCode();
        }

        /// <summary>
        /// Request to Delete Invalid CurriculumType
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task CurriculumType_Delete_Invalid()
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
