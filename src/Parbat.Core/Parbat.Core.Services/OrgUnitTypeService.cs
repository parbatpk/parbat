using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using System;
using System.Collections.Generic;

namespace Parbat.Core.Services
{
    public class OrgUnitTypeService : IService
    {
        private readonly IRepositoryFactory _factory;

        public OrgUnitTypeService(IRepositoryFactory factory)
        {
            _factory = factory;
        }

        public void Create(OrgUnitType service)
        {
            _factory.OrgUnitTypeRepository.Add(service);
        }

        public void Delete(long id)
        {
            var found = _factory.OrgUnitTypeRepository.GetById(id);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.OrgUnitTypeRepository.Delete(found);
        }

        public OrgUnitType FindByID(long id)
        {

            var found = _factory.OrgUnitTypeRepository.GetById(id);

            return found;
        }

        public IEnumerable<OrgUnitType> GetAll()
        {
            return _factory.OrgUnitTypeRepository.GetAll();
        }

        public void Update(OrgUnitType service)
        {
            if (service.OrgUnitTypeID == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            var found = _factory.OrgUnitTypeRepository.GetById(service.OrgUnitTypeID.Value);

            if (found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.OrgUnitTypeRepository.Update(service);
        }
    }
}
