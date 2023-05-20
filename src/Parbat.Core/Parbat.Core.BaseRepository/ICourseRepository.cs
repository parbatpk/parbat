using Parbat.Core.DataObjects;
using System.Collections.Generic;

namespace Parbat.Core.BaseRepository
{
    public interface ICourseRepository : IGenericRepository<Course>
    {
        IEnumerable<OrgUnit> GetAllOrgUnitContainsCourse();

        IEnumerable<Course> GetAllCourseSpecificOrgUnit(long ownerId);
    }
}
