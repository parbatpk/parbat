using System;
using System.Collections.Generic;

#nullable disable

namespace Parbat.Core.DataObjects.Models
{
    public partial class StudentStatus
    {
        public StudentStatus()
        {
            StudentPrograms = new HashSet<StudentProgram>();
        }

        public long StudentStatusId { get; set; }
        public string Name { get; set; }

        public virtual ICollection<StudentProgram> StudentPrograms { get; set; }
    }
}
