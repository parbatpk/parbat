using Microsoft.VisualStudio.TestTools.UnitTesting;
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
    public class CurriculumTest : BaseTest
    {
        /// <summary>
        /// Constructor
        /// </summary>
        public CurriculumTest()
        {
            _serviceUri = base.GetUrl("/Curriculum/");
        }


        /// <summary>
        /// Request to get MAX ID from CurriculumTable
        /// </summary>
        /// <returns></returns>
        private long GetMax()
        {
            long max = 0;

            DbCommand cmd = DatabaseHelper.GetCommand();
            cmd.CommandText = "Select max(CurriculumID) from Curriculum";

            cmd.Connection.Open();
            max = Convert.ToInt64(cmd.ExecuteScalar());
            cmd.Connection.Close();


            return max;
        }

        /// <summary>
        /// Request to Insert into CurriculumTable
        /// </summary>
        /// <param name="Name"></param>
        /// <param name="ShortName"></param>
        /// <param name="OwnerUnitID"></param>
        /// <param name="TotalCourses"></param>
        /// <param name="TotalCreditHrs"></param>
        /// <param name="IslimitCourses"></param>
        /// <param name="IslimitCreditHrs"></param>
        /// <param name="CurriculumTypeID"></param>
        /// <returns></returns>
        private long Insert(string Name, string ShortName, long OwnerUnitID, int TotalCourses, int TotalCreditHrs,
                                bool IslimitCourses, bool IslimitCreditHrs, long CurriculumTypeID)
        {
            DbCommand cmd = DatabaseHelper.GetCommand();
            cmd.Connection.Open();
            cmd.CommandText = string.Format(
                "Insert into Curriculum (Name, ShortName, OwnerUnitID, TotalCourses, TotalCreditHrs, IsLimitCourses, IsLimitCreditHrs, CurriculumTypeID)" +
                "values ('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}'); select scope_identity()",
                Name, ShortName, OwnerUnitID, TotalCourses, TotalCreditHrs, IslimitCourses, IslimitCreditHrs,
                CurriculumTypeID);

            long id = Convert.ToInt64(cmd.ExecuteScalar());
            cmd.Connection.Close();

            return id;
        }


        /// <summary>
        /// Request to Find Valid Curriculum
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task Curriculum_Find_Valid()
        {
            long id = Insert("DumName", "DN", 1, 1, 1, false, false, 1);

            //act
            var request = base.CreateGetMessage(_serviceUri + id);
            var client = AppServer.Instance.CreateClient();
            var respones = await client.SendAsync(request);

            //assert
            respones.EnsureSuccessStatusCode();

            string content = await respones.Content.ReadAsStringAsync();
            Curriculum resp = JsonSerializer.Deserialize<Curriculum>(content);

            Assert.AreEqual(resp.Name, "DumName");

        }

        /// <summary>
        /// Request to Find Invalid Curriculum
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task Curriculum_Find_Invalid()
        {
            long id = GetMax();

            //act 
            var client = AppServer.Instance.CreateClient();
            var request = base.CreateGetMessage((_serviceUri) + (id + 1));
            var respones = await client.SendAsync(request);

            //
            //respones.EnsureSuccessStatusCode();
            Assert.AreEqual(HttpStatusCode.NotFound, respones.StatusCode);
        }


        /// <summary>
        /// Request to Get ALL Curriculum
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task Curriculum_Get_Valid()
        {
            // arrange
            DbCommand cmd = DatabaseHelper.GetCommand();
            cmd.Connection.Open();
            cmd.CommandText = string.Format(
                "Select count(1) from Curriculum");
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
        public async Task Curriculum_Post_Valid()
        {
            // arrange
            DbCommand cmd = DatabaseHelper.GetCommand();

            Curriculum c = new Curriculum()
            {
                CurriculumID = null,
                Name = "Insertion Test",
                ShortName = "ShortName Insert Test",
                OwnerUnitID = 1,
                TotalCourses = 1,
                TotalCreditHrs = 1,
                IsLimitCourses = false,
                IsLimitCreditHrs = false,
                CurriculumTypeID = 1

            };

            // act
            string url = _serviceUri;
            var rawdata = JsonSerializer.Serialize<object>(c);
            var inputData = new StringContent(rawdata, Encoding.Default, "application/json");
            var response = await AppServer.Instance.CreateClient().PostAsync(url, inputData);

            // assert
            response.EnsureSuccessStatusCode();
            var content = await response.Content.ReadAsStringAsync();


            Curriculum res = JsonSerializer.Deserialize<Curriculum>(content);
            Assert.IsTrue(res.Name == c.Name);

        }


        /// <summary>
        /// Request to Delete Valid Curriculum
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task Curriculum_Delete_Valid()
        {
            // arrange
            long id = Insert("to delete", "t d", 2, 0, 130, true, false, 1);

            //act
            var client = AppServer.Instance.CreateClient();
            var response = await client.DeleteAsync(_serviceUri + id);

            //assert
            response.EnsureSuccessStatusCode();
        }


        /// <summary>
        /// Request to Delete Invalid Curriculum
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
