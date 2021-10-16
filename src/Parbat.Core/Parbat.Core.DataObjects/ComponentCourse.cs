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
        /// Forign key
        /// </summary>
        [Required]
        public long ComponentID { get; set; }

        /// <summary>
        /// Forign Key
        /// </summary>
        [Required]
        public long CourseID { get; set; }

        /// <summary>
        /// get the current instance ComponetCourseID
        /// </summary>
        public long Key => this.ComponentCourseID.Value;

        public void Copy(IEntity entity)
        {
            Helper.Copy<ComponentCourse>(this, entity);
        }
    }
}
