using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects.Models;
using Parbat.Data;
using System.Collections.Generic;

namespace Parbat.Core.DBRepository
{
    //internee needs to implement core functionality of this class
    internal class ClassRepository : IClassRepository
    {
        IDatabase db;

        public ClassRepository()
        {
            db = Database.Instance;
        }

        public void Add(Class entity)
        {
            throw new System.NotImplementedException();
        }

        public void Delete(Class entity)
        {
            throw new System.NotImplementedException();
        }

        public IEnumerable<Class> GetAll()
        {
            throw new System.NotImplementedException();
        }

        public Class GetById(long id)
        {
            throw new System.NotImplementedException();
        }

        public void Update(Class entity)
        {
            throw new System.NotImplementedException();
        }
    }
}