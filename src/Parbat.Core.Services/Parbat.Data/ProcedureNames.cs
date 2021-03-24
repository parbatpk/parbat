using System;
using System.Collections.Generic;
using System.Text;

namespace Parbat.Data
{
    public class ProcedureNames
    {
        public struct Student
        {
            public const string Insert = "InsertStudent";
            public const string Update = "UpdateStudent";
        }

        public struct CurriculumType
        {
            public const string Insert = "spInsertCurriculumType";
            public const string Update = "spUpdateCurriculumType";
            public const string Delete = "spDeleteCurriculumType";
            public const string Find = "spFindCurriculumType";
            public const string GetAll = "spGetAllCurriculumType";
        }
    }
}
