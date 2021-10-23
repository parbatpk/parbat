using System.ComponentModel.DataAnnotations;

namespace Parbat.Core.DataObjects
{
    public class Curriculum : IEntity
    {
        /// <summary>
        /// Primary Key
        /// </summary>
        public long? CurriculumID { get; set; }

        /// <summary>
        /// Curriculum Name
        /// </summary>
        [Required]
        public string Name { get; set; }
       
        /// <summary>
        /// Curriculum ShortName
        /// </summary>
        [Required]
      
        public string ShortName { get; set; }
      
        /// <summary>
        /// Curriculum OwnerID
        /// </summary>
        [Required]
        public long OwnerUnitID { get; set; }
       
        /// <summary>
        /// Curriculum TotalCourses
        /// </summary>
        [Required]
        public int TotalCourses { get; set; }
       
        /// <summary>
        /// Curriculum TotalCreditHrs
        /// </summary>
        [Required]
        public int TotalCreditHrs { get; set; }
       
        /// <summary>
        /// Curriculum IsLimitCourses
        /// </summary>
        [Required]
        public bool IsLimitCourses { get; set; }
       
        /// <summary>
        /// Curriculum IsLimitCreditHrs
        /// </summary>
        [Required]
        public bool IsLimitCreditHrs { get; set; }
      
        /// <summary>
        /// Curriculum CurriculumTypeID
        /// </summary>
        [Required]
        public long CurriculumTypeID { get; set; }

        /// <summary>
        /// get the current object curriculumID
        /// </summary>
        public long Key => this.CurriculumID.Value;

        public void Copy(IEntity entity)
        {
            Helper.Copy(typeof(Curriculum), this, entity);
        }
    }
}
