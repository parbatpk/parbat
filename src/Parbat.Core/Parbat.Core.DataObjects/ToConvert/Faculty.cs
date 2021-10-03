using System;
using System.Collections.Generic;

#nullable disable

namespace Parbat.Core.DataObjects.Models
{
    public partial class Faculty
    {
        public Faculty()
        {
            ClassModules = new HashSet<ClassModule>();
        }

        public long FacultyId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }

        public virtual ICollection<ClassModule> ClassModules { get; set; }
    }
}
