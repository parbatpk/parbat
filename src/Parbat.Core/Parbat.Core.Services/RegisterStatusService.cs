using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using System.Collections.Generic;

namespace Parbat.Core.Services
{
    public class RegisterStatusService
    {
        private readonly IRepositoryFactory _factory;

        public RegisterStatusService(IRepositoryFactory factory)
        {
            _factory = factory;
        }

        public void Create(RegisterStatus service)
        {
            _factory.RegisterStatusRepository.Add(service);
        }

        public void Delete(long id)
        {
            var found = _factory.RegisterStatusRepository.GetById(id);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.RegisterStatusRepository.Delete(found);
        }

        public RegisterStatus FindByID(long id)
        {

            var found = _factory.RegisterStatusRepository.GetById(id);

            return found;
        }

        public IEnumerable<RegisterStatus> GetAll()
        {
            return _factory.RegisterStatusRepository.GetAll();
        }

        public void Update(RegisterStatus service)
        {
            if (service.RegisterStatusID == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            var found = _factory.RegisterStatusRepository.GetById(service.RegisterStatusID.Value);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.RegisterStatusRepository.Update(service);
        }
    }
}

