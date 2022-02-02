using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using System.Collections.Generic;

namespace Parbat.Core.Services
{
    public class SemesterService : IService
    {
        private readonly IRepositoryFactory _factory;

        public SemesterService(IRepositoryFactory factory)
        {
            _factory = factory;
        }

        public void Create(Semester service)
        {
            _factory.SemesterRepository.Add(service);
        }

        public void Delete(long id)
        {
            var found = _factory.SemesterRepository.GetById(id);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.SemesterRepository.Delete(found);
        }

        public Semester FindByID(long id)
        {
            var found = _factory.SemesterRepository.GetById(id);

            return found;
        }

        public IEnumerable<Semester> GetAll()
        {
            return _factory.SemesterRepository.GetAll();
        }

        public void Update(Semester service)
        {
            if (service.SemesterID == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            var found = _factory.SemesterRepository.GetById(service.SemesterID.Value);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.SemesterRepository.Update(service);
        }
    }
}
