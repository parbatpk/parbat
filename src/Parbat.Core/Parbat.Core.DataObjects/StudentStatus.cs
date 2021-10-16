using System.ComponentModel.DataAnnotations;

namespace Parbat.Core.DataObjects
{
    public class StudentStatus : IEntity
    {
        /// <summary>
        ///primary key 
        /// </summary>
        public long? StudentStatusID;

        /// <summary>
        /// Name
        /// </summary>
       [Required]
        public string Name;

        /// <summary>
        /// get the current instance StudentStatusID
        /// </summary>
        public long Key => this.StudentStatusID.Value;

        public void Copy(IEntity entity)
        {
            Helper.Copy(typeof(StudentStatus), this, entity);
        }
    }
}
