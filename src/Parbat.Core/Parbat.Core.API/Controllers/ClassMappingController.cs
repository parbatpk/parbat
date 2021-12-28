using Microsoft.AspNetCore.Mvc;
using Parbat.Core.DataObjects.Models;
using Parbat.Core.Services;

namespace Parbat.Core.API.Controllers
{
    /// <summary>
    /// Class Mapping controller
    /// </summary>
    [Route(Global.API_CONTROLLER)]
    [ApiController]
    public class ClassMappingController : Controller
    {
        private ClassMappingService _service;

        /// <summary>
        /// Constructor 
        /// </summary>
        /// <param name="service">IRepositoryFactory</param>
        public ClassMappingController(ClassMappingService service)
        {
            _service = service;
        }

        /// <summary>
        /// Get a record
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("{id}")]
        public ActionResult<ClassMapping> Get(long id)
        {
            try
            {
                ClassMapping found = _service.FindByID(id);

                return Ok(found);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// List all ClassMapping
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public ActionResult List()
        {
            try
            {
                var classMappings = _service.GetAll();
                return Ok(classMappings);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// Update a ClassMapping
        /// </summary>
        /// <param name="cm"></param>
        /// <returns></returns>
        [HttpPut]
        public ActionResult Update([FromBody] ClassMapping cm)
        {
            try
            {
                _service.Update(cm);
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
        /// <param name="cm"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult<ClassMapping> Create([FromBody] ClassMapping cm)
        {
            try
            {
                _service.Create(cm);
                return Created("Get", cm);
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
