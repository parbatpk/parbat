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
    public class StudentTest : BaseTest
    {
        /// <summary>
        /// Constructor
        /// </summary>
        public StudentTest()
        {
            _serviceUri = base.GetUrl("/StudentTest/");
        }


        /// <summary>
        /// Request to get MAX ID from StudentTable
        /// </summary>
        /// <returns></returns>
        public long GetMax()
        {
            long max = 0;

            DbCommand cmd = DatabaseHelper.GetCommand();
            cmd.Connection.Open();
            cmd.CommandText = string.Format(
                "Select max(StudentID) from Student");
            max = Convert.ToInt64(cmd.ExecuteScalar());
            cmd.Connection.Close();

            return max;
        }

        /// <summary>
        /// Request to Insert into StudentTable
        /// </summary>
        /// <param name="Identifier"></param>
        /// <param name="FirstName"></param>
        /// <param name="ShortName"></param>
        /// <returns></returns>
        public long Insert(string Identifier, string FirstName, string ShortName)
        {
            DbCommand cmd = DatabaseHelper.GetCommand();
            cmd.Connection.Open();
            cmd.CommandText = string.Format(
                "insert into Student (Identifier, Name, ShortName) values('{0}', '{1}', '{2}'); select scope_identity()",
                Identifier, FirstName, ShortName);
            long id = Convert.ToInt64(cmd.ExecuteScalar());
            cmd.Connection.Close();

            return id;
        }


        /// <summary>
        /// Request to Find Valid Student
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task Student_Find_Valid()
        {
            long id = Insert("D", "Insert Dummy", "ID");

            //act
            var client = AppServer.Instance.CreateClient();
            var request = base.CreateGetMessage(_serviceUri + id);
            var respones = await client.SendAsync(request);


            //assert
            respones.EnsureSuccessStatusCode();
            string content = await respones.Content.ReadAsStringAsync();
            Student resp = JsonSerializer.Deserialize<Student>(content);

            Assert.AreEqual(resp.FirstName, "Insert Dummy");
        }


        /// <summary>
        /// Request to Find Invalid Student
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task Student_Find_Invalid()
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
        /// Request to Get ALL Student
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task Student_Get_Valid()
        {
            // arrange
            DbCommand cmd = DatabaseHelper.GetCommand();
            cmd.Connection.Open();
            cmd.CommandText = "Select count(1) from Student";
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
        /// Request to ??
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task Student_Post_Valid()
        {
            // arrange
            DbCommand cmd = DatabaseHelper.GetCommand();

            Student ss = new Student()
            {
                StudentID = null,
                FirstName = "Insert "
            };

            // act
            string url = _serviceUri;
            var rawdata = JsonSerializer.Serialize<object>(ss);
            var inputData = new StringContent(rawdata, Encoding.Default, "application/json");
            var response = await AppServer.Instance.CreateClient().PostAsync(url, inputData);

            // assert
            response.EnsureSuccessStatusCode();
            var content = await response.Content.ReadAsStringAsync();

            Student res = JsonSerializer.Deserialize<Student>(content);
            Assert.IsTrue(res.FirstName == ss.FirstName);
        }

        /// <summary>
        /// Request to Delete Valid Student
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task Student_Delete_Valid()
        {
            long id = Insert("DD", "Delete", "d");

            //act 
            var client = AppServer.Instance.CreateClient();
            var respones = await client.DeleteAsync(_serviceUri + id);

            //assert
            respones.EnsureSuccessStatusCode();
        }


        /// <summary>
        /// Request to Delete Invalid Student
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task Student_Delete_Invalid()
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

