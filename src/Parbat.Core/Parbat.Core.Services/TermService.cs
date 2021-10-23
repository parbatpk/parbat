using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using System.Collections.Generic;

namespace Parbat.Core.Services
{
    public class TermService : IService
    {
        private readonly IRepositoryFactory _factory;

        public TermService(IRepositoryFactory factory)
        {
            _factory = factory;
        }

        public void Create(Term service)
        {
            _factory.TermRepository.Add(service);
        }

        public void Delete(long id)
        {
            var found = _factory.TermRepository.GetById(id);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.TermRepository.Delete(found);
        }

        public Term FindByID(long id)
        {

            var found = _factory.TermRepository.GetById(id);

            return found;
        }

        public IEnumerable<Term> GetAll()
        {
            return _factory.TermRepository.GetAll();
        }

        public void Update(Term service)
        {
            if (service.TermID == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            var found = _factory.TermRepository.GetById(service.TermID.Value);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.TermRepository.Update(service);
        }
    }
}
