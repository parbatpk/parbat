using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Parbat.Core.Services
{
    public class CurriculumTypeService : BaseService<CurriculumType>
    {
        private readonly IRepositoryFactory _factory;

        public CurriculumTypeService(IRepositoryFactory factory)
        {
            _factory = factory;
        }

        public void Create(CurriculumType service)
        {
            _factory.CurriculumTypeRepository.Add(service);
        }

        public void Delete(long id)
        {
            var found = _factory.CurriculumTypeRepository.GetById(id);

            if(found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.CurriculumTypeRepository.Delete(found);
        }

        public CurriculumType FindByID(long id)
        {
            return _factory.CurriculumTypeRepository.GetById(id);
        }

        public IEnumerable<CurriculumType> GetAll()
        {
            return _factory.CurriculumTypeRepository.GetAll();
        }

        public void Update(CurriculumType service)
        {
           if(service.CurriculumTypeID == null)
           {
                throw new ServiceException(Errors.NotExistsError);
           }

            var found = _factory.CurriculumTypeRepository.GetById(service.CurriculumTypeID.Value);

            if(found == null)
            {
                throw new ServiceException(Errors.NotExistsError);
            }

            _factory.CurriculumTypeRepository.Update(found);
        }
    }
}
