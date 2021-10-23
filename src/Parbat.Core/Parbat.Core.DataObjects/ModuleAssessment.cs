using System.ComponentModel.DataAnnotations;

namespace Parbat.Core.DataObjects
{
    public class ModuleAssessment : IEntity
    {
        /// <summary>
        /// Primary key
        /// </summary>
        public long? ModuleAssessmentID { get; set; }

        /// <summary>
        /// Name
        /// </summary>
        [Required]
        public string Name { get; set; }

        /// <summary>
        /// weight
        /// </summary>
        [Required]
        public decimal Weight { get; set; }

        /// <summary>
        /// Forign key
        /// </summary>
        [Required]
        public long AssessmentCategoryID { get; set; }

        /// <summary>
        /// get the current instance ModuleAssessmentID
        /// </summary>
        public long Key => this.ModuleAssessmentID.Value;

        public void Copy(IEntity entity)
        {
            Helper.Copy(typeof(ModuleAssessment), this, entity);
        }
    }
}
