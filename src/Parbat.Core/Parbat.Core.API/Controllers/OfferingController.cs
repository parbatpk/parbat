using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Parbat.Core.DataObjects;
using Parbat.Core.Services;
using System.Collections.Generic;

namespace Parbat.Core.API.Controllers
{
    /// <summary>
    /// Batch controller
    /// </summary>
    [Route(Global.API_CONTROLLER)]
    [ApiController]
    public class OfferingController : Controller
    {
        private OfferingService _service;

        /// <summary>
        /// Constructor 
        /// </summary>
        /// <param name="service">IRepositoryFactory</param>
        public OfferingController(OfferingService service)
        {
            _service = service;
        }

        /// <summary>
        /// Get a record
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("{id}", Name = "OfferingGetById")]
        public ActionResult<Offering> Get(long id)
        {
            try
            {
                Offering found = _service.FindByID(id);

                return Ok(found);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// List all Offering
        /// </summary>
        /// <returns></returns>
        [HttpGet(Name = "OfferingList")]
        public ActionResult<List<Offering>> List()
        {
            try
            {
                var offering = _service.GetAll();

                return Ok(offering);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// Update a offering
        /// </summary>
        /// <param name="o"></param>
        /// <returns></returns>
        [HttpPut(Name = "OfferingUpdate")]
        public ActionResult<Offering> Update([FromBody] Offering o)
        {
            try
            {
                _service.Update(o);

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
        /// <param name="o"></param>
        /// <returns></returns>
        [HttpPost(Name = "OfferingCreate")]
        [ProducesResponseType(typeof(Offering), StatusCodes.Status201Created)]
        public ActionResult<Offering> Create([FromBody] Offering o)
        {
            try
            {
                _service.Create(o);

                return Created("Get", o);
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
        [HttpDelete("{id}", Name = "OfferingDeleteById")]
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
