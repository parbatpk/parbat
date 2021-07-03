using System;
using System.Net;
using System.Collections.Generic;
using System.Data.Common;
using System.Text;
using System.Threading.Tasks;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace CoreServicesTest
{
    //NOTE TWO TEST METHODS IS NOT WRITTEN YET  
    //1-RegisterStatus_Get_Valid
    //2-RegisterStatus_Post_Valid

    [TestClass]
    public class BatchTest : BaseTest
    {
        /// <summary>
        /// Constructor
        /// </summary>
        public BatchTest()
        {
            _serviceUri = base.GetUrl("/Batch/");
        }


        /// <summary>
        /// Request to get MAX ID from BatachTable
        /// </summary>
        /// <returns></returns>
        public long GetMax()
        {
            long max = 0;

            DbCommand cmd = DatabaseHelper.GetCommand();
            cmd.Connection.Open();
            cmd.CommandText = string.Format(
                "select max(BatchID) from Batch");
            max = Convert.ToInt64(cmd.ExecuteScalar());
            cmd.Connection.Close();

            return max;
        }


        /// <summary>
        /// Request to Insert into BatacTable
        /// </summary>
        /// <param name="Name"></param>
        /// <param name="ShortName"></param>
        /// <param name="AdmissionYear"></param>
        /// <param name="GraduationYear"></param>
        /// <param name="OrgUnitID"></param>
        /// <param name="CurriculumID"></param>
        /// <returns></returns>
        public long Insert(string Name, string ShortName, int AdmissionYear, int GraduationYear,
                                long OrgUnitID, long CurriculumID)
        {
            DbCommand cmd = DatabaseHelper.GetCommand();
            cmd.Connection.Open();
            cmd.CommandText = string.Format(
                "insert into Batch(Name, ShortName, AdmissionYear, GraduationYear, OrgUnitID, CurriculumID)" +
                "values('{0}','{1}','{2}','{3}','{4}','{5}'); select scope_identity()",
                Name, ShortName, AdmissionYear, GraduationYear, OrgUnitID, CurriculumID);
            long id = Convert.ToInt64(cmd.ExecuteScalar());
            cmd.Connection.Close();

            return id;
        }


        /// <summary>
        /// Request to Find Valid Batch
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task Batch_Find_Valid()
        {
            long id = Insert("Find", "F", 1, 1, 1, 1);

            //act
            var client = AppServer.Instance.CreateClient();
            var request = base.CreateGetMessage(_serviceUri + id);
            var respones = await client.SendAsync(request);

            //assert
            respones.EnsureSuccessStatusCode();
            string context = await respones.Content.ReadAsStringAsync();

            //Required Model Class For Assert
        }


        /// <summary>
        /// Request to Find Invalid Batch
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task Batch_Find_Invalid()
        {
            long max = GetMax();

            //act 
            var client = AppServer.Instance.CreateClient();
            var request = base.CreateGetMessage((_serviceUri) + (max + 1));
            var respones = await client.SendAsync(request);

            //assert
            respones.EnsureSuccessStatusCode();
            Assert.AreEqual(HttpStatusCode.NotFound, respones.StatusCode);
        }


        /// <summary>
        /// Request to Delete Valid Batch
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task Batch_Delete_Valid()
        {
            long id = Insert("Delete", "D", 1, 1, 1, 2);

            //act
            var client = AppServer.Instance.CreateClient();
            var respones = await client.DeleteAsync(_serviceUri + id);

            //assert 
            respones.EnsureSuccessStatusCode();
            
        }


        /// <summary>
        /// Request to Delete Invalid Batch
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task Batch_Delete_Invalid()
        {
            long max = GetMax();

            //act 
            var client = AppServer.Instance.CreateClient();
            var respones = await client.DeleteAsync((_serviceUri) + (max + 1));

            //assert
            Assert.IsTrue(HttpStatusCode.NotFound == respones.StatusCode);

        }

    }
}
