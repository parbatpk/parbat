using Parbat.Core.API.Client;
using System.ComponentModel.DataAnnotations;

namespace Parbat.Core.Web.Models
{
    public class CourseOrg
    {
        [Required]
        public Course course { get; set; }

        [Required]
        public ICollection<OrgUnit> orgUnits { get; set; }
    }
}
