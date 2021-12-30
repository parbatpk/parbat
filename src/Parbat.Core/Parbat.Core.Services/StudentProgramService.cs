using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using System.Collections.Generic;

namespace Parbat.Core.Services
{
    public class StudentProgramService : IService
    {
        private readonly IRepositoryFactory _factory;

        public StudentProgramService(IRepositoryFactory factory)
        {
            _factory = factory;
        }

        public void Create(StudentProgram service)
        {
            _factory.StudentProgramRepository.Add(service);
        }

        public void Delete(long id)
        {
            var found = _factory.StudentProgramRepository.GetById(id);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.StudentProgramRepository.Delete(found);
        }

        public StudentProgram FindByID(long id)
        {
            var found = _factory.StudentProgramRepository.GetById(id);

            return found;
        }

        public IEnumerable<StudentProgram> GetAll()
        {
            return _factory.StudentProgramRepository.GetAll();
        }

        public void Update(StudentProgram service)
        {
            if (service.StudentProgramID == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            var found = _factory.StudentProgramRepository.GetById(service.StudentProgramID.Value);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.StudentProgramRepository.Update(service);
        }
    }
}
