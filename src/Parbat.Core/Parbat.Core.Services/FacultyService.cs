using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using System.Collections.Generic;

namespace Parbat.Core.Services
{
    public class FacultyService
    {
        private readonly IRepositoryFactory _factory;

        public FacultyService(IRepositoryFactory factory)
        {
            _factory = factory;
        }

        public void Create(Faculty service)
        {
            _factory.FacultyRepository.Add(service);
        }

        public void Delete(long id)
        {
            var found = _factory.FacultyRepository.GetById(id);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.FacultyRepository.Delete(found);
        }

        public Faculty FindByID(long id)
        {
            var found = _factory.FacultyRepository.GetById(id);

            return found;
        }

        public IEnumerable<Faculty> GetAll()
        {
            return _factory.FacultyRepository.GetAll();
        }

        public void Update(Faculty service)
        {
            if (service.FacultyID == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            var found = _factory.FacultyRepository.GetById(service.FacultyID.Value);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.FacultyRepository.Update(service);
        }
    }
}
