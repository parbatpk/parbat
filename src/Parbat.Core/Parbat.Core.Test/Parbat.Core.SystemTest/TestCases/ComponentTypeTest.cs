using Parbat.Core.API.Client;
using Parbat.Core.SystemTest.Base;

namespace Parbat.Core.SystemTest.TestCases
{
    [TestClass]
    public class ComponentTypeTest
    {

        [TestMethod]
        public void ComponentType_Create()
        {
            //arrange
            BaseTest test = new BaseTest();

            ComponentType componentType = new ComponentType
            {
                ComponentTypeID = -1,
                Name = "TestingCompoenet",
                IsRequired = true,
            };

            //act
            test.client.ComponentTypeCreateAsync(componentType).Wait();

            //assert
            Assert.IsTrue(true);
        }

        [TestMethod]
        public void ComponentType_Update()
        {
            //arrange
            BaseTest test = new BaseTest();

            ComponentType componentType = new ComponentType
            {
                ComponentTypeID = -1,
                Name = "TestingCompoenetUpdate",
                IsRequired = false,
            };

            //act
            var response = test.client.ComponentTypeCreateAsync(componentType).Result;
            test.client.ComponentTypeUpdateAsync(response).Wait();

            //assert
            Assert.IsTrue(true);
        }


        [TestMethod]
        public void ComponentType_Find()
        {
            //arrange
            BaseTest test = new BaseTest();

            //act
            test.client.ComponentTypeGetByIdAsync(-1).Wait();

            //assert
            Assert.IsTrue(true);
        }


        [TestMethod]
        public void ComponentType_Delete()
        {
            //arrange
            BaseTest test = new BaseTest();

            ComponentType componentType = new ComponentType
            {
                ComponentTypeID = -1,
                Name = "TestingCompoenetUpdate",
                IsRequired = false,
            };

            //act
            var response = test.client.ComponentTypeCreateAsync(componentType).Result;
            test.client.ComponentTypeDeleteByIdAsync(response.Key).Wait();

            //assert
            Assert.IsTrue(true);
        }
    }
}
