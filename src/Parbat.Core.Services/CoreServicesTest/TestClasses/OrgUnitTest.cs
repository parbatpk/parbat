﻿using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Text;
using System.Threading.Tasks;
using System.Text.Json;
using ParbatCore.Models;
using System.Net;
using System.Collections;
using System.Net.Http;

namespace CoreServicesTest
{
    [TestClass]
    public class OrgUnitTest : BaseTest
    {
        /// <summary>
        /// Constructor
        /// </summary>
        public OrgUnitTest()
        {
            _serviceUri = base.GetUrl("/OrgUnitTest/");
        }

        /// <summary>
        /// Request to get MAX ID from OrgUnit
        /// </summary>
        /// <returns></returns>
        public long GetMax()
        {
            long max = 0;

            DbCommand cmd = DatabaseHelper.GetCommand();
            cmd.Connection.Open();
            cmd.CommandText = string.Format(
                "Select max(OrgUnitID) from OrgUnit");
            max = Convert.ToInt64(cmd.ExecuteScalar());
            cmd.Connection.Close();

            return max;
        }

        /// <summary>
        /// Request to Insert into OrgUnit
        /// </summary>
        /// <param name="Name"></param>
        /// <param name="ShortName"></param>
        /// <param name="ParentUnitID"></param>
        /// <param name="IsAllowPermission"></param>
        /// <param name="OrgUnitTypeID"></param>
        /// <returns></returns>
        public long Insert(string Name, string ShortName, long ParentUnitID,
                                bool IsAllowAdmission, long OrgUnitTypeID)
        {
            DbCommand cmd = DatabaseHelper.GetCommand();
            cmd.Connection.Open();
            cmd.CommandText = string.Format(
                "insert into OrgUnit ([Name], ShortName, ParentUnitID, IsAllowAdmission, OrgUnitTypeID)" +
                "values('{0}', '{1}', '{2}', '{3}', '{4}'); select scope_identity()",
                Name, ShortName, ParentUnitID, IsAllowAdmission, OrgUnitTypeID);
            long id = Convert.ToInt64(cmd.ExecuteScalar());
            cmd.Connection.Close();

            return id;
        }


        /// <summary>
        /// Request to Find Invalid OrgUnit
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task OrgUnit_Find_Valid()
        {
            long id = Insert("Insert Dummy", "ID", 4, false, 5);

            //act
            var client = AppServer.Instance.CreateClient();
            var request = base.CreateGetMessage(_serviceUri + id);
            var respones = await client.SendAsync(request);


            //assert
            respones.EnsureSuccessStatusCode();
            string content = await respones.Content.ReadAsStringAsync();
            OrgUnit resp = JsonSerializer.Deserialize<OrgUnit>(content);

            Assert.AreEqual(resp.Name, "Insert Dummy");
        }


        /// <summary>
        /// Request to Find Invalid OrgUnit 
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task OrgUnit_Find_Invalid()
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
        /// Request to Get ALl OrgUnit
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task OrgUnit_Get_Valid()
        {
            // arrange
            DbCommand cmd = DatabaseHelper.GetCommand();
            cmd.Connection.Open();
            cmd.CommandText = "Select count(1) from OrgUnit";
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
        /// Request to???
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task OrgUnit_Post_Valid()
        {
            // arrange
            DbCommand cmd = DatabaseHelper.GetCommand();

            OrgUnit Ounit = new OrgUnit()
            {
                OrgUnitID = null,
                Name = "Insert "
            };

            // act
            string url = _serviceUri;
            var rawdata = JsonSerializer.Serialize<object>(Ounit);
            var inputData = new StringContent(rawdata, Encoding.Default, "application/json");
            var response = await AppServer.Instance.CreateClient().PostAsync(url, inputData);

            // assert
            response.EnsureSuccessStatusCode();
            var content = await response.Content.ReadAsStringAsync();

            OrgUnit res = JsonSerializer.Deserialize<OrgUnit>(content);
            Assert.IsTrue(res.Name == Ounit.Name);
        }


        /// <summary>
        /// Request to Delete Valid OrgUnit
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task OrgUnit_Delete_Valid()
        {
            long id = Insert("Delete Institute", "d", 1, false, 5);

            //act 
            var client = AppServer.Instance.CreateClient();
            var respones = await client.DeleteAsync(_serviceUri + id);

            //assert
            respones.EnsureSuccessStatusCode();
        }

        /// <summary>
        /// Request to Delete Invalid OrgUnit
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task OrgUnit_Delete_Invalid()
        {
            long max = GetMax();

            //act 
            var client = AppServer.Instance.CreateClient();
            var respones = await client.DeleteAsync(_serviceUri + (max + 1));

            //assert
            Assert.IsTrue(respones.StatusCode == HttpStatusCode.BadRequest);

        }


    }
}