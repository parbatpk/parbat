using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Parbat.Core.DataObjects.Models;
using Parbat.Core.Services;
using System.Collections.Generic;

namespace Parbat.Core.API.Controllers
{
    /// <summary>
    /// Class Module controller
    /// </summary>
    [Route(Global.API_CONTROLLER)]
    [ApiController]
    public class ClassModuleController : Controller
    {
        private ClassModuleService _service;

        /// <summary>
        /// Constructor 
        /// </summary>
        /// <param name="service">IRepositoryFactory</param>
        public ClassModuleController(ClassModuleService service)
        {
            _service = service;
        }

        /// <summary>
        /// Get a record
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("{id}", Name = "ClassModuleGetById")]
        public ActionResult<ClassModule> Get(long id)
        {
            try
            {
                ClassModule found = _service.FindByID(id);

                return Ok(found);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// List all ClassModule
        /// </summary>
        /// <returns></returns>
        [HttpGet(Name = "ClassModuleList")]
        public ActionResult<List<ClassModule>> List()
        {
            try
            {
                var classModule = _service.GetAll();

                return Ok(classModule);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// Update a ClassModule
        /// </summary>
        /// <param name="cm"></param>
        /// <returns></returns>
        [HttpPut(Name = "ClassModuleUpdate")]
        public ActionResult<ClassModule> Update([FromBody] ClassModule cm)
        {
            try
            {
                _service.Update(cm);

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
        /// <param name="cm"></param>
        /// <returns></returns>
        [HttpPost(Name = "ClassModuleCreate")]
        [ProducesResponseType(typeof(ClassModule), StatusCodes.Status201Created)]
        public ActionResult<ClassModule> Create([FromBody] ClassModule cm)
        {
            try
            {
                _service.Create(cm);

                return Created("Get", cm);
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
        [HttpDelete("{id}", Name = "ClassModuleDeleteById")]
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
    }
}
