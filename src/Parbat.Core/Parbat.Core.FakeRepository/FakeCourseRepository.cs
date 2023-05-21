using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using System;
using System.Collections.Generic;

namespace Parbat.Core.FakeRepository
{
    public class FakeCourseRepository : FakeRepositoryBase<Course>, ICourseRepository
    {
        public IEnumerable<Course> GetAllCourseSpecificOrgUnit(long ownerId)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<OrgUnit> GetAllOrgUnitContainsCourse()
        {
            throw new NotImplementedException();
        }
    }
}
