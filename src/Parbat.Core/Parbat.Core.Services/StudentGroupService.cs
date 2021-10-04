using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using System.Collections.Generic;

namespace Parbat.Core.Services
{
    public class StudentGroupService 
    {
        private readonly IRepositoryFactory _factory;

        public StudentGroupService(IRepositoryFactory factory)
        {
            _factory = factory;
        }

        public void Create(StudentGroup service)
        {
            _factory.StudentGroupRepository.Add(service);
        }

        public void Delete(long id)
        {
            var found = _factory.StudentGroupRepository.GetById(id);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.StudentGroupRepository.Delete(found);
        }

        public StudentGroup FindByID(long id)
        {

            var found = _factory.StudentGroupRepository.GetById(id);

            return found;
        }

        public IEnumerable<StudentGroup> GetAll()
        {
            return _factory.StudentGroupRepository.GetAll();
        }

        public void Update(StudentGroup service)
        {
            if (service.StudentGroupID == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            var found = _factory.TermRepository.GetById(service.StudentGroupID.Value);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.StudentGroupRepository.Update(service);
        }
    }
}
