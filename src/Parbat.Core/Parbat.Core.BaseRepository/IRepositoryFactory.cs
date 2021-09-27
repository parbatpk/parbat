using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Parbat.Core.BaseRepository
{
    public interface IRepositoryFactory
    {
        ICourseRepository CourseRepository { get; }
    }
}
