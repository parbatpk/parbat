using Parbat.Core.DataObjects;
using System.Collections.Generic;

namespace Parbat.Core.BaseRepository
{
    public interface IOrgUnitRepository : IGenericRepository<OrgUnit>
    {
        IEnumerable<OrgUnit> FindParent(long id);
        IEnumerable<OrgUnit> GetAllbyParentUnitId(long id);
    }
}
