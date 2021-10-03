using System;
using System.Collections.Generic;

#nullable disable

namespace Parbat.Core.DataObjects.Models
{
    public partial class StudentGroup
    {
        public StudentGroup()
        {
            Semesters = new HashSet<Semester>();
            StudentPrograms = new HashSet<StudentProgram>();
        }

        public long StudentGroupId { get; set; }
        public string ShortName { get; set; }
        public string Name { get; set; }
        public bool? IsActive { get; set; }

        public virtual ICollection<Semester> Semesters { get; set; }
        public virtual ICollection<StudentProgram> StudentPrograms { get; set; }
    }
}
