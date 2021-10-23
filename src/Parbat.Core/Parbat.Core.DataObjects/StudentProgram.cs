using System;
using System.ComponentModel.DataAnnotations;

namespace Parbat.Core.DataObjects
{
    public class StudentProgram : IEntity
    {
        /// <summary>
        /// Primary key
        /// </summary>
        public long StudentProgramID { get; set; }

        /// <summary>
        /// Forign Key
        /// </summary>
        [Required]
        public long StudentID { get; set; }
        
        /// <summary>
        /// Forign Key
        /// </summary>
        public long? BatchID { get; set; }

        /// <summary>
        /// Start Date
        /// </summary>
        public DateTime? StartDate { get; set; }
        
        /// <summary>
        /// End Date
        /// </summary>
        public DateTime? EndDate { get; set; }

        /// <summary>
        /// Forign Key
        /// </summary>
        [Required]
        public long StudentStatusID { get; set; }

        /// <summary>
        /// Forign Key
        /// </summary>
        public long? OverrideCurriculumID { get; set; }

        /// <summary>
        /// Forign Key
        /// </summary>
        public long? MinorCurriculumID { get; set; }

        /// <summary>
        /// Forign Key
        /// </summary>
        public long? StudentGroupID { get; set; }

        /// <summary>
        /// get the current instance StudentProgramID
        /// </summary>
        public long Key => throw new NotImplementedException();

        public void Copy(IEntity entity)
        {
            Helper.Copy(typeof(StudentProgram), this, entity);
        }
    }
}
