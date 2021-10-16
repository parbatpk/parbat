using System.ComponentModel.DataAnnotations;

namespace Parbat.Core.DataObjects
{
    public class Batch : IEntity
    {
        /// <summary>
        /// Primary key
        /// </summary>
        public long? BatchID { get; set; }

        /// <summary>
        /// Short name 
        /// </summary>
        [Required]
        public string ShortName { get; set; }

        /// <summary>
        /// Name 
        /// </summary>
        [Required]
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
        /// Forign key 
        /// </summary>
        [Required]
        public long OrgUnitID { get; set; }

        /// <summary>
        /// Forign key
        /// </summary>
        public long CurriculumID { get; set; }

        /// <summary>
        /// get the current instance BatchID 
        /// </summary>
        public long Key => this.BatchID.Value;

        public void Copy(IEntity entity)
        {
            Helper.Copy(typeof(Batch), this, entity);
        }
    }
}
