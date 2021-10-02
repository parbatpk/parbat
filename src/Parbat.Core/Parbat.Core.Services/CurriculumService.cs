using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using System.Collections.Generic;

namespace Parbat.Core.Services
{
    public class CurriculumService : BaseService<Curriculum>
    {
        private IRepositoryFactory _factory;

        public CurriculumService(IRepositoryFactory factory)
        {
            _factory = factory;
        }

        public void Create(Curriculum service)
        {
            if (!(service.TotalCourses > 0 && service.TotalCreditHrs > 0))
            {
                throw new ServiceException("Total Courses and/or Total Creidt hours are not defined.");
            }
            
            _factory.CurriculumRepository.Add(service);
        }

        public void Delete(long id)
        {
            var found = _factory.CurriculumRepository.GetById(id);

            if (found == null)
                throw new ServiceException(Errors.NotExistsError);

            _factory.CurriculumRepository.Delete(new Curriculum()
            {
                CurriculumID = id
            });
        }

        public Curriculum FindByID(long id)
        {
            return _factory.CurriculumRepository.GetById(id);
        }

        public IEnumerable<Curriculum> GetAll()
        {
            return _factory.CurriculumRepository.GetAll();
        }

        public void Update(Curriculum service)
        {
            if (service.CurriculumID == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            var found = _factory.CurriculumRepository.GetById(service.CurriculumID.Value);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.CurriculumRepository.Update(service);
        }

        public IEnumerable<Curriculum> GetOwnerUnit(long id)
        {
            return _factory.CurriculumRepository.GetOwnerUnit(id);
        }

        public IEnumerable<Curriculum> GetCurriculumType(long id)
        {
            return _factory.CurriculumRepository.GetCurriculumType(id);
        }
    }
}
