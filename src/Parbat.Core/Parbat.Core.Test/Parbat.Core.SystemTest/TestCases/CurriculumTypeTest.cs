using Parbat.Core.API.Client;
using Parbat.Core.SystemTest.Base;

namespace Parbat.Core.SystemTest.TestCases
{
    [TestClass]
    public class CurriculumTypeTest : BaseTest
    {
        [TestMethod]
        public void CurriculumType_Create()
        {
            //arrange
            CurriculumType obj = new CurriculumType()
            {
                CurriculumTypeID = 0,
                Name = "TestCurriculumType"
            };

            //act
            var response = this.client.CurriculumTypeCreateAsync(obj).Result;

            //assert
            Assert.AreNotEqual(notExpected: obj.CurriculumTypeID, actual: response.CurriculumTypeID);
            Assert.IsTrue(true);
        }

        [TestMethod]
        public void CurriculumType_Update()
        {
            //arrange
            CurriculumType obj = new CurriculumType()
            {
                CurriculumTypeID = 0,
                Name = "TestCurriculumType"
            };

            //act
            var response = this.client.CurriculumTypeCreateAsync(obj).Result;
            this.client.CurriculumTypeUpdateAsync(response);

            //assert
            Assert.AreNotEqual(notExpected: obj.CurriculumTypeID, actual: response.CurriculumTypeID);
            Assert.IsTrue(true);
        }

        [TestMethod]
        public void CurriculumType_Find()
        {
            //act
            this.client.CurriculumTypeGetByIdAsync(-1);   

            //assert
            Assert.IsTrue(true);
        }

        [TestMethod]
        public void CurriculumType_Delete()
        {
            //arrange
            CurriculumType obj = new CurriculumType()
            {
                CurriculumTypeID = 0,
                Name = "TestCurriculumType"
            };

            //act
            var response = this.client.CurriculumTypeCreateAsync(obj).Result;
            this.client.CurriculumTypeDeleteByIdAsync(response.Key);

            //assert
            Assert.AreNotEqual(notExpected: obj.CurriculumTypeID, actual: response.CurriculumTypeID);
            Assert.IsTrue(true);
        }

        [TestMethod]
        public void CurriculumType_GetAll()
        {
            //act
            this.client.CurriculumTypeListAsync();

            //assert
            Assert.IsTrue(true);
        }
    }
}
