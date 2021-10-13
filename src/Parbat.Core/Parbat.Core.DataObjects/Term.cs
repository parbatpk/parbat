using System;

namespace Parbat.Core.DataObjects
{
    public class Term : IEntity
    {
        /// <summary>
        /// Primary kery 
        /// </summary>
        public long ?TermID { get; set; }
        /// <summary>
        /// term name
        /// </summary>
        public string Name { get; set; }
        /// <summary>
        /// Nick name for example Maaz Khan == MK
        /// </summary>
        public string ShortName { get; set; }
        /// <summary>
        /// Term is active status
        /// </summary>
        public bool IsActive { get; set; }
        /// <summary>
        /// Start date of the term
        /// </summary>
        public DateTime StartDate { get; set; }

        /// <summary>
        /// end date of the term
        /// </summary>
        public DateTime EndDate { get; set; }

        public long Key => this.TermID.Value;

        public void Copy(IEntity entity)
        {
            Helper.Copy(typeof(Term), this, entity);
        }
    }
}
