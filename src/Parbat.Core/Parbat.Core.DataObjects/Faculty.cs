using System.ComponentModel.DataAnnotations;

namespace Parbat.Core.DataObjects
{
    public class Faculty : IEntity
    {
        /// <summary>
        /// Primary key of the Table
        /// </summary>
        public long? FacultyID { get; set; }

        /// <summary>
        /// First Name
        /// </summary>
        [Required]
        public string FirstName { get; set; }
        
        /// <summary>
        /// LastName
        /// </summary>
        public string LastName { get; set; }

        /// <summary>
        /// get the current instance FacultyID 
        /// </summary>
        public long Key => this.FacultyID.Value;

        public void Copy(IEntity entity)
        {
            Helper.Copy(typeof(Faculty), this, entity);
        }
    }
}
