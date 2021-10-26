using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using System.Collections.Generic;

namespace Parbat.Core.Services
{
    public class ClassService : IService
    {
        private readonly IRepositoryFactory _factory;

        public ClassService(IRepositoryFactory factory)
        {
            _factory = factory;
        }

        public void Create(Class service)
        {
            _factory.ClassRepository.Add(service);
        }
        
        public void Delete(long id)
        {
            var found = _factory.ClassRepository.GetById(id);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.ClassRepository.Delete(found);
        }

        public Class FindById(long id)
        {
            var found = _factory.ClassRepository.GetById(id);
            return found;
        }

        public IEnumerable<Class> GetAll()
        {
            return _factory.ClassRepository.GetAll();
        }

        public void Update(Class service)
        {
            if (service.ClassId == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            var found = _factory.ClassRepository.GetById(service.ClassId);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.ClassRepository.Update(service);
        }
    }
}
