using Parbat.Core.BaseRepository;

namespace Parbat.Core.DBRepository
{
    public class DBRepositoryFactroy : IRepositoryFactory
    {
        ICourseRepository _courseRepository;
        ICourseTypeRepository _courseTypeRepository;
        IComponentRepository _componentRepository;

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

        public IComponentRepository ComponentRepository
        {
            get
            {
                if(_componentRepository == null)
                {
                    _componentRepository = new ComponentRepository();
                }

                return _componentRepository;
            }
        }
    }
}
