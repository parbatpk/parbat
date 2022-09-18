using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Parbat.Core.DataObjects;
using Parbat.Core.Services;
using System;
using System.Collections.Generic;


namespace Parbat.Core.API.Controllers
{
    /// <summary>
    /// Componenet Type controller
    /// </summary>
    [Route(Global.API_CONTROLLER)]
    [ApiController]
    public class ComponentTypeController : Controller
    {
        private ComponentTypeService _service;

        /// <summary>
        /// Constructor 
        /// </summary>
        /// <param name="service">IRepositoryFactory</param>
        public ComponentTypeController(ComponentTypeService service)
        {
            _service = service;
        }

        /// <summary>
        /// Get a record
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("{id}", Name = "ComponentTypeGetById")]
        public ActionResult<ComponentType> Get(long id)
        {
            try
            {
                ComponentType found = _service.FindByID(id);

                return Ok(found);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// List all componentType
        /// </summary>
        /// <returns></returns>
        [HttpGet(Name = "ComponentTypeList")]
        public ActionResult<List<ComponentType>> List()
        {
            try
            {
                var componenttype = _service.GetAll();

                return Ok(componenttype);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// Update a componentType
        /// </summary>
        /// <param name="c"></param>
        /// <returns></returns>
        [HttpPut(Name = "ComponentTypeUpdate")]
        public ActionResult Update([FromBody] ComponentType c)
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
        [HttpPost(Name = "ComponentTypeCreate")]
        [ProducesResponseType(typeof(ComponentType),StatusCodes.Status201Created)]
        public ActionResult<ComponentType> Create([FromBody] ComponentType c)
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
        [HttpDelete("{id}", Name = "ComponentTypeDeleteById")]
        [ProducesResponseType(StatusCodes.Status204NoContent)]
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
