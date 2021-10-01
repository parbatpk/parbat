using Parbat.Core.BaseRepository;
using System;
using System.Collections.Generic;
using Parbat.Core.DataObjects;

namespace Parbat.Core.Services
{
    public class ComponentService : BaseService<Component>
    {
        private readonly IRepositoryFactory _factory;

        public ComponentService(IRepositoryFactory factory)
        {
            _factory = factory;
        }

        public void Create(Component service)
        {
            _factory.ComponentRepository.Add(service);
        }

        public void Delete(long id)
        {
            var found = _factory.ComponentRepository.GetById(id);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.ComponentRepository.Delete(found);
        }

        public Component FindByID(long id)
        {
            var found = _factory.ComponentRepository.GetById(id);

            return found;
        }

        public IEnumerable<Component> GetAll()
        {
            return _factory.ComponentRepository.GetAll();
        }

        public void Update(Component service)
        {
            if (service.ComponentID == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            var found = _factory.CourseRepository.GetById(service.ComponentID.Value);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.ComponentRepository.Update(service);
        }
    }
}
