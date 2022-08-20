using Microsoft.AspNetCore.Mvc;
using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using Parbat.Core.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using NSwag.Annotations;

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
        /// <param name="service">IRepositoryFactory</param>
        public BatchController(BatchService service)
        {
            _service = service;
        }

        /// <summary>
        /// Get a batch record
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("{id}", Name = "BatchFindById")]
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
        /// List all batch
        /// </summary>
        /// <returns></returns>
        [HttpGet(Name = "BatchGetAll")]
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
        /// Update a batch
        /// </summary>
        /// <param name="b"></param>
        /// <returns></returns>
        [HttpPut(Name = "BatchUpdate")]
        public ActionResult Update([FromBody] Batch b)
        {
            try
            {
                _service.Update(b);
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
        /// <param name="b"></param>
        /// <returns></returns>
        [HttpPost(Name = "BatchCreate")]
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
        [HttpDelete("{id}", Name = "BatchDelete")]
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
