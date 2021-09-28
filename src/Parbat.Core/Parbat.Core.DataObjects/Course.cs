using System.ComponentModel.DataAnnotations;

namespace Parbat.Core.DataObjects
{
    public class Course : IEntity
    {
        /// <summary>
        /// Primary Key
        /// </summary>
        public long? CourseID { get; set; }

        /// <summary>
        /// Course Name
        /// </summary>
        [Required]
        public string Name { get; set; }
        /// <summary>
        /// Course ShortName
        /// </summary>
        [Required]
        public string ShortName { get; set; }
        /// <summary>
        /// Course OwnerID
        /// </summary>
        [Required]
        public long OwnerID { get; set; }
        /// <summary>
        /// Course TheoryCredit
        /// </summary>
        [Required]
        public int TheoryCredit { get; set; }
        /// <summary>
        /// Course LabCredit
        /// </summary>
        [Required]
        public int LabCredit { get; set; }
        /// <summary>
        /// Course Code
        /// </summary>
        public string Code { get; set; }
        /// <summary>
        /// Course CourseTypeID
        /// </summary>
        [Required]
        public long CourseTypeID { get; set; }

        public long Key
        {
            get { return this.CourseID.Value; }
        }


        public void Copy(IEntity entity)
        {
            Helper.Copy(typeof(Course), this, entity);
        }
    }
}
