namespace Parbat.Core.BaseRepository
{
    public interface IRepositoryFactory
    {
        ICourseRepository CourseRepository { get; }

        ICourseTypeRepository CourseTypeRepository { get; }
      
        IComponentRepository ComponentRepository { get; }

        IComponentTypeRepository ComponentTypeRepository { get; }

        ICurriculumRepository CurriculumRepository { get; }

        IComponentCourseRepository ComponentCourseRepository { get; }

        ICurriculumTypeRepository CurriculumTypeRepository { get; }

        IBatchRepository BatchRepository { get; }

        IOrgUnitRepository OrgUnitRepository { get; }

        IOrgUnitTypeRepository OrgUnitTypeRepository { get; }
    }
}
