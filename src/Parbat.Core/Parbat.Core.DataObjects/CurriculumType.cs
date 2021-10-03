using System;
using System.Collections.Generic;

#nullable disable

namespace Parbat.Core.DataObjects.Models
{
    public class CurriculumType : IEntity
    {
        public long CurriculumTypeId { get; set; }
        public string Name { get; set; }

        public long Key => this.CurriculumTypeId;

        public void Copy(IEntity entity)
        {
            Helper.Copy(typeof(CurriculumType), this, entity);
        }
    }
}
