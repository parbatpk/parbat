using System.ComponentModel.DataAnnotations;

namespace Parbat.Core.DataObjects
{
    public class OrgUnitType : IEntity
    {
        /// <summary>
        /// This is the primary key
        /// </summary>
        public long? OrgUnitTypeID;

        /// <summary>
        /// ShortName  of OrgUnitType
        /// </summary>
        [Required]
        public string ShortName;
        /// <summary>
        /// FullName of OrgUnitType
        /// </summary>
        [Required]
        public string Name;

        /// <summary>
        /// return the current instance OrgUnitType
        /// </summary>
        public long Key => this.OrgUnitTypeID.Value;

        public void Copy(IEntity entity)
        {
            Helper.Copy(typeof(OrgUnitType), this, entity);
        }
    }
}
