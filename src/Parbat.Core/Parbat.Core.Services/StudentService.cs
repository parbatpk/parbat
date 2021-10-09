using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using System.Collections.Generic;

namespace Parbat.Core.Services
{
    public class StudentService
    {
        private readonly IRepositoryFactory _factory;

        public StudentService(IRepositoryFactory factory)
        {
            _factory = factory;
        }

        public void Create(Student service)
        {
            _factory.StudentRepository.Add(service);
        }

        public void Delete(long id)
        {
            var found = _factory.StudentRepository.GetById(id);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.StudentRepository.Delete(found);
        }

        public Student FindByID(long id)
        {

            var found = _factory.StudentRepository.GetById(id);

            return found;
        }

        public IEnumerable<Student> GetAll()
        {
            return _factory.StudentRepository.GetAll();
        }

        public void Update(Student service)
        {
            if (service.StudentID == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            var found = _factory.StudentRepository.GetById(service.StudentID.Value);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.StudentRepository.Update(service);
        }
    }
}
