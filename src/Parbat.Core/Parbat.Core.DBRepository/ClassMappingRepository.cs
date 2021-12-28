using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects.Models;
using Parbat.Data;
using System.Collections.Generic;

namespace Parbat.Core.DBRepository
{
    public class ClassMappingRepository : IClassMappingRepository
    {
        private IDatabase db;

        public ClassMappingRepository()
        {
            db = Database.Instance;
        }

        public void Add(ClassMapping entity)
        {
            throw new System.NotImplementedException();
        }

        public void Delete(ClassMapping entity)
        {
            throw new System.NotImplementedException();
        }

        public IEnumerable<ClassMapping> GetAll()
        {
            throw new System.NotImplementedException();
        }

        public ClassMapping GetById(long id)
        {
            throw new System.NotImplementedException();
        }

        public void Update(ClassMapping entity)
        {
            throw new System.NotImplementedException();
        }
    }
}
