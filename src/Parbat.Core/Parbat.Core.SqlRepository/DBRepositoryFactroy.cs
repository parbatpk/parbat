using Parbat.Core.BaseRepository;

namespace Parbat.Core.DBRepository
{
    public class DBRepositoryFactroy : IRepositoryFactory
    {
        ICourseRepository _courseRepository;
        ICourseTypeRepository _courseTypeRepository;

        public ICourseRepository CourseRepository
        {
            get
            {
                if (_courseRepository == null)
                    _courseRepository = new CourseRepository();

                return _courseRepository;
            }
        }

        public ICourseTypeRepository CourseTypeRepository
        {
            get
            {
                if(_courseTypeRepository == null)
                {
                    _courseTypeRepository = new CourseTypeRepository();
                }

                return _courseTypeRepository;
            }
        }
    }
}
