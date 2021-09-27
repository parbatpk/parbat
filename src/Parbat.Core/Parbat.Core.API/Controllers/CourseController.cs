using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using Parbat.Core.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Parbat.Core.API.Controllers
{
    [Route(Global.API_CONTROLLER)]
    [ApiController]
    public class CourseController : Controller
    {
        IRepositoryFactory _factory;

        public CourseController(IRepositoryFactory f)
        {
            _factory = f;
        }

        [HttpGet("{id}")]
        public ActionResult<Course> Get(long id)
        {
            try
            {
                CourseService s = new(_factory);
                Course found = s.FindByID(id);

                return Ok(found);
            }
            catch (ServiceException ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [HttpGet]
        public ActionResult List()
        {
            try
            {
                var cs = new CourseService(_factory);
                var courses = cs.GetAllCourses();
                return Ok(courses);
            }
            catch (ServiceException ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [HttpPut]
        public ActionResult Update([FromBody] Course c)
        {
            try
            {
                var cs = new CourseService(_factory);
                cs.Update(c);
                return NoContent();
            }
            catch (ServiceException ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [HttpPost]
        public ActionResult<Course> Create([FromBody] Course c)
        {
            try
            {
                CourseService cs = new(_factory);
                cs.Create(c);
                return Created("Get", c);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }

        }

        [HttpDelete("{id}")]
        public ActionResult Delete(long id)
        {
            try
            {
                CourseService cs = new CourseService(_factory);
                cs.Delete(id);
                return NoContent();
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }
    }
}
