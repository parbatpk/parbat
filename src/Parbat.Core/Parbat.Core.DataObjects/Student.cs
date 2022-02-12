using System.ComponentModel.DataAnnotations;

namespace Parbat.Core.DataObjects
{
    public class Student : IEntity
    {
        /// <summary>
        /// Primary Key
        /// </summary>
        public long? StudentID { get; set; }

        /// <summary>
        /// Identity
        /// </summary>
        public string Identifier { get; set; }

        /// <summary>
        /// Name 
        /// </summary>
        [Required]
        public string Name { get; set; }

        /// <summary>
        /// Last Name 
        /// </summary>
        [Required]
        public string LastName { get; set; }

        /// <summary>
        /// Forign Key Student GroupID
        /// </summary>
        public string StudetGroupID { get; set; }

        /// <summary>
        /// get the current instance StudentID
        /// </summary>
        public long Key => this.StudentID.Value;

        public void Copy(IEntity entity)
        {
            Helper.Copy(typeof(Student), this, entity);
        }
    }
}
