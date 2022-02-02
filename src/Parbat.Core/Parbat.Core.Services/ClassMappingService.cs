using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects.Models;
using System.Collections.Generic;

namespace Parbat.Core.Services
{
    public class ClassMappingService : IService
    {
        private IRepositoryFactory _factory;

        public ClassMappingService(IRepositoryFactory factory)
        {
            _factory = factory;
        }

        public void Create(ClassMapping service)
        {
            _factory.ClassMappingRepository.Add(service);
        }

        public void Delete(long id)
        {
            var found = _factory.ClassMappingRepository.GetById(id);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.ClassMappingRepository.Delete(found);
        }

        public ClassMapping FindByID(long id)
        {
            var found = _factory.ClassMappingRepository.GetById(id);

            return found;
        }

        public IEnumerable<ClassMapping> GetAll()
        {
            return _factory.ClassMappingRepository.GetAll();
        }

        public void Update(ClassMapping service)
        {
            if (service.ClassMappingID == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            var found = _factory.ClassMappingRepository.GetById(service.ClassMappingID.Value);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.ClassMappingRepository.Update(service);
        }
    }
}
