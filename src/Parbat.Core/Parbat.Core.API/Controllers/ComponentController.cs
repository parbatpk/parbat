using Microsoft.AspNetCore.Mvc;
using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using Parbat.Core.Services;

namespace Parbat.Core.API.Controllers
{
    /// <summary>
    /// 
    /// </summary>
    [Route(Global.API_CONTROLLER)]
    [ApiController]
    public class ComponentController : Controller
    {
        private ComponentService _service;

        /// <summary>
        /// Constructor 
        /// </summary>
        /// <param name="service">IRepositoryFactory</param>
        public ComponentController(ComponentService service)
        {

            _service = service;
        }

        /// <summary>
        /// Get a record
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("{id}")]
        public ActionResult<Component> Get(long id)
        {
            try
            {
                Component found = _service.FindByID(id);

                return Ok(found);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// List all component
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public ActionResult List()
        {
            try
            {
                var courses = _service.GetAll();
                return Ok(courses);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// Update a component
        /// </summary>
        /// <param name="c"></param>
        /// <returns></returns>
        [HttpPut]
        public ActionResult Update([FromBody] Component c)
        {
            try
            {
                _service.Update(c);
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
        /// <param name="c"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult<Component> Create([FromBody] Component c)
        {
            try
            {
                _service.Create(c);
                return Created("Get", c);
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
