using Microsoft.AspNetCore.Mvc;
using Parbat.Core.DataObjects;
using Parbat.Core.Services;

namespace Parbat.Core.API.Controllers
{
    /// <summary>
    /// Register Status controller
    /// </summary>
    [Route(Global.API_CONTROLLER)]
    [ApiController]
    public class RegisterStatusController : Controller
    {
        private RegisterStatusService _service;

        /// <summary>
        /// Constructor 
        /// </summary>
        /// <param name="service">IRepositoryFactory</param>
        public RegisterStatusController(RegisterStatusService service)
        {
            _service = service;
        }

        /// <summary>
        /// Get a record
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("{id}")]
        public ActionResult<RegisterStatus> Get(long id)
        {
            try
            {
                RegisterStatus found = _service.FindByID(id);

                return Ok(found);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// List all RegisterStatus
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public ActionResult List()
        {
            try
            {
                var registerStatuses = _service.GetAll();
                return Ok(registerStatuses);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// Update a Term
        /// </summary>
        /// <param name="r"></param>
        /// <returns></returns>
        [HttpPut]
        public ActionResult Update([FromBody] RegisterStatus r)
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
        [HttpPost]
        public ActionResult<RegisterStatus> Create([FromBody] RegisterStatus r)
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
