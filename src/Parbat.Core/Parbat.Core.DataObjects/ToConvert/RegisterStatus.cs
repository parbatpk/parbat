using System;
using System.Collections.Generic;

#nullable disable

namespace Parbat.Core.DataObjects.Models
{
    public partial class RegisterStatus
    {
        public RegisterStatus()
        {
            Registrations = new HashSet<Registration>();
        }

        public long RegisterStatusId { get; set; }
        public string ShortName { get; set; }

        public virtual ICollection<Registration> Registrations { get; set; }
    }
}
