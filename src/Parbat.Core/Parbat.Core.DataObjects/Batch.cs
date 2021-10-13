using System;
using System.Collections.Generic;

namespace Parbat.Core.DataObjects
{
    public class Batch : IEntity
    {
        /// <summary>
        /// Primary key in Batch Table
        /// </summary>
        public long? BatchID { get; set; }

        /// <summary>
        /// Short name of the Batch
        /// </summary>
        public string ShortName { get; set; }

        /// <summary>
        /// Name of the batch
        /// </summary>
        public string Name { get; set; }

        /// <summary>
        /// Year of the admission
        /// </summary>
        public int AdmissionYear { get; set; }

        /// <summary>
        /// Passing year
        /// </summary>
        public int GraduationYear { get; set; }
        /// <summary>
        /// Forign key in the BatchTable
        /// </summary>
        public long OrgUnitID { get; set; }

        /// <summary>
        /// Forign key in the BatchTable
        /// </summary>
        public long CurriculumID;

        public long Key => this.BatchID.Value;

        public void Copy(IEntity entity)
        {
            Helper.Copy(typeof(Batch), this, entity);
        }
    }
}
