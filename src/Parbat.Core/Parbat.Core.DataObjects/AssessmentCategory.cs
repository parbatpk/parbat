using System.ComponentModel.DataAnnotations;

namespace Parbat.Core.DataObjects
{
    public class AssessmentCategory : IEntity
    {
        /// <summary>
        /// Primary key
        /// </summary>
        public long? AssessmentCategoryID { get; set; }

        /// <summary>
        /// Name
        /// </summary>
        [Required]
        public string Name { get; set; }

        /// <summary>
        /// Weight
        /// </summary>
        [Required]
        public decimal Weight { get; set; }

        /// <summary>
        /// Forign Key
        /// </summary>
        [Required]
        public long ClassModuleID { get; set; }

        /// <summary>
        /// get the current instance AssessmentCategoryID
        /// </summary>
        public long Key => this.AssessmentCategoryID.Value;

        public void Copy(IEntity entity)
        {
            Helper.Copy(typeof(AssessmentCategory), this, entity);
        }
    }
}
