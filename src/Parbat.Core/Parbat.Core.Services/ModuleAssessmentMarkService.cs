using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using System.Collections.Generic;

namespace Parbat.Core.Services
{
    public class ModuleAssessmentMarkService : IService
    {
        private readonly IRepositoryFactory _factory;

        public ModuleAssessmentMarkService(IRepositoryFactory factory)
        {
            _factory = factory;
        }

        public void Create(ModuleAssessmentMark service)
        {
            _factory.ModuleAssessmentMark.Add(service);
        }

        public void Delete(long id)
        {
            var found = _factory.ModuleAssessmentMark.GetById(id);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.ModuleAssessmentMark.Delete(found);
        }

        public ModuleAssessmentMark FindByID(long id)
        {
            var found = _factory.ModuleAssessmentMark.GetById(id);

            return found;
        }

        public IEnumerable<ModuleAssessmentMark> GetAll()
        {
            return _factory.ModuleAssessmentMark.GetAll();
        }

        public void Update(ModuleAssessmentMark service)
        {
            if (service.ModuleAssessmentMarkID == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            var found = _factory.ModuleAssessmentMark.GetById(service.ModuleAssessmentMarkID.Value);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.ModuleAssessmentMark.Update(service);
        }
    }
}
