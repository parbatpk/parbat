using Microsoft.AspNetCore.Mvc;
using Parbat.Core.DataObjects;
using Parbat.Core.Services;
using System.Collections.Generic;

namespace Parbat.Core.API.Controllers
{
    /// <summary>
    /// Registration controller
    /// </summary>
    [Route(Global.API_CONTROLLER)]
    [ApiController]
    public class RegistrationController : Controller
    {
        private RegistrationService _service;

        /// <summary>
        /// Constructor 
        /// </summary>
        /// <param name="service">IRepositoryFactory</param>
        public RegistrationController(RegistrationService service)
        {
            _service = service;
        }

        /// <summary>
        /// Get a record
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("{id}", Name = "RegistrationGetById")]
        public ActionResult<Registration> Get(long id)
        {
            try
            {
                Registration found = _service.FindByID(id);

                return Ok(found);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// List all registrations
        /// </summary>
        /// <returns></returns>
        [HttpGet(Name = "RegistrationList")]
        public ActionResult<List<Registration>> List()
        {
            try
            {
                var registration = _service.GetAll();
                return Ok(registration);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// Update a Registration
        /// </summary>
        /// <param name="r"></param>
        /// <returns></returns>
        [HttpPut(Name = "RegistrationUpdate")]
        public ActionResult<Registration> Update([FromBody] Registration r)
        {
            try
            {
                _service.Update(r);
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
        /// <param name="r"></param>
        /// <returns></returns>
        [HttpPost(Name = "RegistrationCreate")]
        public ActionResult<Registration> Create([FromBody] Registration r)
        {
            try
            {
                _service.Create(r);
                return Created("Get", r);
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
        [HttpDelete("{id}", Name = "RegistrationDeleteById")]
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
