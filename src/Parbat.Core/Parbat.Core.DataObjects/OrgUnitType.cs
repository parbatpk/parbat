using System.ComponentModel.DataAnnotations;

namespace Parbat.Core.DataObjects
{
    public class OrgUnitType : IEntity
    {
        /// <summary>
        /// Primary key
        /// </summary>
        public long? OrgUnitTypeID {get; set;}

        /// <summary>
        /// ShortName
        /// </summary>
        [Required]
        public string ShortName { get; set; }
        /// <summary>
        /// FullName 
        /// </summary>
        [Required]
        public string Name { get; set; }

        /// <summary>
        /// get the current instance OrgUnitType
        /// </summary>
        public long Key => this.OrgUnitTypeID.Value;

        public void Copy(IEntity entity)
        {
            Helper.Copy(typeof(OrgUnitType), this, entity);
        }
    }
}
