using System.ComponentModel.DataAnnotations;

namespace Parbat.Core.DataObjects
{
    public class Semester : IEntity
    {
        /// <summary>
        /// Primary Key
        /// </summary>
        public long? SemesterID { get; set; }
        
        /// <summary>
        /// ShortName
        /// </summary>
        [Required]
        public string ShortName { get; set; }
        
        /// <summary>
        /// Name
        /// </summary>
        [Required]
        public string Name { get; set; }
        
        /// <summary>
        /// Forign Key
        /// </summary>
        [Required]
        public long StudentGroupID { get; set; }

        /// <summary>
        /// ForignKey
        /// </summary>
        [Required]
        public long TermID { get; set; }

        /// <summary>
        /// get the current instance SemesterID
        /// </summary>
        public long Key => this.SemesterID.Value;

        public void Copy(IEntity entity)
        {
            Helper.Copy(typeof(Semester), this, entity);
        }
    }
}
