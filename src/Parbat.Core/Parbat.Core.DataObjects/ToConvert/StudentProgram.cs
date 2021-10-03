using System;
using System.Collections.Generic;

#nullable disable

namespace Parbat.Core.DataObjects.Models
{
    public partial class StudentProgram
    {
        public StudentProgram()
        {
            Registrations = new HashSet<Registration>();
        }

        public long StudentProgramId { get; set; }
        public long StudentId { get; set; }
        public long? BatchId { get; set; }
        public DateTime? StartDate { get; set; }
        public DateTime? EndDate { get; set; }
        public long StudentStatusId { get; set; }
        public long? OverrideCurriculumId { get; set; }
        public long? MinorCurriculumId { get; set; }
        public long? StudentGroupId { get; set; }

        public virtual Batch Batch { get; set; }
        public virtual Curriculum MinorCurriculum { get; set; }
        public virtual Curriculum OverrideCurriculum { get; set; }
        public virtual Student Student { get; set; }
        public virtual StudentGroup StudentGroup { get; set; }
        public virtual StudentStatus StudentStatus { get; set; }
        public virtual ICollection<Registration> Registrations { get; set; }
    }
}
