using System;

namespace Parbat.Core.DataObjects
{
    public class Term : IEntity
    {
        /// <summary>
        /// Primary kery 
        /// </summary>
        public long ?TermID;
        /// <summary>
        /// term name
        /// </summary>
        public string Name;
        /// <summary>
        /// Nick name for example Maaz Khan == MK
        /// </summary>
        public string ShortName;
        /// <summary>
        /// Term is active status
        /// </summary>
        public bool IsActive;
        /// <summary>
        /// Start date of the term
        /// </summary>
        public DateTime StartDate;

        /// <summary>
        /// end date of the term
        /// </summary>
        public DateTime EndDate;

        public long Key => this.TermID.Value;

        public void Copy(IEntity entity)
        {
            Helper.Copy(typeof(Term), this, entity);
        }
    }
}
