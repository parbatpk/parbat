using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects.Models;
using System.Collections.Generic;

namespace Parbat.Core.Services
{
    public class ClassService
    {
        IRepositoryFactory _factory;

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

        public Class FindByID(long id)
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
            if (service.ClassID == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            var found = _factory.ClassRepository.GetById(service.ClassID.Value);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.ClassRepository.Update(service);
        }
    }
}
