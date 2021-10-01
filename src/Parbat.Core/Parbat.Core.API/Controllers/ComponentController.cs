﻿using Microsoft.AspNetCore.Mvc;
using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using Parbat.Core.Services;

namespace Parbat.Core.API.Controllers
{
    /// <summary>
    /// 
    /// </summary>
    [Route(Global.API_CONTROLLER)]
    [ApiController]
    public class ComponentController : Controller
    {
        private ComponentService _service;

        /// <summary>
        /// Constructor 
        /// </summary>
        /// <param name="factory">IRepositoryFactory</param>
        public ComponentController(IRepositoryFactory factory)
        {

            _service = new ComponentService(factory);
        }

        /// <summary>
        /// Get a record
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("{id}")]
        public ActionResult<Component> Get(long id)
        {
            try
            {
                Component found = _service.FindByID(id);

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
        [HttpGet]
        public ActionResult List()
        {
            try
            {
                var courses = _service.GetAll();
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
        [HttpPut]
        public ActionResult Update([FromBody] Component c)
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
        [HttpPost]
        public ActionResult<Component> Create([FromBody] Component c)
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