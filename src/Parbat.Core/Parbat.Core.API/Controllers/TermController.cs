using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Parbat.Core.DataObjects;
using Parbat.Core.Services;
using System.Collections.Generic;

namespace Parbat.Core.API.Controllers
{

    /// <summary>
    /// Term controller
    /// </summary>
    [Route(Global.API_CONTROLLER)]
    [ApiController]
    public class TermController : Controller
    {
        private TermService _service;

        /// <summary>
        /// Constructor 
        /// </summary>
        /// <param name="service">IRepositoryFactory</param>
        public TermController(TermService service)
        {
            _service = service;
        }

        /// <summary>
        /// Get a record
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("{id}", Name = "TermGetById")]
        public ActionResult<Term> Get(long id)
        {
            try
            {
                Term found = _service.FindByID(id);

                return Ok(found);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// List all Term
        /// </summary>
        /// <returns></returns>
        [HttpGet(Name = "TermList")]
        public ActionResult<List<Term>> List()
        {
            try
            {
                var terms = _service.GetAll();

                return Ok(terms);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// Update a Term
        /// </summary>
        /// <param name="t"></param>
        /// <returns></returns>
        [HttpPut(Name = "TermUpdate")]
        public ActionResult<Term> Update([FromBody] Term t)
        {
            try
            {
                _service.Update(t);

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
        /// <param name="t"></param>
        /// <returns></returns>
        [HttpPost(Name = "TermCreate")]
        [ProducesResponseType(typeof(Term), StatusCodes.Status201Created)]
        public ActionResult<Term> Create([FromBody] Term t)
        {
            try
            {
                _service.Create(t);

                return Created("Get", t);
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
        [HttpDelete("{id}", Name = "TermDeleteById")]
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
