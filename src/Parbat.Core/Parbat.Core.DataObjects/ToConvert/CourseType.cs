using System;
using System.Collections.Generic;

#nullable disable

namespace Parbat.Core.DataObjects.Models
{
    public partial class CourseType
    {
        public CourseType()
        {
            Courses = new HashSet<Course>();
        }

        public long CourseTypeId { get; set; }
        public string Name { get; set; }

        public virtual ICollection<Course> Courses { get; set; }
    }
}
