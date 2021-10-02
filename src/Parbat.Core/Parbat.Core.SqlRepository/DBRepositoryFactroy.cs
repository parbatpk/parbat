using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;

namespace Parbat.Core.DBRepository
{
    public class DBRepositoryFactroy : IRepositoryFactory
    {
        ICourseRepository _courseRepository;
        ICourseTypeRepository _courseTypeRepository;
        IComponentRepository _componentRepository;
        IComponentTypeRepository _componentTypeRepository;
        ICurriculumRepository _curriculumRepository;

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

        public IComponentTypeRepository ComponentTypeRepository
        {
            get
            {
                if (_componentTypeRepository == null)
                {
                    _componentTypeRepository = new ComponentTypeRepository();
                }

                return _componentTypeRepository;
            }
        }

        public ICurriculumRepository CurriculumRepository
        {
            get
            {
                if(_curriculumRepository == null)
                {
                    _curriculumRepository = new CurriculumRepository(); 
                }

                return _curriculumRepository;
            }
        }
    }
}
