using System;
using System.ComponentModel.DataAnnotations;

namespace Parbat.Core.DataObjects
{
    public class Registration : IEntity
    {
        /// <summary>
        /// Primary Key
        /// </summary>
        public long? RegistrationID { get; set; }
        
        /// <summary>
        /// Registeration Date
        /// </summary>
        [Required]
        public DateTime RegisterDate { get; set; }
        
        /// <summary>
        /// Forign Key
        /// </summary>
        [Required]
        public long StudentProgramID { get; set; }
        
        /// <summary>
        /// Forign Key
        /// </summary>
        [Required]
        public long ClassID { get; set; }
        
        /// <summary>
        /// Forign Key
        /// </summary>
        [Required]
        public long RegisterStatusID { get; set; }

        /// <summary>
        /// get the current instance RegistrationID
        /// </summary>
        public long Key => this.RegistrationID.Value;

        public void Copy(IEntity entity)
        {
            Helper.Copy(typeof(Registration), this, entity);
        }
    }
}
