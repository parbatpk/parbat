using System;
using System.Collections.Generic;

#nullable disable

namespace Parbat.Core.DataObjects.Models
{
    public partial class ComponentType : IEntity
    {
        public long ComponentTypeId { get; set; }
        public string Name { get; set; }
        public bool IsRequired { get; set; }

        public long Key => this.ComponentTypeId;

        public void Copy(IEntity entity)
        {
            Helper.Copy<ComponentType>(this, entity);
        }
    }
}
