using System;
using System.Collections.Generic;

#nullable disable

namespace Parbat.Core.DataObjects.Models
{
    public partial class Student
    {
        public Student()
        {
            StudentPrograms = new HashSet<StudentProgram>();
        }

        public long StudentId { get; set; }
        public string Identifier { get; set; }
        public string Name { get; set; }
        public string LastName { get; set; }
        public long? StudetGroupId { get; set; }

        public virtual ICollection<StudentProgram> StudentPrograms { get; set; }
    }
}
