using System.ComponentModel.DataAnnotations;


namespace Parbat.Core.DataObjects
{
    public class ModuleAssessmentMark : IEntity
    {
        /// <summary>
        /// Primary key
        /// </summary>
        public long? ModuleAssessmentMarkID { get; set; }

        /// <summary>
        /// Obtain Marks
        /// </summary>
        [Required]
        public decimal ObtainMark { get; set; }

        /// <summary>
        /// Forign Key
        /// </summary>
        [Required]
        public long RegistrationID { get; set; }

        /// <summary>
        /// Forign Key
        /// </summary>
        [Required]
        public long ModuleAssessmentID { get; set; }

        /// <summary>
        /// get the current instanxe ModuleAssessmentMarkID
        /// </summary>
        public long Key => this.ModuleAssessmentMarkID.Value;

        public void Copy(IEntity entity)
        {
            Helper.Copy(typeof(ModuleAssessmentMark), this, entity);
        }
    }
}
