using System.ComponentModel.DataAnnotations;

namespace Parbat.Core.DataObjects
{
    public class CurriculumType : IEntity
    {
        /// <summary>
        /// Primary Key
        /// </summary>
        public long? CurriculumTypeID { get; set; }

        /// <summary>
        /// Curriculum Name
        /// </summary>
        [Required]
        public string Name { get; set; }

        /// <summary>
        /// get the current instance curriculumTypeID
        /// </summary>
        public long Key => this.CurriculumTypeID.Value;

        public void Copy(IEntity entity)
        {
            Helper.Copy(typeof(CurriculumType), this, entity);
        }
    }
}
