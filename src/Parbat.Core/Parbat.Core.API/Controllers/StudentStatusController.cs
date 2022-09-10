using Microsoft.AspNetCore.Mvc;
using Parbat.Core.DataObjects;
using Parbat.Core.Services;
using System.Collections.Generic;

namespace Parbat.Core.API.Controllers
{
    /// <summary>
    /// student status controller
    /// </summary>
    [Route(Global.API_CONTROLLER)]
    [ApiController]
    public class StudentStatusController : Controller
    {
        private StudentStatusService _service;

        /// <summary>
        /// Constructor 
        /// </summary>
        /// <param name="service">IRepositoryFactory</param>
        public StudentStatusController(StudentStatusService service)
        {
            _service = service;
        }

        /// <summary>
        /// Get a record
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("{id}",Name ="StudentStatusGetById")]
        public ActionResult<StudentStatus> Get(long id)
        {
            try
            {
                StudentStatus found = _service.FindByID(id);

                return Ok(found);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// List all studentStatus
        /// </summary>
        /// <returns></returns>
        [HttpGet(Name = "StudentStatusList")]
        public ActionResult<List<StudentStatus>> List()
        {
            try
            {
                var studentStatuses = _service.GetAll();
                return Ok(studentStatuses);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// Update a studentStatus
        /// </summary>
        /// <param name="ss"></param>
        /// <returns></returns>
        [HttpPut(Name = "StudentStatusUpdate")]
        public ActionResult<StudentStatus> Update([FromBody] StudentStatus ss)
        {
            try
            {
                _service.Update(ss);
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
        /// <param name="ss"></param>
        /// <returns></returns>
        [HttpPost(Name = "StudentStatusCreate")]
        public ActionResult<StudentStatus> Create([FromBody] StudentStatus ss)
        {
            try
            {
                _service.Create(ss);
                return Created("Get", ss);
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
        [HttpDelete("{id}", Name = "StudentStatusDeleteById")]
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
