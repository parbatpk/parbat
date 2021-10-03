using System;
using System.Collections.Generic;

#nullable disable

namespace Parbat.Core.DataObjects.Models
{
    public partial class OrgUnitType
    {
        public OrgUnitType()
        {
            OrgUnits = new HashSet<OrgUnit>();
        }

        public long OrgUnitTypeId { get; set; }
        public string ShortName { get; set; }
        public string Name { get; set; }

        public virtual ICollection<OrgUnit> OrgUnits { get; set; }
    }
}
