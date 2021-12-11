using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using System.Collections.Generic;

namespace Parbat.Core.Services
{
    public class AssessmentCategoryService : IService
    {
        private readonly IRepositoryFactory _factory;

        public AssessmentCategoryService(IRepositoryFactory factory)
        {
            _factory = factory;
        }

        public void Create(AssessmentCategory service)
        {
            _factory.AssessmentCategoryRepository.Add(service);
        }

        public void Delete(long id)
        {
            var found = _factory.AssessmentCategoryRepository.GetById(id);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.AssessmentCategoryRepository.Delete(found);
        }

        public AssessmentCategory FindByID(long id)
        {
            var found = _factory.AssessmentCategoryRepository.GetById(id);

            return found;
        }

        public IEnumerable<AssessmentCategory> GetAll()
        {
            return _factory.AssessmentCategoryRepository.GetAll();
        }

        public void Update(AssessmentCategory service)
        {
            if (service.AssessmentCategoryID == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            var found = _factory.AssessmentCategoryRepository.GetById(service.AssessmentCategoryID.Value);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.AssessmentCategoryRepository.Update(service);
        }

    }
}
