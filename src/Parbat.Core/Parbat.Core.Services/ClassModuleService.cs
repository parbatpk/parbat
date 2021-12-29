using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects.Models;
using System.Collections.Generic;

namespace Parbat.Core.Services
{
    public class ClassModuleService : IService
    {
        private IRepositoryFactory _factory;

        public ClassModuleService(IRepositoryFactory factory)
        {
            _factory = factory;
        }

        public void Create(ClassModule service)
        {
            _factory.ClassModuleRepository.Add(service);
        }

        public void Delete(long id)
        {
            var found = _factory.ClassModuleRepository.GetById(id);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.ClassModuleRepository.Delete(found);
        }

        public ClassModule FindByID(long id)
        {
            var found = _factory.ClassModuleRepository.GetById(id);

            return found;
        }

        public IEnumerable<ClassModule> GetAll()
        {
            return _factory.ClassModuleRepository.GetAll();
        }

        public void Update(ClassModule service)
        {
            if (service.ClassModuleID == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            var found = _factory.ClassModuleRepository.GetById(service.ClassModuleID.Value);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.ClassModuleRepository.Update(service);
        }
    }
}
