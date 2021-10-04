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
        IComponentCourseRepository _componentCourseRepository;
        ICurriculumTypeRepository _curriculumTypeRepository;
        IBatchRepository _batchRepository;
        IOrgUnitRepository _orgUnitRepository;
        IOrgUnitTypeRepository _orgUnitTypeRepository;
        ITermRepository _termRepository;
        IStudentGroupRepository _studentGroupRepository;

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

        public IComponentCourseRepository ComponentCourseRepository
        {
            get
            {
                if (_componentCourseRepository == null)
                {
                    _componentCourseRepository = new ComponentCourseRepository();
                }

                return _componentCourseRepository;
            }
        }

        public ICurriculumTypeRepository CurriculumTypeRepository
        {
            get
            {
                if(_curriculumTypeRepository == null)
                {
                    _curriculumTypeRepository = new CurriculumTypeRepository();
                }

                return _curriculumTypeRepository;
            }
        }

        public IBatchRepository BatchRepository
        {
            get
            {
                if(_batchRepository == null)
                {
                    _batchRepository = new BatchRepository();
                }

                return _batchRepository;
            }
        }

        public IOrgUnitRepository OrgUnitRepository
        {
            get
            {
                if(_orgUnitRepository == null)
                {
                    _orgUnitRepository = new OrgUnitRepository();
                }

                return _orgUnitRepository;
            }
        }

        public IOrgUnitTypeRepository OrgUnitTypeRepository
        {
            get
            {
                if (_orgUnitTypeRepository == null)
                {
                    _orgUnitTypeRepository = new OrgUnitTypeRepository();
                }

                return _orgUnitTypeRepository;
            }
        }

        public ITermRepository TermRepository
        {
            get
            {
                if(_termRepository == null)
                {
                    _termRepository = new TermRepository();
                }

                return _termRepository;
            }
        }

        public IStudentGroupRepository StudentGroupRepository
        {
            get
            {
                if (_studentGroupRepository == null)
                {
                    _studentGroupRepository = new StudentGroupRepository();
                }

                return _studentGroupRepository;
            }
        }
    }
}
