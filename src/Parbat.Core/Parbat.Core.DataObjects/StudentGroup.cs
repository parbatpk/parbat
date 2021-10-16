using System.ComponentModel.DataAnnotations;

namespace Parbat.Core.DataObjects
{
    public class StudentGroup : IEntity
    {
        /// <summary>
        /// Primary key
        /// </summary>
        public long? StudentGroupID { get; set; }
        
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
        /// IsActive 
        /// </summary>
        public bool IsActive { get; set; }

        /// <summary>
        /// get the current instance StudentGroupID
        /// </summary>
        public long Key => this.StudentGroupID.Value;

        public void Copy(IEntity entity)
        {
            Helper.Copy(typeof(StudentGroup), this, entity);
        }
    }
}
