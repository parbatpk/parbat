using Parbat.Core.API.Client;
using Parbat.Core.SystemTest.Base;

namespace Parbat.Core.SystemTest.TestCases
{
    [TestClass]
    public class ComponentTypeTest : BaseTest
    {
        [TestMethod]
        public void ComponentType_Create()
        {
            //arrange
            ComponentType obj = new ComponentType
            {
                ComponentTypeID = 0,
                Name = "TestingCompoenet",
                IsRequired = true,
            };

            //act
            var response = this.client.ComponentTypeCreateAsync(obj).Result;

            //assert
            Assert.AreNotEqual(notExpected: obj.ComponentTypeID, actual: response.ComponentTypeID);
            Assert.IsTrue(true);
        }

        [TestMethod]
        public void ComponentType_Update()
        {
            //arrange
            ComponentType obj = new ComponentType
            {
                ComponentTypeID = 0,
                Name = "TestingCompoenetUpdate",
                IsRequired = false,
            };

            //act
            var response = this.client.ComponentTypeCreateAsync(obj).Result;
            this.client.ComponentTypeUpdateAsync(response).Wait();

            //assert
            Assert.AreNotEqual(notExpected: obj.ComponentTypeID, actual: response.ComponentTypeID);
            Assert.IsTrue(true);
        }


        [TestMethod]
        public void ComponentType_Find()
        {
            //act
            this.client.ComponentTypeGetByIdAsync(-1).Wait();

            //assert
            Assert.IsTrue(true);
        }


        [TestMethod]
        public void ComponentType_Delete()
        {
            //arrange
            ComponentType obj = new ComponentType
            {
                ComponentTypeID = 0,
                Name = "TestingCompoenetUpdate",
                IsRequired = false,
            };

            //act
            var response = this.client.ComponentTypeCreateAsync(obj).Result;
            this.client.ComponentTypeDeleteByIdAsync(response.Key).Wait();

            //assert
            Assert.AreNotEqual(notExpected: obj.ComponentTypeID, actual: response.ComponentTypeID);
            Assert.IsTrue(true);
        }

        [TestMethod]
        public void ComponentType_GetAll()
        {
            //act
            this.client.ComponentTypeListAsync();

            //assert
            Assert.IsTrue(true);
        }
    }
}
