using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Parbat.Core.Services
{
    public class BatchService : IService
    {
        private readonly IRepositoryFactory _factory;

        public BatchService(IRepositoryFactory factory)
        {
            _factory = factory;
        }

        public void Create(Batch service)
        {
            _factory.BatchRepository.Add(service);
        }

        public void Delete(long id)
        {
            var found = _factory.BatchRepository.GetById(id);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.BatchRepository.Delete(found);
        }

        public Batch FindByID(long id)
        {
            var found = _factory.BatchRepository.GetById(id);

            return found;
        }

        public IEnumerable<Batch> GetAll()
        {
            return _factory.BatchRepository.GetAll();
        }

        public void Update(Batch service)
        {
            if (service.BatchID == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            var found = _factory.BatchRepository.GetById(service.BatchID.Value);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.BatchRepository.Update(service);
        }
    }
}
