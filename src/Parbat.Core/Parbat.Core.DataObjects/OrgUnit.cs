using System.ComponentModel.DataAnnotations;

namespace Parbat.Core.DataObjects
{
    public class OrgUnit : IEntity
    {
        /// <summary>
        /// Primary Key
        /// </summary>
        public long? OrgUnitID { get; set; }
        /// <summary>
        /// Forign Key of OrgUnitTypeID
        /// </summary>
        [Required]
        public long OrgUnitTypeID { get; set; }
        /// <summary>
        /// OrgUnit Name
        /// </summary>
        [Required]
        public string Name { get; set; }
        /// <summary>
        /// OrgUnit ShortName
        /// </summary>
        [Required]
        public string ShortName { get; set; }
        /// <summary>
        /// OrgUnit ParentID
        /// </summary>
        public long? ParentUnitID { get; set; }
        /// <summary>
        /// OrgUnit Name
        /// </summary>
        [Required]
        public bool IsAllowAdmission { get; set; }

        /// <summary>
        /// return the current instance orgunitID
        /// </summary>
        public long Key => this.OrgUnitID.Value;

        public void Copy(IEntity entity)
        {
            Helper.Copy(typeof(OrgUnit), this, entity);
        }
    }
}
