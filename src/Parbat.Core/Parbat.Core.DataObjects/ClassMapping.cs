using System;
using System.Collections.Generic;

#nullable disable

namespace Parbat.Core.DataObjects.Models
{
    public partial class ClassMapping : IEntity
    {
        public long ClassMappingId { get; set; }
        public long OfferingId { get; set; }
        public long ClassId { get; set; }

        public long Key => this.ClassMappingId;

        public void Copy(IEntity entity)
        {
            Helper.Copy<ClassMapping>(this, entity);
        }
    }
}
