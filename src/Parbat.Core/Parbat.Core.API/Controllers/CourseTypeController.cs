using Microsoft.AspNetCore.Mvc;
using Parbat.Core.DataObjects;
using Parbat.Core.Services;
using System.Collections.Generic;

namespace Parbat.Core.API.Controllers
{
    /// <summary>
    /// CourseType controller class
    /// </summary>
    [Route(Global.API_CONTROLLER)]
    [ApiController]
    public class CourseTypeController : Controller
    {
        CourseTypeService _service;

        /// <summary>
        /// Constructor
        /// </summary>
        /// <param name="service"></param>
        public CourseTypeController(CourseTypeService service)
        {
            _service = service;
        }


        /// <summary>
        /// Get record by id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("{id}", Name = "CourseTypeGetById")]
        public ActionResult<CourseType> Get(long id)
        {
            try
            {
                CourseType found = _service.FindByID(id);

                return Ok(found);
            }
            catch(ServiceException se)
            {
                return BadRequest(se);
            }
        }

        /// <summary>
        /// get all coursetypes
        /// </summary>
        /// <returns></returns>
        [HttpGet(Name = "CourseTypeList")]
        public ActionResult<CourseType> List()
        {
            try
            {
                var coursetypes = _service.GetAllCourses();

                return Ok(coursetypes);
            }
            catch(ServiceException se)
            {
                return BadRequest(se);
            }
        }

        /// <summary>
        /// Update a coursetype
        /// </summary>
        /// <param name="c"></param>
        /// <returns></returns>
        [HttpPut(Name = "CourseTypeUpdate")]
        public ActionResult<List<CourseType>> Update([FromBody] CourseType c)
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
        /// Add new coursetype
        /// </summary>
        /// <param name="c"></param>
        /// <returns></returns>
        [HttpPost(Name = "CourseTypeCreate")]
        public ActionResult<Course> Create([FromBody] CourseType c)
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
        /// Delete a course type by id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpDelete("{id}", Name = "CourseTypeDeleteById")]
        public ActionResult<long> Delete(long id)
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
