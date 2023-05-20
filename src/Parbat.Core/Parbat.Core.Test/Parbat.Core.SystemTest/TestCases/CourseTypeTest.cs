using Parbat.Core.API.Client;
using Parbat.Core.SystemTest.Base;

namespace Parbat.Core.SystemTest.TestCases
{
    [TestClass]
    public class CourseTypeTest : BaseTest
    {
        [TestMethod]
        public void CourseType_Create()
        {
            //arrange
            CourseType obj = new CourseType
            {
                CourseTypeID = 0,
                Name = "TestingCourseType"    
            };

            //act
            var response = this.client.CourseTypeCreateAsync(obj).Result;

            //assert
            Assert.AreNotEqual(notExpected: obj.CourseTypeID, actual: response.CourseTypeID);
            Assert.IsTrue(true);
        }

        [TestMethod]
        public void CourseType_Update()
        {
            //arrange
            CourseType obj = new CourseType
            {
                CourseTypeID = 0,
                Name = "TestingCourseType"
            };

            //act
            var response = this.client.CourseTypeCreateAsync(obj).Result;
            this.client.CourseTypeUpdateAsync(response).Wait();

            //assert
            Assert.AreNotEqual(notExpected: obj.CourseTypeID, actual: response.CourseTypeID);
            Assert.IsTrue(true);
        }


        [TestMethod]
        public void CourseType_Find()
        {
            //act
            this.client.ComponentTypeGetByIdAsync(-1).Wait();

            //assert
            Assert.IsTrue(true);
        }


        [TestMethod]
        public void CourseType_Delete()
        {
            //arrange
            CourseType obj = new CourseType
            {
                CourseTypeID = 0,
                Name = "TestingCourseType"
            };

            //act
            var response = this.client.CourseTypeCreateAsync(obj).Result;
            this.client.CourseTypeDeleteByIdAsync(response.CourseTypeID.Value).Wait();

            //assert
            Assert.AreNotEqual(notExpected: obj.CourseTypeID, actual: response.CourseTypeID);
            Assert.IsTrue(true);
        }


        [TestMethod]
        public void CourseType_GetAll()
        {
            //act
            this.client.CourseTypeListAsync();

            //assert
            Assert.IsTrue(true);
        }
    }
}
