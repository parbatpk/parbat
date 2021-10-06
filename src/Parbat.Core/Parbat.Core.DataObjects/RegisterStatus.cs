using System;

namespace Parbat.Core.DataObjects
{
    public class RegisterStatus : IEntity
    {
        /// <summary>
        /// Primary key of RegSatus
        /// </summary>
        public long? RegisterStatusID;
        /// <summary>
        /// ShortName of RegStatus
        /// </summary>
        public string ShortName;

        /// <summary>
        /// return the current instance RegisterStatusID
        /// </summary>
        public long Key => this.RegisterStatusID.Value;

        public void Copy(IEntity entity)
        {
            Helper.Copy(typeof(RegisterStatus), this, entity);
        }
    }
}
