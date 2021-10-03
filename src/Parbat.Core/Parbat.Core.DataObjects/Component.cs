namespace Parbat.Core.DataObjects
{
    public class Component : IEntity
    {
        /// <summary>
        /// Primary key
        /// </summary>
        public long? ComponentID { get; set; }
        
        /// <summary>
        /// Short Name
        /// </summary>
        public string ShortName { get; set; }

        /// <summary>
        /// Name
        /// </summary>
        public string Name { get; set; }
        
        /// <summary>
        /// CurriculumID
        /// </summary>
        public int CurriculumID { get; set; }
        
        /// <summary>
        /// TotalCredit 
        /// </summary>
        public int TotalCredit { get; set; }

        /// <summary>
        /// TotalCourses
        /// </summary>
        public int TotalCourses { get; set; }
        
        /// <summary>
        /// IslimitCourses 
        /// </summary>
        public bool IsLimitCourses { get; set; }
        
        /// <summary>
        /// IsLimitCreditHrs
        /// </summary>
        public bool IsLimitCreditHrs { get; set; }
        
        /// <summary>
        /// Component type ID
        /// </summary>
        public int ComponentTypeID { get; set; }

        public long Key => this.ComponentID.Value;

        public void Copy(IEntity entity)
        {
            Helper.Copy<Component>(this, entity);
        }
    }
}
