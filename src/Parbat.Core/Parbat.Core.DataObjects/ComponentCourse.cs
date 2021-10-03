
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


        public void Copy(IEntity entity)
        {
            Helper.Copy<ComponentCourse>(this, entity);
        }
    }
}
