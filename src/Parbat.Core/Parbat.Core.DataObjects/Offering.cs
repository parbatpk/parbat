using System.ComponentModel.DataAnnotations;

namespace Parbat.Core.DataObjects
{
    public class Offering : IEntity
    {
        public long? OfferingID { get; set; }

        [Required]
        public long CousreID { get; set; }
        
        /// <summary>
        /// Primary Key TermID
        /// </summary>
        [Required]
        public long TermID { get; set; }
        
        /// <summary>
        /// Primary key OrgUnitID
        /// </summary>
        [Required]
        public long OrgUnitID { get; set; }

        /// <summary>
        /// Primary key SemesterID
        /// </summary>
        public long? SemesterID { get; set; }

        /// <summary>
        /// get the current instance OfferingID
        /// </summary>
        public long Key => this.OfferingID.Value;

        public void Copy(IEntity entity)
        {
            Helper.Copy(typeof(Offering), this, entity);
        }
    }
}
