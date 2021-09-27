using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using System;
using System.Collections.Generic;

namespace Parbat.Core.Services
{
    public class CourseService
    {
        protected IRepositoryFactory _factory;

        public CourseService(IRepositoryFactory f)
        {
            _factory = f;
        }

        public IEnumerable<Course> GetAllCourses()
        {
            return _factory.CourseRepository.GetAll();
        }

        public Course FindByID(long id)
        {
            return _factory.CourseRepository.GetById(id);
        }
        public void Create(Course c)
        {
            if (!(c.TheoryCredit > 0 && c.LabCredit > 0))
                throw new ServiceException("Theory and/or Lab Creidt hours are not defined.");

            _factory.CourseRepository.Add(c);

        }

        public void Update(Course c)
        {
            if (c.CourseID == null)
                throw new ServiceException(Errors.NotExistsError);


            var found = _factory.CourseRepository.GetById(c.CourseID.Value);
            if (found == null)
                throw new ServiceException(Errors.NotExistsError);

            _factory.CourseRepository.Update(c);

        }

        public void Delete(long id)
        {
            var found = _factory.CourseRepository.GetById(id);
            if (found == null)
                throw new ServiceException(Errors.NotExistsError);

            _factory.CourseRepository.Delete(new Course()
            {
                CourseID = id
            });
        }
    }
}
