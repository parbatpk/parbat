using System.ComponentModel.DataAnnotations;

namespace Parbat.Core.DataObjects
{
    public class StudentGroup : IEntity
    {
        /// <summary>
        /// Primary key of StudenGroup Table
        /// </summary>
        public long? StudentGroupID { get; set; }
        /// <summary>
        /// ShortName of StudentGroup
        /// </summary>
        [Required]
        public string ShortName { get; set; }
        /// <summary>
        /// Name of StudentGroup
        /// </summary>
        [Required]
        public string Name { get; set; }
        /// <summary>
        /// Is StudentGroup Active or Not
        /// </summary>
        public bool IsActive { get; set; }

        public long Key => this.StudentGroupID.Value;

        public void Copy(IEntity entity)
        {
            Helper.Copy(typeof(StudentGroup), this, entity);
        }
    }
}
