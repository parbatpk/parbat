using System;
using System.Collections.Generic;

#nullable disable

namespace Parbat.Core.DataObjects.Models
{
    public partial class ComponentCourse: IEntity
    {
        public long ComponentCourseId { get; set; }
        public long ComponentId { get; set; }
        public long CourseId { get; set; }

        public long Key => this.ComponentCourseId;

        public void Copy(IEntity entity)
        {
            Helper.Copy<ComponentCourse>(this, entity);
        }
    }
}
