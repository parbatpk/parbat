using Microsoft.AspNetCore.Mvc;
using Parbat.Core.DataObjects;
using Parbat.Core.Services;

namespace Parbat.Core.API.Controllers
{
    /// <summary>
    /// ModuleAssessment controller
    /// </summary>
    [Route(Global.API_CONTROLLER)]
    [ApiController]
    public class ModuleAssessmentController : Controller
    {
        private ModuleAssessmentService _service;

        /// <summary>
        /// Constructor 
        /// </summary>
        /// <param name="service">IRepositoryFactory</param>
        public ModuleAssessmentController(ModuleAssessmentService service)
        {
            _service = service;
        }

        /// <summary>
        /// Get a record
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("{id}")]
        public ActionResult<ModuleAssessment> Get(long id)
        {
            try
            {
                ModuleAssessment found = _service.FindByID(id);

                return Ok(found);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// List all ModuleAssessment
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public ActionResult List()
        {
            try
            {
                var moduleAssessments = _service.GetAll();
                return Ok(moduleAssessments);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// Update a ModuleAssessment
        /// </summary>
        /// <param name="moduleAssessment"></param>
        /// <returns></returns>
        [HttpPut]
        public ActionResult Update([FromBody] ModuleAssessment moduleAssessment)
        {
            try
            {
                _service.Update(moduleAssessment);
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
        /// <param name="moduleAssessment"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult<ModuleAssessment> Create([FromBody] ModuleAssessment moduleAssessment)
        {
            try
            {
                _service.Create(moduleAssessment);
                return Created("Get", moduleAssessment);
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
