using System;
using System.Collections.Generic;

#nullable disable

namespace Parbat.Core.DataObjects.Models
{
    public partial class Term
    {
        public Term()
        {
            Offerings = new HashSet<Offering>();
            Semesters = new HashSet<Semester>();
        }

        public long TermId { get; set; }
        public string ShortName { get; set; }
        public string Name { get; set; }
        public DateTime? StartDate { get; set; }
        public DateTime? EndDate { get; set; }
        public bool IsActive { get; set; }

        public virtual ICollection<Offering> Offerings { get; set; }
        public virtual ICollection<Semester> Semesters { get; set; }
    }
}
