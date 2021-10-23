using System.ComponentModel.DataAnnotations;

namespace Parbat.Core.DataObjects
{
    public class ComponentType : IEntity
    {
        /// <summary>
        /// Primary Key
        /// </summary>
        public long? ComponentTypeID { get; set; }

        /// <summary>
        ///  Name
        /// </summary>
        [Required]
        public string Name { get; set; }

        /// <summary>
        /// IsRequired
        /// </summary>
        [Required]
        public bool IsRequired { get; set; }

        /// <summary>
        /// get the current object ComponentTypeID
        /// </summary>
        public long Key => this.ComponentTypeID.Value;

        public void Copy(IEntity entity)
        {
            Helper.Copy(typeof(ComponentType), this, entity);
        }
    }
}
