using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Parbat.Core.Services
{
    public class ComponentTypeService
    {
        private readonly IRepositoryFactory _factory;

        public ComponentTypeService(IRepositoryFactory factory)
        {
            _factory = factory;
        }
        public void Create(ComponentType service)
        {
            _factory.ComponentTypeRepository.Add(service);
        }

        public void Delete(long id)
        {

            var found = _factory.ComponentTypeRepository.GetById(id);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.ComponentTypeRepository.Delete(found);
        }

        public ComponentType FindByID(long id)
        {

            var found = _factory.ComponentTypeRepository.GetById(id);

            return found;
        }

        public IEnumerable<ComponentType> GetAll()
        {
            return _factory.ComponentTypeRepository.GetAll();
        }

        public void Update(ComponentType service)
        {
            if (service.ComponentTypeID == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            var found = _factory.ComponentTypeRepository.GetById(service.ComponentTypeID.Value);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.ComponentTypeRepository.Update(service);
        }
    }
}
