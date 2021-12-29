using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using System.Collections.Generic;

namespace Parbat.Core.Services
{
    public class RegistrationService : IService
    {
        private readonly IRepositoryFactory _factory;

        public RegistrationService(IRepositoryFactory factory)
        {
            _factory = factory;
        }

        public void Create(Registration service)
        {
            _factory.RegistrationRepository.Add(service);
        }

        public void Delete(long id)
        {
            var found = _factory.RegistrationRepository.GetById(id);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.RegistrationRepository.Delete(found);
        }

        public Registration FindByID(long id)
        {
            var found = _factory.RegistrationRepository.GetById(id);

            return found;
        }

        public IEnumerable<Registration> GetAll()
        {
            return _factory.RegistrationRepository.GetAll();
        }

        public void Update(Registration service)
        {
            if (service.RegistrationID == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            var found = _factory.RegistrationRepository.GetById(service.RegistrationID.Value);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.RegistrationRepository.Update(service);
        }
    }
}
