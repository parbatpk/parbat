using System;
using System.Collections.Generic;

#nullable disable

namespace Parbat.Core.DataObjects.Models
{
    public partial class Offering
    {
        public Offering()
        {
            ClassMappings = new HashSet<ClassMapping>();
        }

        public long OfferingId { get; set; }
        public long CousreId { get; set; }
        public long TermId { get; set; }
        public long OrgUnitId { get; set; }
        public long? SemesterId { get; set; }

        public virtual Course Cousre { get; set; }
        public virtual OrgUnit OrgUnit { get; set; }
        public virtual Semester Semester { get; set; }
        public virtual Term Term { get; set; }
        public virtual ICollection<ClassMapping> ClassMappings { get; set; }
    }
}
