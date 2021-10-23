using System.ComponentModel.DataAnnotations;

namespace Parbat.Core.DataObjects.Models
{
    public partial class ClassModule : IEntity
    {
        public long ClassModuleID { get; set; }
        
        /// <summary>
        /// Primary key of Class 
        /// </summary>
        [Required]
        public long ClassID { get; set; }
        
        /// <summary>
        /// Forign key
        /// </summary>
        [Required]
        public long FacultyID { get; set; }
        
        /// <summary>
        /// ShortName
        /// </summary>
        [Required]
        public string ShortName { get; set; }
       
        /// <summary>
        /// Thoery Credit
        /// </summary>
        [Required]
        public int TheoryCredit { get; set; }
        
        /// <summary>
        /// Label Credit 
        /// </summary>
        [Required]
        public int LabCredit { get; set; }

        /// <summary>
        /// get the current instanc ClassModuleID
        /// </summary>
        public long Key => this.ClassModuleID;

        public void Copy(IEntity entity)
        {
            Helper.Copy<ClassModule>(this, entity);
        }
    }
}
