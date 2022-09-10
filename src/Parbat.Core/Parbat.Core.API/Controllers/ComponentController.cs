using Microsoft.AspNetCore.Mvc;
using Parbat.Core.DataObjects;
using Parbat.Core.Services;
using System.Collections.Generic;

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
        /// <param name="service">IRepositoryFactory</param>
        public ComponentController(ComponentService service)
        {
            _service = service;
        }

        /// <summary>
        /// Get a record
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("{id}", Name = "ComponentGetById")]
        public ActionResult<Component> Get(long id)
        {
            try
            {
                Component found = _service.FindByID(id);

                return Ok(found);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// List all component
        /// </summary>
        /// <returns></returns>
        [HttpGet(Name = "ComponentList")]
        public ActionResult<List<Component>> List()
        {
            try
            {
                var courses = _service.GetAll();

                return Ok(courses);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// Update a component
        /// </summary>
        /// <param name="c"></param>
        /// <returns></returns>
        [HttpPut(Name = "ComponentUpdate")]
        public ActionResult<Component> Update([FromBody] Component c)
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
        [HttpPost(Name = "ComponentCreate")]
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
        [HttpDelete("{id}", Name = "ComponentDeleteById")]
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
