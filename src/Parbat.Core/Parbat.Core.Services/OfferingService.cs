using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using System.Collections.Generic;

namespace Parbat.Core.Services
{
    public class OfferingService
    {
        private readonly IRepositoryFactory _factory;

        public OfferingService(IRepositoryFactory factory)
        {
            _factory = factory;
        }

        public void Create(Offering service)
        {
            _factory.OfferingRepository.Add(service);
        }

        public void Delete(long id)
        {
            var found = _factory.OfferingRepository.GetById(id);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.OfferingRepository.Delete(found);
        }

        public Offering FindByID(long id)
        {
            var found = _factory.OfferingRepository.GetById(id);

            return found;
        }

        public IEnumerable<Offering> GetAll()
        {
            return _factory.OfferingRepository.GetAll();
        }

        public void Update(Offering service)
        {
            if (service.OfferingID == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            var found = _factory.OfferingRepository.GetById(service.OfferingID.Value);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.OfferingRepository.Update(service);
        }
    }
}
