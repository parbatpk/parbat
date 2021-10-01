using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Parbat.Core.Services
{
    public interface BaseService<T> where T : class
    {
        IEnumerable<T> GetAll();
        
        T FindByID(long id);

        void Create(T service);

        void Update(T service);

        void Delete(long id);
    }
}
