using System;
using System.Collections.Generic;
using System.Text;

namespace Parbat.Data
{
    public class ProcedureNames
    {
        public struct CurriculumType
        {
            public const string Insert = "spInsertCurriculumType";
            public const string Update = "spUpdateCurriculumType";
            public const string Delete = "spDeleteCurriculumType";
            public const string Find = "spFindCurriculumType";
            public const string GetAll = "spGetAllCurriculumType";
        }

        public struct Component
        {
            public const string Insert = "spInsertComponent";
            public const string Update = "spUpdateComponent";
            public const string Delete = "spDeleteComponent";
            public const string Find = "spFindComponent";
            public const string GetAll = "spGetAllComponent";
            public const string GetComponentSummary = "spGetComponentSummary";
        }

        public struct ComponentType
        {
            public const string Insert = "spInsertComponentType";
            public const string Update = "spUpdateComponentType";
            public const string Delete = "spDeleteComponentType";
            public const string Find = "spFindComponentType";
            public const string GetAll = "spGetAllComponentType";
        }

        public struct CourseType
        {
            public const string Insert = "spInsertCourseType";
            public const string Update = "spUpdateCourseType";
            public const string Delete = "spDeleteCourseType";
            public const string Find = "spFindCourseType";
            public const string GetAll = "spGetAllCourseType";
        }

        public struct OrgUnitType
        {
            public const string Insert = "spInsertOrgUnitType";
            public const string Update = "spUpdateOrgUnitType";
            public const string Delete = "spDeleteOrgUnitType";
            public const string Find = "spFindOrgUnitType";
            public const string GetAll = "spGetAllOrgUnitType";
        }

        public struct Student
        {
            public const string Insert = "spInsertStudent";
            public const string Update = "spUpdateStudent";
            public const string Delete = "spDeleteStudent";
            public const string Find = "spFindStudent";
            public const string GetAll = "spGetAllStudent";
        }

        public struct StudentStatus
        {
            public const string Insert = "spInsertStudentStatus";
            public const string Update = "spUpdateStudentStatus";
            public const string Delete = "spDeleteStudentStatus";
            public const string Find = "spFindStudentStatus";
            public const string GetAll = "spGetAllStudentStatus";
        }

        public struct OrgUnit
        {
            public const string Insert = "spInsertOrgUnit";
            public const string Update = "spUpdateOrgUnit";
            public const string Delete = "spDeleteOrgUnit";
            public const string Find = "spFindOrgUnit";
            public const string GetAll = "spGetAllOrgUnit";
            public const string FindParent = "spFindParentOrgUnit";
        }

        public struct Course
        {
            public const string Insert = "spInsertCourse";
            public const string Update = "spUpdateCourse";
            public const string Delete = "spDeleteCourse";
            public const string Find = "spFindCourse";
            public const string GetAll = "spGetAllCourse";
            public const string GetCourseName = "spGetCourseName";
            public const string FindCourseID = "spFindCourseIDComponentCourse";
        }

        public struct ComponentCourse
        {
            public const string Insert = "spInsertComponentCourse";
            public const string Update = "spUpdateComponentCourse";
            public const string Delete = "spDeleteComponentCourse";
            public const string Find = "spFindComponentCourse";
            public const string GetAll = "spGetAllComponentCourse";
        }

        public struct Curriculum
        {
            public const string Insert = "spInsertCurriculum";
            public const string Update = "spUpdateCurriculum";
            public const string Delete = "spDeleteCurriculum";
            public const string Find = "spFindCurriculum";
            public const string GetAll = "spGetAllCurriculum";
            public const string ComponentTotalCourseCreditHrs = "spComponentTotalCourseCreditHrs";
            public const string GetOwnerUnit = "spGetOwnerUnit";
            public const string GetCurriculumType = "spGetCurriculumType";
        }

        public struct Faculty
        {
            public const string Insert = "spInsertFaculty";
            public const string Update = "spUpdateFaculty";
            public const string Delete = "spDeleteFaculty";
            public const string Find = "spFindFaculty";
            public const string GetAll = "spGetAllFaculty";

            public struct Params
            {
                public const string FacultyID = "@FacultyID";
                public const string FirstName = "@FirstName";
                public const string LastName = "@LastName";
            }
        }

        public struct RegisterStatus
        {
            public const string Insert = "spInsertRegisterStatus";

            public const string Update = "spUpdateRegisterStatus";
            public const string Delete = "spDeleteRegisterStatus";
            public const string GetAll = "spGetAllRegisterStatus";
            public const string Find = "spFindRegisterStatus";

            public struct Params
            {
                public const string RegisterStatusID = "@RegisterStatusID";
                public const string ShortName = "@ShortName";
            }
        }

        public struct ClassModule
        {
            public const string Insert = "spInsertClassModule";
            public const string Update = "spUpdateClassModule";
            public const string Delete = "spDeleteClassModule";
            public const string GetAll = "spGetAllClassModule";
            public const string Find = "spFindClassModule";

            public struct Params
            {
                public const string ClassModuleID = "@ClassModuleID";
                public const string FacultyID = "@FacultyID";
                public const string ShortName = "@ShortName";
                public const string TheoryCredit = "@TheoryCredit";
                public const string LabCredit = "@LabCredit";
            }
        }
        public struct Class
        {
            public const string Insert = "spInsertClass";
            public const string Update = "spUpdateClass";
            public const string Delete = "spDeleteClass";
            public const string GetAll = "spGetAllClass";
            public const string Find = "spFindClass";

            public struct Params
            {
                public const string ClassID = "@ClassID";
                public const string Name = "@Name";
                public const string ShortName = "@ShortName";
                public const string Capacity = "@Capacity";
            }
        }
        public struct StudentGroup
        {
            public const string Insert = "spInsertStudentGroup";
            public const string Update = "spUpdateStudentGroup";
            public const string Delete = "spDeleteStudentGroup";
            public const string GetAll = "spGetAllStudentGroup";
            public const string Find = "spFindStudentGroup";

            public struct Params
            {
                public const string StudentGroupID = "@StudentGroupID";
                public const string Name = "@Name";
                public const string ShortName = "@ShortName";
                public const string IsActive = "@IsActive";
            }
        }
        public struct Term
        {
            public const string Insert = "spInsertTerm";
            public const string Update = "spUpdateTerm";
            public const string Delete = "spDeleteTerm";
            public const string GetAll = "spGetAllTerm";
            public const string Find = "spFindTerm";

            public struct Params
            {
                public const string TermID = "@TermID";
                public const string Name = "@Name";
                public const string ShortName = "@ShortName";
                public const string IsActive = "@IsActive";
                public const string StartDate = "@StartDate";
                public const string EndDate = "@EndDate";
            }
        }

    }
}
