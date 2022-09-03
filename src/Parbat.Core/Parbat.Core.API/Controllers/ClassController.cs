using Microsoft.AspNetCore.Mvc;
using Parbat.Core.DataObjects.Models;
using Parbat.Core.Services;

namespace Parbat.Core.API.Controllers
{
    /// <summary>
    /// Class Controller
    /// </summary>
    [Route(Global.API_CONTROLLER)]
    [ApiController]
    public class ClassController : Controller
    {
        private ClassService _service;

        /// <summary>
        /// constructor 
        /// </summary>
        /// <param name="service"></param>
        public ClassController(ClassService service)
        {
            _service = service;
        }

        /// <summary>
        /// Get Class by ID
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("{id}", Name = "ClassGetById")]
        public ActionResult<Class> Get(long id)
        {
            try
            {
                Class found = _service.FindByID(id);

                return Ok(found);
            }
            catch(ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// Get All Classes
        /// </summary>
        /// <returns></returns>
        [HttpGet(Name = "ClassList")]
        public ActionResult List()
        {
            try
            {
                var batch = _service.GetAll();

                return Ok(batch);
            }
            catch(ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// Update the specific object 
        /// </summary>
        /// <param name="c"></param>
        /// <returns></returns>
        [HttpPut(Name = "ClassUpdate")]
        public ActionResult Update([FromBody] Class c)
        {
            try
            {
                _service.Update(c);

                return NoContent();
            }
            catch(ServiceException se)
            {
                return BadRequest(se.Message);
            }   
        }

        /// <summary>
        /// Create the new Class
        /// </summary>
        /// <returns></returns>
        [HttpPost(Name = "ClassCreate")]
        public ActionResult<Class> Create([FromBody] Class c)
        {
            try
            {
                _service.Create(c);

                return Created("Get", c);
            }
            catch(ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// Delete the Class
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpDelete("{id}", Name = "ClassDeleteById")]
        public ActionResult Delete(long id)
        {
            try
            {
                _service.Delete(id);

                return NoContent();
            }
            catch(ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }
    }
}
