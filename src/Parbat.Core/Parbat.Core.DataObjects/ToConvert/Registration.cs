using System;
using System.Collections.Generic;

#nullable disable

namespace Parbat.Core.DataObjects.Models
{
    public partial class Registration
    {
        public long RegistrationId { get; set; }
        public DateTime RegisterDate { get; set; }
        public long StudentProgramId { get; set; }
        public long ClassId { get; set; }
        public long RegisterStatusId { get; set; }

        public virtual Class Class { get; set; }
        public virtual RegisterStatus RegisterStatus { get; set; }
        public virtual StudentProgram StudentProgram { get; set; }
    }
}
