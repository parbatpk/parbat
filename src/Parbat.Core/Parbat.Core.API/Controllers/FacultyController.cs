using Microsoft.AspNetCore.Mvc;
using Parbat.Core.DataObjects;
using Parbat.Core.Services;

namespace Parbat.Core.API.Controllers
{
    /// <summary>
    /// Faculty controller
    /// </summary>
    [Route(Global.API_CONTROLLER)]
    [ApiController]
    public class FacultyController : Controller
    {
        private FacultyService _service;

        /// <summary>
        /// Constructor 
        /// </summary>
        /// <param name="service">IRepositoryFactory</param>
        public FacultyController(FacultyService service)
        {
            _service = service;
        }

        /// <summary>
        /// Get a record
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("{id}", Name = "FacultyGetById")]
        public ActionResult<Faculty> Get(long id)
        {
            try
            {
                Faculty found = _service.FindByID(id);

                return Ok(found);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// List all Faculty
        /// </summary>
        /// <returns></returns>
        [HttpGet(Name = "FacultyList")]
        public ActionResult List()
        {
            try
            {
                var faculties = _service.GetAll();
                return Ok(faculties);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// Update a Faculty
        /// </summary>
        /// <param name="f"></param>
        /// <returns></returns>
        [HttpPut(Name = "FacultyUpdate")]
        public ActionResult Update([FromBody] Faculty f)
        {
            try
            {
                _service.Update(f);
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
        /// <param name="f"></param>
        /// <returns></returns>
        [HttpPost(Name = "FacultyCreate")]
        public ActionResult<Faculty> Create([FromBody] Faculty f)
        {
            try
            {
                _service.Create(f);
                return Created("Get", f);
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
        [HttpDelete("{id}", Name = "FacultyDeleteById")]
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
