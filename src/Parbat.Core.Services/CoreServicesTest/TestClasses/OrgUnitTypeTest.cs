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
    public class OrgUnitTypeTest : BaseTest
    {
        /// <summary>
        /// Constructor
        /// </summary>
        public OrgUnitTypeTest()
        {
            _serviceUri = base.GetUrl("/OrgUnitTypeTest");
        }

        /// <summary>
        /// Request to get MAX ID from OrgUnitType
        /// </summary>
        /// <returns></returns>
        public long GetMax()
        {
            long max = 0;

            DbCommand cmd = DatabaseHelper.GetCommand();
            cmd.Connection.Open();
            cmd.CommandText = string.Format(
                "Select max(OrgUnitTypeID) from OrgUnitType");
            max = Convert.ToInt64(cmd.ExecuteScalar());
            cmd.Connection.Close();

            return max;
        }


        /// <summary>
        /// Request to Insert into OrgUnitType
        /// </summary>
        /// <param name="Name"></param>
        /// <param name="ShortName"></param>
        /// <returns></returns>
        public long Insert(string Name, string ShortName)
        {
            DbCommand cmd = DatabaseHelper.GetCommand();
            cmd.Connection.Open();
            cmd.CommandText = string.Format(
                "insert into OrgUnitType (Name, ShortName) values('{0}', '{1}'); select scope_identity()",
                Name, ShortName);
            long id = Convert.ToInt64(cmd.ExecuteScalar());
            cmd.Connection.Close();

            return id;
        }


        /// <summary>
        /// Request to Find Valid OrgUnitType
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task OrgUnitType_Find_Valid()
        {
            long id = Insert("Insert Dummy", "ID");

            //act
            var client = AppServer.Instance.CreateClient();
            var request = base.CreateGetMessage(_serviceUri + id);
            var respones = await client.SendAsync(request);


            //assert
            respones.EnsureSuccessStatusCode();
            string content = await respones.Content.ReadAsStringAsync();
            OrgUnitType resp = JsonSerializer.Deserialize<OrgUnitType>(content);

            Assert.AreEqual(resp.Name, "Insert Dummy");
        }


        /// <summary>
        /// Request to Find Invalid OrgUnitType
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task OrgUnitType_Find_Invalid()
        {
            long max = GetMax();

            //act
            var client = AppServer.Instance.CreateClient();
            var request = base.CreateGetMessage((_serviceUri) + (max + 1));
            var respones = await client.SendAsync(request);

            //assert
            Assert.AreEqual(HttpStatusCode.NotFound, respones.StatusCode);
        }


        /// <summary>
        /// Request to Get ALL OrgUnitType
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task OrgUnitType_Get_Valid()
        {
            // arrange
            DbCommand cmd = DatabaseHelper.GetCommand();
            cmd.Connection.Open();
            cmd.CommandText = "Select count(1) from OrgUnitType";
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


        /// <summary>
        /// Request to??
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task OrgUnitType_Post_Valid()
        {
            // arrange
            DbCommand cmd = DatabaseHelper.GetCommand();

            OrgUnitType OType = new OrgUnitType()
            {
                OrgUnitTypeID = null,
                Name = "Insert "
            };

            // act
            string url = _serviceUri;
            var rawdata = JsonSerializer.Serialize<object>(OType);
            var inputData = new StringContent(rawdata, Encoding.Default, "application/json");
            var response = await AppServer.Instance.CreateClient().PostAsync(url, inputData);

            // assert
            response.EnsureSuccessStatusCode();
            var content = await response.Content.ReadAsStringAsync();

            OrgUnitType res = JsonSerializer.Deserialize<OrgUnitType>(content);
            Assert.IsTrue(res.Name == OType.Name);
        }


        /// <summary>
        /// Request to Delete Valid OrgUnitType
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task OrgUnitType_Delete_Valid()
        {
            long id = Insert("Delete", "d");

            //act 
            var client = AppServer.Instance.CreateClient();
            var respones = await client.DeleteAsync(_serviceUri + id);

            //assert
            respones.EnsureSuccessStatusCode();
        }


        /// <summary>
        /// Request to Delete Invalid OrgUnitType
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task OrgUnitType_Delete_Invalid()
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
