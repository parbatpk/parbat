using System.ComponentModel.DataAnnotations;

namespace Parbat.Core.DataObjects.Models
{
    public class Class : IEntity
    {
        /// <summary>
        /// Primary key
        /// </summary>
        [Required]
        public long ClassID { get; set; }
        
        /// <summary>
        /// ShortName
        /// </summary>
        [Required]
        public string ShortName { get; set; }
        
        /// <summary>
        /// Name
        /// </summary>
        [Required]
        public string Name { get; set; }
        
        /// <summary>
        /// Capacity
        /// </summary>
        [Required]
        public int Capacity { get; set; }

        /// <summary>
        /// get the current instance ClassID
        /// </summary>
        public long Key => this.ClassID;

        public void Copy(IEntity entity)
        {
            Helper.Copy(typeof(Class), this, entity);
        }
    }
}
