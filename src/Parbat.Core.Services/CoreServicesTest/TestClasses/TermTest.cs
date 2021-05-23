using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace CoreServicesTest
{
    //NOTE TWO TEST METHODS IS NOT WRITTEN YET  
    //1-RegisterStatus_Get_Valid
    //2-RegisterStatus_Post_Valid

    [TestClass]
    public class TermTest : BaseTest
    {
        /// <summary>
        /// Constructor
        /// </summary>
        public TermTest()
        {
            _serviceUri = base.GetUrl("/TermTest/");
        }

        /// <summary>
        /// Request to get MAX ID from TermTable
        /// </summary>
        /// <returns></returns>
        private long GetMax()
        {
            long max = 0;

            DbCommand cmd = DatabaseHelper.GetCommand();
            cmd.Connection.Open();

            cmd.CommandText = string.Format(
                "select max(TermID) from Term");
            max = Convert.ToInt64(cmd.ExecuteScalar());

            cmd.Connection.Close();

            return max;
        }

        /// <summary>
        /// Request to Insert into TermTable
        /// </summary>
        /// <param name="Name"></param>
        /// <param name="ShortName"></param>
        /// <param name="IsActive"></param>
        /// <param name="StartDate"></param>
        /// <param name="EndDate"></param>
        /// <returns></returns>
        private long Insert(string Name, string ShortName, bool IsActive, DateTime StartDate,
                                DateTime EndDate)
        {
            DbCommand cmd = DatabaseHelper.GetCommand();
            cmd.Connection.Open();

            cmd.CommandText = string.Format(
                "insert into Term([Name], ShortName, IsActive, StartDate, EndDate) " +
                "values('{0}','{1}','{2}','{3}','{4}'); select scope_identity()",
                Name, ShortName, IsActive, StartDate, EndDate);
            long id = Convert.ToInt64(cmd.ExecuteScalar());

            cmd.Connection.Close();

            return id;
        }



        /// <summary>
        /// Request to Find Valid Term
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task Term_Find_Valid()
        {
            long id = Insert("Dummy", "d", false, DateTime.Now, DateTime.Now);

            //act
            var client = AppServer.Instance.CreateClient();
            var request = base.CreateGetMessage(_serviceUri + id);
            var respones = await client.SendAsync(request);

            //assert 
            respones.EnsureSuccessStatusCode();
            string content = await respones.Content.ReadAsStringAsync();

            //requried Model Class  for assert 
        }

        /// <summary>
        /// Request to Find Invalid Term
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task Term_Find_Invalid()
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
        /// Request to Delete Valid Term
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task Term_Delete_Valid()
        {
            long id = Insert("Delete", "d", true, DateTime.Now, DateTime.Now);

            //act
            var client = AppServer.Instance.CreateClient();
            var respones = await client.DeleteAsync(_serviceUri + id);

            //assert
            respones.EnsureSuccessStatusCode();
        }

        /// <summary>
        /// Request to Delete Invalid Term
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task Term_Delete_Invalid()
        {
            long max = GetMax();

            //act
            var client = AppServer.Instance.CreateClient();
            var respones = await client.DeleteAsync((_serviceUri) + (max + 1));

            //assert
            Assert.IsTrue(HttpStatusCode.BadRequest == respones.StatusCode);

        }
    }
}
