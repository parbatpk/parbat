using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using System;
using System.Collections.Generic;

namespace Parbat.Core.Services
{
    public class OrgUnitService : IService
    {
        private readonly IRepositoryFactory _factory;

        public OrgUnitService(IRepositoryFactory factory)
        {
            _factory = factory;
        }

        public void Create(OrgUnit service)
        {
            _factory.OrgUnitRepository.Add(service);
        }

        public void Delete(long id)
        {
            var found = _factory.OrgUnitRepository.GetById(id);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.OrgUnitRepository.Delete(found);
        }

        public OrgUnit FindByID(long id)
        {
            var found = _factory.OrgUnitRepository.GetById(id);

            return found;
        }

        public IEnumerable<OrgUnit> GetAll()
        {
            return _factory.OrgUnitRepository.GetAll();
        }

        public IEnumerable<OrgUnit> GetAllbyParentUnitId(long id)
        {
            return _factory.OrgUnitRepository.GetAllbyParentUnitId(id);
        }

        public void Update(OrgUnit service)
        {
            if (service.OrgUnitID == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            var found = _factory.OrgUnitRepository.GetById(service.OrgUnitID.Value);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.OrgUnitRepository.Update(service);
        }

        public IEnumerable<OrgUnit> GetParent(long id)
        {
            return _factory.OrgUnitRepository.FindParent(id);
        }
    }
}
