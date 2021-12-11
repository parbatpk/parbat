using System.ComponentModel.DataAnnotations;

namespace Parbat.Core.DataObjects
{
    public class RegisterStatus : IEntity
    {
        /// <summary>
        /// Primary key
        /// </summary>
        public long? RegisterStatusID { get; set; }

        /// <summary>
        /// ShortName
        /// </summary>
        [Required]
        public string ShortName { get; set; }

        /// <summary>
        /// return the current instance RegisterStatusID
        /// </summary>
        public long Key => this.RegisterStatusID.Value;

        public void Copy(IEntity entity)
        {
            Helper.Copy<RegisterStatus>(this, entity);
        }
    }
}
