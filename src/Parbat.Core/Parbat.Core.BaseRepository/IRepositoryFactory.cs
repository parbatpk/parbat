namespace Parbat.Core.BaseRepository
{
    public interface IRepositoryFactory
    {
        ICourseRepository CourseRepository { get; }

        IComponentRepository ComponentRepository { get; }
    }
}
