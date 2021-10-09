using System.ComponentModel.DataAnnotations;

namespace Parbat.Core.DataObjects
{
    public class CourseType : IEntity
    {
        /// <summary>
        /// Primary key of the table courseType
        /// </summary>
        public long? CourseTypeID { get; set; }

        /// <summary>
        /// CourseType Name is mandatory field in the table courseType
        /// </summary>
        [Required]
        public string Name { get; set; }

        /// <summary>
        /// get the coursetypeID of the current object/instance
        /// </summary>
        public long Key => this.CourseTypeID.Value;


        public void Copy(IEntity entity)
        {
            Helper.Copy(typeof(CourseType), this, entity);
        }
    }
}
