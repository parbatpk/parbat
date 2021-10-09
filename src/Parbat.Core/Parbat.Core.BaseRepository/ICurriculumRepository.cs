using Parbat.Core.DataObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Parbat.Core.BaseRepository
{
    public interface ICurriculumRepository : IGenericRepository<Curriculum>
    {
        IEnumerable<Curriculum> ComponentTotalCreditCourse(long id);

        IEnumerable<Curriculum> GetOwnerUnit(long id);

        IEnumerable<Curriculum> GetCurriculumType(long id);
    }
}
