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

        ITermRepository TermRepository { get; }

        IStudentGroupRepository StudentGroupRepository { get; }

        IStudentRepository StudentRepository { get; }

        IRegisterStatusRepository RegisterStatusRepository { get; }

        IStudentStatusRepository StudentStatusRepository { get; }

        IClassRepository ClassRepository { get; }

        IClassMappingRepository ClassMappingRepository { get; }

        IModuleAssessmentRepository ModuleAssessment { get; }

        IModuleAssessmentMarkRepository ModuleAssessmentMark { get; }

        IAssessmentCategoryRepository AssessmentCategoryRepository { get; }

        IFacultyRepository FacultyRepository { get; }
    }
}
