using System.ComponentModel.DataAnnotations;

namespace Parbat.Core.DataObjects
{
    public class RegisterStatus : IEntity
    {
        /// <summary>
        /// Primary key
        /// </summary>
        public long? RegisterStatusID;
       
        /// <summary>
        /// ShortName
        /// </summary>
        [Required]
        public string ShortName;

        /// <summary>
        /// get the current instance RegisterStatusID
        /// </summary>
        public long Key => this.RegisterStatusID.Value;

        public void Copy(IEntity entity)
        {
            Helper.Copy(typeof(RegisterStatus), this, entity);
        }
    }
}
