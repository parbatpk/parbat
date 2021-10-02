using Microsoft.AspNetCore.Mvc;
using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using Parbat.Core.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Parbat.Core.API.Controllers
{
    /// <summary>
    /// Batch controller
    /// </summary>
    [Route(Global.API_CONTROLLER)]
    [ApiController]
    public class BatchController : Controller
    {
        private BatchService _service;

        /// <summary>
        /// Constructor 
        /// </summary>
        /// <param name="factory">IRepositoryFactory</param>
        public BatchController(IRepositoryFactory factory)
        {

            _service = new BatchService(factory);
        }

        /// <summary>
        /// Get a record
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("{id}")]
        public ActionResult<Batch> Get(long id)
        {
            try
            {
                Batch found = _service.FindByID(id);

                return Ok(found);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
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
                var batch = _service.GetAll();
                return Ok(batch);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// Update a course
        /// </summary>
        /// <param name="b"></param>
        /// <returns></returns>
        [HttpPut]
        public ActionResult Update([FromBody] Batch b)
        {
            try
            {
                _service.Update(b);
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
        /// <param name="b"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult<Batch> Create([FromBody] Batch b)
        {
            try
            {
                _service.Create(b);
                return Created("Get", b);
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
