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
    /// <summary>
    /// Component Course Controller
    /// </summary>
    [Route(Global.API_CONTROLLER)]
    [ApiController]
    public class ComponentCourseController : Controller
    {
        private ComponentCourseService _service;

        /// <summary>
        /// Constructor 
        /// </summary>
        /// <param name="service">IRepositoryFactory</param>
        public ComponentCourseController(ComponentCourseService service)
        {
            _service = service;
        }

        /// <summary>
        /// Get a record
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("{id}", Name = "ComponentCourseGetById")]
        public ActionResult<ComponentCourse> Get(long id)
        {
            try
            {
                ComponentCourse found = _service.FindByID(id);

                return Ok(found);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// List all componentcourses
        /// </summary>
        /// <returns></returns>
        [HttpGet(Name = "ComponentCourseList")]
        public ActionResult List()
        {
            try
            {
                var componentCourses = _service.GetAll();
                return Ok(componentCourses);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// Update a componentcourse
        /// </summary>
        /// <param name="c"></param>
        /// <returns></returns>
        [HttpPut(Name = "ComponentCourseUpdate")]
        public ActionResult Update([FromBody] ComponentCourse c)
        {
            try
            {
                _service.Update(c);
                return NoContent();
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// Create 
        /// </summary>
        /// <param name="c"></param>
        /// <returns></returns>
        [HttpPost(Name = "ComponentCourseCreate")]
        public ActionResult<ComponentCourse> Create([FromBody] ComponentCourse c)
        {
            try
            {
                _service.Create(c);
                return Created("Get", c);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }

        }

        /// <summary>
        /// Delete
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpDelete("{id}", Name = "ComponentCouseDeleteById")]
        public ActionResult Delete(long id)
        {
            try
            {
                _service.Delete(id);
                return NoContent();
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }
    }
}