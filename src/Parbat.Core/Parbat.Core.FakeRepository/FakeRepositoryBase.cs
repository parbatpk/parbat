using Parbat.Core.DataObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Parbat.Core.FakeRepository
{
    public abstract class FakeRepositoryBase<T> where T : IEntity
    {
        private static List<T> _entites;

        public FakeRepositoryBase()
        {
            _entites = new List<T>();

        }
        public void Add(T entity)
        {
            _entites.Add(entity);
        }

        public IEnumerable<T> GetAll()
        {
            return _entites;

        }

        public T GetById(long id)
        {
            return _entites.Find(x => x.Key == id);
        }

        public void Delete(T entity)
        {
            _entites.Remove(entity);
        }

        public void Update(T entity)
        {
            var found = GetById(entity.Key);
            found.Copy(entity);
        }
    }

}
