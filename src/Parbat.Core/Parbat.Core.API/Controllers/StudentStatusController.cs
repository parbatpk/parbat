using Microsoft.AspNetCore.Mvc;
using Parbat.Core.DataObjects;
using Parbat.Core.Services;

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
        [HttpGet("{id}")]
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
        [HttpGet]
        public ActionResult List()
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
        [HttpPut]
        public ActionResult Update([FromBody] StudentStatus ss)
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
        [HttpPost]
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
