
namespace Parbat.Core.DataObjects
{
    public class StudentStatus : IEntity
    {
        /// <summary>
        /// This is the primary key in the StudentStatus Table
        /// </summary>
        public long? StudentStatusID { get; set; }

        /// <summary>
        /// Name Attribute in the StudentStatus Table
        /// </summary>
        public string Name { get; set; }

        /// <summary>
        /// return the current instance StudentStatusID
        /// </summary>
        public long Key => this.StudentStatusID.Value;

        public void Copy(IEntity entity)
        {
            Helper.Copy(typeof(StudentStatus), this, entity);
        }
    }
}
