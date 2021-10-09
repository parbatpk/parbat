using System;
using System.Collections.Generic;

namespace Parbat.Core.DataObjects
{
    public class Batch : IEntity
    {
        /// <summary>
        /// Primary key in Batch Table
        /// </summary>
        public long? BatchID;

        /// <summary>
        /// Short name of the Batch
        /// </summary>
        public string ShortName;

        /// <summary>
        /// Name of the batch
        /// </summary>
        public string Name;

        /// <summary>
        /// Year of the admission
        /// </summary>
        public int AdmissionYear;

        /// <summary>
        /// Passing year
        /// </summary>
        public int GraduationYear;

        /// <summary>
        /// Forign key in the BatchTable
        /// </summary>
        public long OrgUnitID;

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
