using System;
using System.Collections.Generic;

#nullable disable

namespace Parbat.Core.DataObjects.Models
{
    public partial class Semester
    {
        public Semester()
        {
            Offerings = new HashSet<Offering>();
        }

        public long SemesterId { get; set; }
        public string ShortName { get; set; }
        public string Name { get; set; }
        public long StudentGroupId { get; set; }
        public long TermId { get; set; }

        public virtual StudentGroup StudentGroup { get; set; }
        public virtual Term Term { get; set; }
        public virtual ICollection<Offering> Offerings { get; set; }
    }
}
