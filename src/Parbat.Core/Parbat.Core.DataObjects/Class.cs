using System;
using System.Collections.Generic;

#nullable disable

namespace Parbat.Core.DataObjects.Models
{
    public class Class : IEntity
    {
        public long ClassId { get; set; }
        public string ShortName { get; set; }
        public string Name { get; set; }
        public int Capacity { get; set; }

        public long Key => this.ClassId;

        public void Copy(IEntity entity)
        {
            Helper.Copy(typeof(Class), this, entity);
        }
    }
}
