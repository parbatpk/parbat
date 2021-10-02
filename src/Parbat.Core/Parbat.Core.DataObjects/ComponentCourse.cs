using System.ComponentModel.DataAnnotations;

namespace Parbat.Core.DataObjects
{
    public class ComponentCourse : IEntity
    {
        /// <summary>
        /// Primary Key
        /// </summary>
        public long? ComponentCourseID { get; set; }

        /// <summary>
        /// ComponentCourse Name
        /// </summary>
        [Required]
        public long ComponentID { get; set; }
        /// <summary>
        /// ComponentCourse ShortName
        /// </summary>
        [Required]
        public long CourseID { get; set; }

        public long Key => this.ComponentCourseID.Value;

        public void Copy(IEntity entity)
        {
            Helper.Copy(typeof(ComponentCourse), this, entity);
        }
    }
}
