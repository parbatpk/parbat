using Microsoft.AspNetCore.Mvc;
using Parbat.Core.DataObjects;
using Parbat.Core.Services;

namespace Parbat.Core.API.Controllers
{
    /// <summary>
    /// Semester controller
    /// </summary>
    [Route(Global.API_CONTROLLER)]
    [ApiController]
    public class SemesterController : Controller
    {
        private SemesterService _service;

        /// <summary>
        /// Constructor 
        /// </summary>
        /// <param name="service">IRepositoryFactory</param>
        public SemesterController(SemesterService service)
        {
            _service = service;
        }

        /// <summary>
        /// Get a record
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("{id}")]
        public ActionResult<Semester> Get(long id)
        {
            try
            {
                Semester found = _service.FindByID(id);

                return Ok(found);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// List all Semester
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public ActionResult List()
        {
            try
            {
                var semesters = _service.GetAll();
                return Ok(semesters);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// Update a Semester
        /// </summary>
        /// <param name="s"></param>
        /// <returns></returns>
        [HttpPut]
        public ActionResult Update([FromBody] Semester s)
        {
            try
            {
                _service.Update(s);
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
        /// <param name="s"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult<Semester> Create([FromBody] Semester s)
        {
            try
            {
                _service.Create(s);
                return Created("Get", s);
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
