using System;
using System.Collections.Generic;

#nullable disable

namespace Parbat.Core.DataObjects.Models
{
    public partial class ClassModule : IEntity
    {
        public long ClassModuleId { get; set; }
        public long ClassId { get; set; }
        public long FacultyId { get; set; }
        public string ShortName { get; set; }
        public int TheoryCredit { get; set; }
        public int LabCredit { get; set; }

        public long Key => this.ClassModuleId;

        public void Copy(IEntity entity)
        {
            Helper.Copy<ClassModule>(this, entity);
        }
    }
}
