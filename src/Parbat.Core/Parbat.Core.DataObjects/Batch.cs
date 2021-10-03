using System;
using System.Collections.Generic;

#nullable disable

namespace Parbat.Core.DataObjects.Models
{
    public class Batch : IEntity
    {
        public long BatchId { get; set; }
        public string ShortName { get; set; }
        public string Name { get; set; }
        public int? AdmissionYear { get; set; }
        public int? GraduationYear { get; set; }
        public long OrgUnitId { get; set; }
        public long? CurriculumId { get; set; }


        public long Key => this.BatchId;

        public void Copy(IEntity entity)
        {
            Helper.Copy(typeof(Batch), this, entity);
        }
    }
}
