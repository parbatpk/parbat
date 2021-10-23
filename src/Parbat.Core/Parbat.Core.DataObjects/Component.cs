using System.ComponentModel.DataAnnotations;

namespace Parbat.Core.DataObjects
{
    public class Component : IEntity
    {
        /// <summary>
        /// Primary key
        /// </summary>
        public long? ComponentID { get; set; }
        
        /// <summary>
        /// Short Name
        /// </summary>
        [Required]
        public string ShortName { get; set; }

        /// <summary>
        /// Name
        /// </summary>
        [Required]
        public string Name { get; set; }
        
        /// <summary>
        /// Primary key 
        /// </summary>
        [Required]
        public int CurriculumID { get; set; }
        
        /// <summary>
        /// TotalCredit 
        /// </summary>
        [Required]
        public int TotalCredit { get; set; }

        /// <summary>
        /// TotalCourses
        /// </summary>
        [Required]
        public int TotalCourses { get; set; }
        
        /// <summary>
        /// IslimitCourses 
        /// </summary>
        [Required]
        public bool IsLimitCourses { get; set; }
        
        /// <summary>
        /// IsLimitCreditHrs
        /// </summary>
        [Required]
        public bool IsLimitCreditHrs { get; set; }
        
        /// <summary>
        /// ForignKey
        /// </summary>
        [Required]
        public int ComponentTypeID { get; set; }

        /// <summary>
        /// get the current instance ComponentID
        /// </summary>
        public long Key => this.ComponentID.Value;

        public void Copy(IEntity entity)
        {
            Helper.Copy<Component>(this, entity);
        }
    }
}
