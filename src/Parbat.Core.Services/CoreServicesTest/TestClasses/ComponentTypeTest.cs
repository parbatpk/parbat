using System;
using System.Collections.Generic;
using System.Text;


using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Data.Common;
using System.Threading.Tasks;
using System.Text.Json;
using System.Net;
using System.Collections;
using System.Net.Http;
using ParbatCore.Models;

namespace CoreServicesTest
{
    [TestClass]
    public class ComponentTypeTest:BaseTest
    {
        /// <summary>
        /// Consturctor
        /// </summary>
        public ComponentTypeTest()
        {
            _serviceUri = base.GetUrl("/ComponentType/");
        }

        /// <summary>
        /// Request to get MAX ID from ComponentTypeTable
        /// </summary>
        /// <returns></returns>
        private long GetMax()
        {
            long max = 0;
            DbCommand cmd = DatabaseHelper.GetCommand();
            cmd.Connection.Open();
            cmd.CommandText = "Select max(ComponenttypeID) from ComponentType";
            max = Convert.ToInt64(cmd.ExecuteScalar());
            cmd.Connection.Close();
            return max;
        }

        /// <summary>
        /// Request to Insert into ComponentTypeTable
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        private long Insert(string name)
        {
            DbCommand cmd = DatabaseHelper.GetCommand();
            cmd.Connection.Open();
            cmd.CommandText = string.Format(
                "Insert into ComponentType (Name) values('{0}'); select scope_identity()"
                , name);
            long id = Convert.ToInt64(cmd.ExecuteScalar());
            cmd.Connection.Close();
            return id;
        }

        /// <summary>
        /// Request to Find Valid ComponentType
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        private async Task ComponentType_Find_Valid()
        {
            long id = Insert("dummyCT");

            //act
            var request = base.CreateGetMessage(_serviceUri + id);
            var client = AppServer.Instance.CreateClient();
            var respones = await client.SendAsync(request);

            //assert
            respones.EnsureSuccessStatusCode();
            string context = await respones.Content.ReadAsStringAsync();
            ComponentType resp = JsonSerializer.Deserialize<ComponentType>(context);

            Assert.AreEqual(resp.Name, "dummyCT");
        }

        /// <summary>
        /// Request to Find Invalid ComponentType
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task ComponentType_Find_Invalid()
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
        /// Request to Get All ComponentType
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task ComponentType_Get_Valid()
        {
            // arrange
            DbCommand cmd = DatabaseHelper.GetCommand();
            cmd.CommandText = "Select count(1) from ComponentType";
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
        public async Task ComponentType_Post_Valid()
        {
            // arrange
            DbCommand cmd = DatabaseHelper.GetCommand();
            ComponentType ctype = new ComponentType()
            {
                ComponentTypeID = null,
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

            ComponentType res = JsonSerializer.Deserialize<ComponentType>(content);
            Assert.IsTrue(res.Name == ctype.Name);

        }

        /// <summary>
        /// Request to Delete Valid ComponentType
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task ComponentType_Delete_Valid()
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
        /// Request to Delete Invalid ComponentType
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task ComponentType_Delete_Invalid()
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
