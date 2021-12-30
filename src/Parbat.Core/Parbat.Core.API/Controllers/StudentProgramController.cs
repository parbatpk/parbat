using Microsoft.AspNetCore.Mvc;
using Parbat.Core.DataObjects;
using Parbat.Core.Services;

namespace Parbat.Core.API.Controllers
{
    /// <summary>
    /// Student Program controller
    /// </summary>
    [Route(Global.API_CONTROLLER)]
    [ApiController]
    public class StudentProgramController : Controller
    {
        private StudentProgramService _service;

        /// <summary>
        /// Constructor 
        /// </summary>
        /// <param name="service">IRepositoryFactory</param>
        public StudentProgramController(StudentProgramService service)
        {
            _service = service;
        }

        /// <summary>
        /// Get a record
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("{id}")]
        public ActionResult<StudentProgram> Get(long id)
        {
            try
            {
                StudentProgram found = _service.FindByID(id);

                return Ok(found);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// List all StudentProgram
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public ActionResult List()
        {
            try
            {
                var studentPrograms = _service.GetAll();
                return Ok(studentPrograms);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// Update a StudentProgram
        /// </summary>
        /// <param name="sp"></param>
        /// <returns></returns>
        [HttpPut]
        public ActionResult Update([FromBody] StudentProgram sp)
        {
            try
            {
                _service.Update(sp);
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
        /// <param name="sp"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult<StudentProgram> Create([FromBody] StudentProgram sp)
        {
            try
            {
                _service.Create(sp);
                return Created("Get", sp);
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
