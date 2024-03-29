﻿using Microsoft.AspNetCore.Mvc;
using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using Parbat.Core.Services;

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
        [HttpGet("{id}")]
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
        [HttpGet]
        public ActionResult List()
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
        [HttpPut]
        public ActionResult Update([FromBody] CourseType c)
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
        [HttpPost]
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
        [HttpDelete("{id}")]
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
