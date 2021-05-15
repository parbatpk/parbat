﻿using Microsoft.VisualStudio.TestTools.UnitTesting;
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
    class CourseTest:BaseTest
    {
        public CourseTest()
        {
            _serviceUri = base.GetUrl("/Course/");
        }


        private long GetMax()
        {
            long max = 0;
            DbCommand cmd = DatabaseHelper.GetCommand();
            cmd.Connection.Open();
            cmd.CommandText = "Select max(CourseID) from Course";
            max = Convert.ToInt64(cmd.ExecuteScalar());
            cmd.Connection.Close();
            return max;
        }


        private long Insert(string name, string ShortName, long OwnerID, 
                                int TheoryID, int LabCredit, string Code, long CourseTypeID)
        {
            DbCommand cmd = DatabaseHelper.GetCommand();
            cmd.Connection.Open();
            cmd.CommandText = string.Format(
                "Insert into Course (Name), (ShortName), (OwnerID), (TheoryCredit), (LabCredit), " +
                "(Code), (CourseTypeID) " +
                "values('{0}, {1}, {2}, {3}, {4}, {5}, {6}'); select scope_identity()"
                , name, ShortName, OwnerID, TheoryID, LabCredit, Code, CourseTypeID);
            long id = Convert.ToInt64(cmd.ExecuteScalar());
            cmd.Connection.Close();
            return id;
        }

        [TestMethod]
        private async Task Course_Find_Valid()
        {
            long id = Insert("dummyC","dmC",1,1,1,"dmy",1);

            //act
            var request = base.CreateGetMessage(_serviceUri + id);
            var client = AppServer.Instance.CreateClient();
            var respones = await client.SendAsync(request);

            //assert
            respones.EnsureSuccessStatusCode();
            string context = await respones.Content.ReadAsStringAsync();
            Course resp = JsonSerializer.Deserialize<Course>(context);

            Assert.AreEqual(resp.Name, "dummyC");
            Assert.AreEqual(resp.ShortName, "dmC");
            Assert.AreEqual(resp.OwnerID, 1);
            Assert.AreEqual(resp.TheoryCredit, 1);
            Assert.AreEqual(resp.LabCredit, 1);
            Assert.AreEqual(resp.Code, "dmy");
            Assert.AreEqual(resp.CourseTypeID, 1);
        }


        [TestMethod]
        public async Task Course_Find_Invalid()
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

        [TestMethod]
        public async Task Course_Get_Valid()
        {
            // arrange
            DbCommand cmd = DatabaseHelper.GetCommand();
            cmd.CommandText = "Select count(1) from Course";
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


        [TestMethod]
        public async Task Course_Post_Valid()
        {
            // arrange
            DbCommand cmd = DatabaseHelper.GetCommand();
            Course c = new Course()
            {
                CourseID = null,
                Name = "Insertion Test",
            };

            // act
            string url = _serviceUri;
            var rawdata = JsonSerializer.Serialize<object>(c);
            var inputData = new StringContent(rawdata, Encoding.Default, "application/json");
            var response = await AppServer.Instance.CreateClient().PostAsync(url, inputData);

            // assert
            response.EnsureSuccessStatusCode();
            var content = await response.Content.ReadAsStringAsync();

            Course res = JsonSerializer.Deserialize<Course>(content);
            Assert.IsTrue(res.Name == c.Name);

        }

        [TestMethod]
        public async Task Course_Delete_Valid()
        {
            // arrange
            long id = Insert("Delete","d",1,1,1,"c",1);

            //act
            var client = AppServer.Instance.CreateClient();
            var response = await client.DeleteAsync(_serviceUri + id);

            //assert
            response.EnsureSuccessStatusCode();
        }


        [TestMethod]
        public async Task Course_Delete_Invalid()
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