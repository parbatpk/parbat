using System.ComponentModel.DataAnnotations;

namespace Parbat.Core.DataObjects.Models
{
    public partial class ClassMapping : IEntity
    {
        /// <summary>
        /// Primary key
        /// </summary>
        public long? ClassMappingID { get; set; }

        /// <summary>
        /// Forign Key
        /// </summary>
        [Required]
        public long OfferingID { get; set; }
        
        /// <summary>
        /// Forign Key
        /// </summary>
        [Required]
        public long ClassID { get; set; }

        /// <summary>
        /// get the current instance ClassMappingID 
        /// </summary>
        public long Key => this.ClassMappingID.Value;

        public void Copy(IEntity entity)
        {
            Helper.Copy<ClassMapping>(this, entity);
        }
    }
}
