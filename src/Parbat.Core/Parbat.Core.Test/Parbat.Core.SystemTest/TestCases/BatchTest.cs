using Parbat.Core.API.Client;
using Parbat.Core.SystemTest.Base;

namespace Parbat.Core.SystemTest.TestCases
{
    [TestClass]
    public class BatchTest : BaseTest
    {
        [TestMethod]
        public void Batch_Create()
        {
            //arrange
            Batch obj1 = new Batch
            {
                BatchID = 0,
                ShortName = "TestShortName",
                Name = "TestName",
                AdmissionYear = 2023,
                GraduationYear = 2027,
                OrgUnitID = 1,
                CurriculumID = 1
            };

            OrgUnit obj2 = new OrgUnit
            {
                OrgUnitID = 0,
                OrgUnitTypeID = 0,
                ShortName = "TestOrgShortName",
                Name = "TestName",
                ParentUnitID = null,
                IsAllowAdmission = true
            };

            OrgUnitType obj3 = new OrgUnitType
            {
                OrgUnitTypeID = 0,
                ShortName = "TestShortName",
                Name = "TestName"
            };

            //act
            var orgType = this.client.OrgUnitTypeCreateAsync(obj3).Result;
            obj2.OrgUnitTypeID = orgType.Key;
            var org = this.client.OrgUnitCreateAsync(obj2).Result;
            obj1.OrgUnitID = org.Key;
            var response = this.client.BatchCreateAsync(obj1).Result;


            //assert
            Assert.AreNotEqual(notExpected: obj1.BatchID, actual: response.BatchID);
            Assert.IsTrue(true);
        }


        [TestMethod]
        public void Batch_Update()
        {
            //arrange
            Batch obj1 = new Batch
            {
                BatchID = 0,
                ShortName = "TestShortName",
                Name = "TestName",
                AdmissionYear = 2023,
                GraduationYear = 2027,
                OrgUnitID = 1,
                CurriculumID = 1
            };

            OrgUnit obj2 = new OrgUnit
            {
                OrgUnitID = 0,
                OrgUnitTypeID = 0,
                ShortName = "TestOrgShortName",
                Name = "TestName",
                ParentUnitID = null,
                IsAllowAdmission = true
            };

            OrgUnitType obj3 = new OrgUnitType
            {
                OrgUnitTypeID = 0,
                ShortName = "TestShortName",
                Name = "TestName"
            };

            //act
            var orgType = this.client.OrgUnitTypeCreateAsync(obj3).Result;
            obj2.OrgUnitTypeID = orgType.Key;
            var org = this.client.OrgUnitCreateAsync(obj2).Result;
            obj1.OrgUnitID = org.Key;
            var response = this.client.BatchCreateAsync(obj1).Result;
            this.client.BatchUpdateAsync(response);

            //assert
            Assert.AreNotEqual(notExpected: obj1.BatchID, actual: response.BatchID);
            Assert.IsTrue(true);
        }


        [TestMethod]
        public void Batch_Find()
        {
            //act 
            this.client.BatchGetByIdAsync(-1);

            //assert
            Assert.IsTrue(true);
        }


        [TestMethod]
        public void Batch_Delete()
        {
            //arrange
            Batch obj1 = new Batch
            {
                BatchID = 0,
                ShortName = "TestShortName",
                Name = "TestName",
                AdmissionYear = 2023,
                GraduationYear = 2027,
                OrgUnitID = 1,
                CurriculumID = 1
            };

            OrgUnit obj2 = new OrgUnit
            {
                OrgUnitID = 0,
                OrgUnitTypeID = 0,
                ShortName = "TestOrgShortName",
                Name = "TestName",
                ParentUnitID = null,
                IsAllowAdmission = true
            };

            OrgUnitType obj3 = new OrgUnitType
            {
                OrgUnitTypeID = 0,
                ShortName = "TestShortName",
                Name = "TestName"
            };

            //act
            var orgType = this.client.OrgUnitTypeCreateAsync(obj3).Result;
            obj2.OrgUnitTypeID = orgType.Key;
            var org = this.client.OrgUnitCreateAsync(obj2).Result;
            obj1.OrgUnitID = org.Key;
            var response = this.client.BatchCreateAsync(obj1).Result;
            this.client.BatchDeleteByIdAsync(response.Key);

            //assert
            Assert.AreNotEqual(notExpected: obj1.BatchID, actual: response.BatchID);
            Assert.IsTrue(true);
        }


        [TestMethod]
        public void Batch_GetAll()
        {
            //act
            this.client.BatchListAsync();

            //assert
            Assert.IsTrue(true);
        }
    }
}
