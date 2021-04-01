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

    }
}
