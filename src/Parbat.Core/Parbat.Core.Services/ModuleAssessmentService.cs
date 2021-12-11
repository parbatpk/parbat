using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using System.Collections.Generic;

namespace Parbat.Core.Services
{
    public class ModuleAssessmentService : IService
    {
        private IRepositoryFactory _factory;

        public ModuleAssessmentService(IRepositoryFactory factory)
        {
            _factory = factory;
        }

        public void Create(ModuleAssessment service)
        {
            _factory.ModuleAssessment.Add(service);
        }

        public void Delete(long id)
        {
            var found = _factory.ModuleAssessment.GetById(id);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.ModuleAssessment.Delete(found);
        }
        public ModuleAssessment FindByID(long id)
        {
            var found = _factory.ModuleAssessment.GetById(id);

            return found;
        }

        public IEnumerable<ModuleAssessment> GetAll()
        {
            return _factory.ModuleAssessment.GetAll();
        }

        public void Update(ModuleAssessment service)
        {
            if (service.ModuleAssessmentID == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            var found = _factory.ModuleAssessment.GetById(service.ModuleAssessmentID.Value);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.ModuleAssessment.Update(service);
        }
    }
}
