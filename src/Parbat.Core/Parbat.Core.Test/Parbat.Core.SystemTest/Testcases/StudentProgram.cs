using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Parbat.Core.SystemTest.Testcases
{
    [TestClass]
    public class StudentProgram : BaseTest
    {
        public StudentProgram()
        {
           _serviceUri = base.GetUrl("/StudentProgram/");
        }

        [TestMethod]
        public void StudentProgram_Find_Valid()
        {

        }

        [TestMethod]
        public void StudentProgram_Find_Invalid()
        {

        }
        [TestMethod]
        public void StudentProgram_Get_Valid()
        {

        }

        [TestMethod]
        public void StudentProgram_Post_Valid()
        {

        }


        [TestMethod]
        public void StudentProgram_Delete_Valid()
        {

        }

        [TestMethod]
        public void StudentProgram_Delete_Invalid()
        {

        }

    }
}
