using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Parbat.Core.DataObjects;
using Parbat.Core.Services;
using System;
using System.Collections.Generic;

namespace Parbat.Core.API.Controllers
{
    /// <summary>
    /// Course Controller class
    /// </summary>
    [Route(Global.API_CONTROLLER)]
    [ApiController]
    public class CourseController : Controller
    {
        CourseService _service;

        /// <summary>
        /// Constructor
        /// </summary>
        /// <param name="service"></param>
        public CourseController(CourseService service)
        {
            _service = service;
        }

        /// <summary>
        /// Get a record
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("{id}", Name = "CourseGetById")]
        public ActionResult<Course> Get(long id)
        {
            try
            {
                Course found = _service.FindByID(id);

                return Ok(found);
            }
            catch (ServiceException ex)
            {
                return BadRequest(ex.Message);
            }
        }

        /// <summary>
        /// List all courses
        /// </summary>
        /// <returns></returns>
        [HttpGet(Name = "CourseList")]
        public ActionResult<List<Course>> List()
        {
            try
            {
                var courses = _service.GetAllCourses();

                return Ok(courses);
            }
            catch (ServiceException ex)
            {
                return BadRequest(ex.Message);
            }
        }

        /// <summary>
        /// Update a course
        /// </summary>
        /// <param name="c"></param>
        /// <returns></returns>
        [HttpPut(Name = "CourseUpdate")]
        public ActionResult<Course> Update([FromBody] Course c)
        {
            try
            {
                _service.Update(c);

                return NoContent();
            }
            catch (ServiceException ex)
            {
                return BadRequest(ex.Message);
            }
        }

        /// <summary>
        /// Create 
        /// </summary>
        /// <param name="c"></param>
        /// <returns></returns>
        [HttpPost(Name = "CourseCreate")]
        [ProducesResponseType(typeof(Course), StatusCodes.Status201Created)]
        public ActionResult<Course> Create([FromBody] Course c)
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
        [HttpDelete("{id}", Name = "CourseDeleteById")]
        [ProducesResponseType(StatusCodes.Status204NoContent)]
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

        /// <summary>
        ///     ListOrgUnit
        /// </summary>
        /// <returns>List of Org which contains atleast one course otherwise null</returns>
        [HttpGet(Name = "CourseListOrgUnit")]
        public ActionResult<List<OrgUnit>> ListOrgUnit()
        {
            try
            {
                var orgUnitContainCourse = _service.GetAllOrgUnitContainsCourse();

                return Ok(orgUnitContainCourse);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        /// <summary>
        ///     ListCourseOrgUnit
        /// </summary>
        /// <param name="id"></param>
        /// <returns>Course of Specific OrgUnit</returns>
        [HttpGet("{id}", Name = "CourseListCourseOrgUnitById")]
        public ActionResult<List<Course>> ListCourseOrgUnit(long id)
        {
            try
            {
                var orgUnitContainCourse = _service.GetAllCourseSpecificOrgUnit(id);

                return Ok(orgUnitContainCourse);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
    }
}
