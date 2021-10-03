using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using System;
using System.Collections.Generic;

namespace Parbat.Core.Services
{
    public class ComponentCourseService : BaseService<ComponentCourse>
    {
        private readonly IRepositoryFactory _factory;

        public ComponentCourseService(IRepositoryFactory factory)
        {
            _factory = factory;
        }

        public void Create(ComponentCourse service)
        {
            _factory.ComponentCourseRepository.Add(service);
        }

        public void Delete(long id)
        {
            var found = _factory.ComponentCourseRepository.GetById(id);

            if(found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.ComponentCourseRepository.Delete(found);
        }

        public ComponentCourse FindByID(long id)
        {
            var found = _factory.ComponentCourseRepository.GetById(id);

            return found;
        }

        public IEnumerable<ComponentCourse> GetAll()
        {
            return _factory.ComponentCourseRepository.GetAll();
        }

        public void Update(ComponentCourse service)
        {
            if (service.ComponentCourseID == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            var found = _factory.ComponentCourseRepository .GetById(service.ComponentCourseID.Value);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.ComponentCourseRepository.Update(service);
        }
    }
}
