using Parbat.Core.BaseRepository;

namespace Parbat.Core.Services
{
    public class ClassService : IService
    {
        IRepositoryFactory _factory;

        public ClassService(IRepositoryFactory factory)
        {
            _factory = factory;
        }

        //internee needs to implement curd functionality of ClassService
        //Methods name must be same as previous implemented services 
    }
}
