
using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using System.Collections.Generic;

namespace Parbat.Core.Services
{
    public class StudentStatusService
    {
        private readonly IRepositoryFactory _factory;

        public StudentStatusService(IRepositoryFactory factory)
        {
            _factory = factory;
        }

        public void Create(StudentStatus service)
        {
            _factory.StudentStatusRepository.Add(service);
        }

        public void Delete(long id)
        {
            var found = _factory.StudentStatusRepository.GetById(id);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.StudentStatusRepository.Delete(found);
        }

        public StudentStatus FindByID(long id)
        {

            var found = _factory.StudentStatusRepository.GetById(id);

            return found;
        }

        public IEnumerable<StudentStatus> GetAll()
        {
            return _factory.StudentStatusRepository.GetAll();
        }

        public void Update(StudentStatus service)
        {
            if (service.StudentStatusID == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            var found = _factory.StudentStatusRepository.GetById(service.StudentStatusID.Value);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.StudentStatusRepository.Update(service);
        }
    }
}
