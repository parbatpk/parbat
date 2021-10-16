using System.ComponentModel.DataAnnotations;

namespace Parbat.Core.DataObjects
{
    public class CourseType : IEntity
    {
        /// <summary>
        /// Primary key 
        /// </summary>
        public long? CourseTypeID { get; set; }

        /// <summary>
        ///  Name
        /// </summary>
        [Required]
        public string Name { get; set; }

        /// <summary>
        /// get the the current object/instance CourseTypeID
        /// </summary>
        public long Key => this.CourseTypeID.Value;


        public void Copy(IEntity entity)
        {
            Helper.Copy(typeof(CourseType), this, entity);
        }
    }
}
