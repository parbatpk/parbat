using System;
using System.ComponentModel.DataAnnotations;

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
        [Required]
        public string Name { get; set; }

        /// <summary>
        /// Short Name
        /// </summary>
        [Required]
        public string ShortName { get; set; }

        /// <summary>
        /// is active
        /// </summary>
        [Required]
        public bool IsActive { get; set; }

        /// <summary>
        /// Start date 
        /// </summary>
        public DateTime StartDate { get; set; }

        /// <summary>
        /// end date
        /// </summary>
        public DateTime EndDate { get; set; }

        /// <summary>
        /// get the current instance TermID
        /// </summary>
        public long Key => this.TermID.Value;

        public void Copy(IEntity entity)
        {
            Helper.Copy(typeof(Term), this, entity);
        }
    }
}
