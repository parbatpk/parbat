using System;
using System.Collections.Generic;

#nullable disable

namespace Parbat.Core.DataObjects.Models
{
    public partial class Component : IEntity
    {
        public long ComponentId { get; set; }
        public string ShortName { get; set; }
        public string Name { get; set; }
        public long CurriculumId { get; set; }
        public int TotalCredit { get; set; }
        public int TotalCourses { get; set; }
        public bool IsLimitCourses { get; set; }
        public bool IsLimitCreditHrs { get; set; }
        public long ComponentTypeId { get; set; }

        public long Key => this.ComponentId;

        public void Copy(IEntity entity)
        {
            Helper.Copy<Component>(this, entity);
        }
    }
}
