using Microsoft.VisualStudio.TestTools.UnitTesting;
using Parbat.Core.DataObjects.Models;
using Parbat.Data;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.Common;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace Parbat.Core.SystemTest.Testcases
{
    [TestClass]
    public class ClassTest : BaseTest
    {
        /// <summary>
        /// set base URL in constructor
        /// </summary>
        public ClassTest()
        {
            _serviceUri = base.GetUrl("/Class/");
        }

        /// <summary>
        /// Get Max ID of Class Table
        /// </summary>
        /// <returns></returns>
        private long GetMax()
        {
            ;
            long max = 0;
            string query = string.Format("" +
                "Select max(ClassID) from Class");

            DbCommand cmd = Database.Instance.CreateCommand(query);
            max = Convert.ToInt64(Database.Instance.ExecuteScalar(cmd));

            return max;
        }

        /// <summary>
        /// Insert dummy data in Class table
        /// </summary>
        /// <param name="ShortName"></param>
        /// <param name="Name"></param>
        /// <param name="Capacity"></param>
        /// <returns></returns>
        private long Insert(string ShortName, string Name, int Capacity)
        {
            ;
            string query = string.Format(
                "Insert into Class(ShortName, [Name], Capacity)" +
                "values('{0}', '{1}', {2});" +
                "Select Scope_Identity()", ShortName, Name, Capacity);
            
            DbCommand cmd = Database.Instance.CreateCommand(query);
            long id = Convert.ToInt64(Database.Instance.ExecuteScalar(cmd));

            return id;
        }


        /// <summary>
        /// Count the record in Class Table
        /// </summary>
        /// <returns></returns>
        private long Count()
        {
            string query = string.Format(
                "Select count(1) from Class");
            DbCommand cmd = Database.Instance.CreateCommand(query);
            long count = Convert.ToInt64(Database.Instance.ExecuteScalar(cmd));

            return count;
        }

        /// <summary>
        /// Request for Find by ID Valid
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task Class_Find_Valid()
        {
            long id = Insert("BS CS Testing", "System Testing", 40);

            //act
            var request = base.CreateGetMessage(_serviceUri + id);
            var client = AppServer.Instance.CreateClient();
            var response = await client.SendAsync(request);

            //assert
            response.EnsureSuccessStatusCode();

            string context = await response.Content.ReadAsStringAsync();
            Class resp = JsonSerializer.Deserialize<Class>(context);

            Assert.AreEqual(id, resp.ClassID);
            Assert.AreEqual("BS CS Testing", resp.ShortName);
            Assert.AreEqual("System Testing", resp.Name);
            Assert.AreEqual(40, resp.Capacity);
        }

        /// <summary>
        /// Request for Find by ID Invalid
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task Class_Find_Invalid()
        {
            long maxID = GetMax();

            //Act
            var request = base.CreateGetMessage(_serviceUri + (maxID + 1));
            var client =  AppServer.Instance.CreateClient();
            var response = await client.SendAsync(request);

            //Assert
            Assert.AreEqual(HttpStatusCode.NoContent, response.StatusCode);
        }

        /// <summary>
        /// Get Valid -> Request for list of class
        /// </summary>
        [TestMethod]
        public async Task Class_Get_Valid()
        {
            //Arrange
            long count = Count();

            //Act
            var request = base.CreateGetMessage(_serviceUri);
            var client = AppServer.Instance.CreateClient();
            var response = await client.SendAsync(request);
            
            var content = await response.Content.ReadAsStringAsync();
            List<Hashtable> data = JsonSerializer.Deserialize<List<Hashtable>>(content);

            //Assert
            response.EnsureSuccessStatusCode();
            Assert.IsTrue(data.Count == count);
        }

        /// <summary>
        /// Delte Post Valid, Insert and Validate
        /// </summary>
        [TestMethod]
        public async Task Class_Post_Valid()
        {
            //Arrange
            Class c = new Class
            {
                ClassID = 10, //fake
                ShortName = "Post",
                Name = "Post Class testing",
                Capacity = 40,
                
            };

            //act
            var rawdata = JsonSerializer.Serialize<object>(c);
            var inputdata = new StringContent(rawdata, Encoding.Default, "application/json");
            var response = await AppServer.Instance.CreateClient().PostAsync(_serviceUri, inputdata);

            //assert
            var content = await response.Content.ReadAsStringAsync();
            Class resp = JsonSerializer.Deserialize<Class>(content);

            Assert.IsTrue(resp.ShortName ==  c.ShortName);
        }


        /// <summary>
        /// Delelte valid data found
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task Class_Delete_Valid()
        {
            //Arrange
            long id = Insert("BS CS Testing", "System Testing Class Delete Valid", 40);

            //Act
            var client = AppServer.Instance.CreateClient();
            var response = await client.DeleteAsync(_serviceUri + id);

            //Assert
            response.EnsureSuccessStatusCode();
        }


        /// <summary>
        /// Delete Invalid not data found
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task Class_Delete_Invalid()
        {
            //Arrange
            long maxID = GetMax();

            //Act
            var client = AppServer.Instance.CreateClient();
            var response = await client.DeleteAsync(_serviceUri + (maxID + 1));

            //Assert
            Assert.IsTrue(response.StatusCode == HttpStatusCode.BadRequest);
        }
    }
}
