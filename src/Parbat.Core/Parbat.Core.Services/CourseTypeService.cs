using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using System.Collections.Generic;

namespace Parbat.Core.Services
{
    public class CourseTypeService : IService
    {
        protected IRepositoryFactory _factory;

        public CourseTypeService(IRepositoryFactory factory)
        {
            _factory = factory;
        }

        public IEnumerable<CourseType> GetAllCourses()
        {
            return _factory.CourseTypeRepository.GetAll();
        }

        public CourseType FindByID(long id)
        {
            return _factory.CourseTypeRepository.GetById(id);
        }

        public void Create(CourseType courseType)
        {
            _factory.CourseTypeRepository.Add(courseType);
        }

        public void Update(CourseType courseType)
        {
            if (courseType.CourseTypeID == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            var found = _factory.CourseTypeRepository.GetById(courseType.CourseTypeID.Value);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.CourseTypeRepository.Update(courseType);
        }

        public void Delete(long id)
        {
            var found = _factory.CourseTypeRepository.GetById(id);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.CourseTypeRepository.Delete(new CourseType()
            {
                CourseTypeID = id
            });
        }
    }
}
