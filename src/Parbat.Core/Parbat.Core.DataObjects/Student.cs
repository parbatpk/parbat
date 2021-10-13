
namespace Parbat.Core.DataObjects
{
    public class Student : IEntity
    {
        /// <summary>
        /// This is the Primary key of the Sdt table
        /// </summary>
        public long? StudentID { get; set; }

        /// <summary>
        /// Std Identity
        /// </summary>
        public string Identifier { get; set; }

        /// <summary>
        /// First Name of the student
        /// </summary>
        public string FirstName { get; set; }

        /// <summary>
        /// Last Name of the student
        /// </summary>
        public string LastName { get; set; }

        public long Key => this.StudentID.Value;

        public void Copy(IEntity entity)
        {
            Helper.Copy(typeof(Student), this, entity);
        }
    }
}
