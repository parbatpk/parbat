using System;
using System.Collections.Generic;

#nullable disable

namespace Parbat.Core.DataObjects.Models
{
    public partial class OrgUnit
    {
        public OrgUnit()
        {
            Batches = new HashSet<Batch>();
            Courses = new HashSet<Course>();
            Curricula = new HashSet<Curriculum>();
            InverseParentUnit = new HashSet<OrgUnit>();
            Offerings = new HashSet<Offering>();
        }

        public long OrgUnitId { get; set; }
        public long OrgUnitTypeId { get; set; }
        public string Name { get; set; }
        public string ShortName { get; set; }
        public long? ParentUnitId { get; set; }
        public bool IsAllowAdmission { get; set; }

        public virtual OrgUnitType OrgUnitType { get; set; }
        public virtual OrgUnit ParentUnit { get; set; }
        public virtual ICollection<Batch> Batches { get; set; }
        public virtual ICollection<Course> Courses { get; set; }
        public virtual ICollection<Curriculum> Curricula { get; set; }
        public virtual ICollection<OrgUnit> InverseParentUnit { get; set; }
        public virtual ICollection<Offering> Offerings { get; set; }
    }
}
