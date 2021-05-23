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
    public class ComponentCourseTest:BaseTest
    {
        /// <summary>
        /// Constructor
        /// </summary>
        public ComponentCourseTest()
        {
            _serviceUri = base.GetUrl("/ComponentCourse/");
        }


        /// <summary>
        /// Get the Max ID from ComponentCourseTable
        /// </summary>
        /// <returns></returns>
        private long GetMax()
        {
            long max = 0;

            DbCommand cmd = DatabaseHelper.GetCommand();
            cmd.Connection.Open();
            cmd.CommandText = string.Format(
                "Select max(ComponentCourseID) from ComponentCourse");
            max = Convert.ToInt64(cmd.ExecuteScalar());
            cmd.Connection.Close();

            return max;
        }

        /// <summary>
        /// Request to Insert into ComponentCourse
        /// </summary>
        /// <param name="ComponentID"></param>
        /// <param name="CourseID"></param>
        /// <returns></returns>
        private long Insert(int ComponentID, int CourseID)
        {
            DbCommand cmd = DatabaseHelper.GetCommand();
            cmd.Connection.Open();
            cmd.CommandText = string.Format(
                "Insert into ComponentCourse (ComponentID, CourseID)" +
                "values('{0}','{1}'); select scope_identity()"
                , ComponentID, CourseID);
            long id = Convert.ToInt64(cmd.ExecuteScalar());
            cmd.Connection.Close();
            return id;
        }

        /// <summary>
        /// Reqeuest to Insert into CourseTable
        /// </summary>
        /// <param name="name"></param>
        /// <param name="ShortName"></param>
        /// <param name="OwnerID"></param>
        /// <param name="TheoryID"></param>
        /// <param name="LabCredit"></param>
        /// <param name="Code"></param>
        /// <param name="CourseTypeID"></param>
        /// <returns></returns>
        private long Insert(string name, string ShortName, long OwnerID,
                                int TheoryID, int LabCredit, string Code, long CourseTypeID)
        {
            DbCommand cmd = DatabaseHelper.GetCommand();
            cmd.Connection.Open();
            cmd.CommandText = string.Format(
                "Insert into Course ([Name], ShortName, OwnerID, TheoryCredit, LabCredit, Code, CourseTypeID) " +
                "values('Delete', 'd', 1, 1, 1, 'c', 1); " +
                "select scope_identity()"
                , name, ShortName, OwnerID, TheoryID, LabCredit, Code, CourseTypeID);
            long id = Convert.ToInt64(cmd.ExecuteScalar());
            cmd.Connection.Close();
            return id;
        }

        /// <summary>
        /// Request to Insert into Component
        /// </summary>
        /// <param name="ShortName"></param>
        /// <param name="Name"></param>
        /// <param name="CurriculumID"></param>
        /// <param name="TotalCredit"></param>
        /// <param name="TotalCourses"></param>
        /// <param name="IsLimitCourses"></param>
        /// <param name="IsLimitCreditHrs"></param>
        /// <param name="ComponentTypeID"></param>
        /// <returns></returns>
        public long Insert(string ShortName, string Name, long CurriculumID, int TotalCredit, 
                            int TotalCourses, bool IsLimitCourses, bool IsLimitCreditHrs, long ComponentTypeID )
        {


            return CurriculumID;
        }



        /// <summary>
        ///  Request to Find the valid CourseComponent
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        private async Task ComponentCourse_Find_Valid()
        {
            //Few question ??
            long id = Insert(1,1);

            //act
            var request = base.CreateGetMessage(_serviceUri + id);
            var client = AppServer.Instance.CreateClient();
            var respones = await client.SendAsync(request);

            //assert
            respones.EnsureSuccessStatusCode();
            string context = await respones.Content.ReadAsStringAsync();
            ComponentCourse resp = JsonSerializer.Deserialize<ComponentCourse>(context);


            Assert.AreEqual(resp.ComponentID, 1);
            Assert.AreEqual(resp.CourseID, 1);
        }


        /// <summary>
        /// Reqeuest to Find the Invalid CourseComponent
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task ComponentCourse_Find_Invalid()
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
        /// Request to Get all record of ComponentCourse
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task ComponentType_Get_Valid()
        {
            // arrange
            DbCommand cmd = DatabaseHelper.GetCommand();
            cmd.CommandText = "Select count(1) from ComponentCourse";
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
        /// ???
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task ComponentCourse_Post_Valid()
        {
            // arrange
            DbCommand cmd = DatabaseHelper.GetCommand();
            ComponentCourse cc = new ComponentCourse()
            {
                ComponentCourseID = null,
                ComponentID = 1,
                CourseID = 3
            };

            // act
            string url = _serviceUri;
            var rawdata = JsonSerializer.Serialize<object>(cc);
            var inputData = new StringContent(rawdata, Encoding.Default, "application/json");
            var response = await AppServer.Instance.CreateClient().PostAsync(url, inputData);

            // assert
            response.EnsureSuccessStatusCode();
            var content = await response.Content.ReadAsStringAsync();

            ComponentCourse res = JsonSerializer.Deserialize<ComponentCourse>(content);
            Assert.IsTrue(res.ComponentID == cc.ComponentID);
            Assert.IsTrue(res.CourseID == cc.CourseID);

        }


        /// <summary>
        /// Request to Delete Record from ComponentCourse
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task ComponentCourse_Delete_Valid()
        {
            // arrange
            //before insert voiting duplicate key in object so firstly
            //insert in Component, Course
            //than on Insert dummy record in ComponentCourse

            long id = Insert(1,3);

            //act
            var client = AppServer.Instance.CreateClient();
            var response = await client.DeleteAsync(_serviceUri + id);

            //assert
            response.EnsureSuccessStatusCode();
        }

        /// <summary>
        /// Request to Delete Invalid From ComponentCourse
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task ComponentCourse_Delete_Invalid()
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
