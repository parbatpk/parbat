using System;
using System.Collections.Generic;

#nullable disable

namespace Parbat.Core.DataObjects.Models
{
    public partial class Curriculum
    {
        public Curriculum()
        {
            Batches = new HashSet<Batch>();
            Components = new HashSet<Component>();
            StudentProgramMinorCurricula = new HashSet<StudentProgram>();
            StudentProgramOverrideCurricula = new HashSet<StudentProgram>();
        }

        public long CurriculumId { get; set; }
        public string ShortName { get; set; }
        public string Name { get; set; }
        public long OwnerUnitId { get; set; }
        public int TotalCourses { get; set; }
        public int TotalCreditHrs { get; set; }
        public bool IsLimitCreditHrs { get; set; }
        public bool IsLimitCourses { get; set; }
        public long CurriculumTypeId { get; set; }

        public virtual CurriculumType CurriculumType { get; set; }
        public virtual OrgUnit OwnerUnit { get; set; }
        public virtual ICollection<Batch> Batches { get; set; }
        public virtual ICollection<Component> Components { get; set; }
        public virtual ICollection<StudentProgram> StudentProgramMinorCurricula { get; set; }
        public virtual ICollection<StudentProgram> StudentProgramOverrideCurricula { get; set; }
    }
}
