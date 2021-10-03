using Microsoft.AspNetCore.Mvc;
using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using Parbat.Core.Services;

namespace Parbat.Core.API.Controllers
{
    /// <summary>
    /// Course Controller class
    /// </summary>
    [Route(Global.API_CONTROLLER)]
    [ApiController]
    public class CourseController : Controller
    {

        CourseService _service;

        /// <summary>
        /// Constructor
        /// </summary>
        /// <param name="service"></param>
        public CourseController(CourseService service)
        {

            _service = service;
        }

        /// <summary>
        /// Get a record
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("{id}")]
        public ActionResult<Course> Get(long id)
        {
            try
            {

                Course found = _service.FindByID(id);

                return Ok(found);
            }
            catch (ServiceException ex)
            {
                return BadRequest(ex.Message);
            }
        }

        /// <summary>
        /// List all courses
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public ActionResult List()
        {
            try
            {
                var courses = _service.GetAllCourses();
                return Ok(courses);
            }
            catch (ServiceException ex)
            {
                return BadRequest(ex.Message);
            }
        }

        /// <summary>
        /// Update a course
        /// </summary>
        /// <param name="c"></param>
        /// <returns></returns>
        [HttpPut]
        public ActionResult Update([FromBody] Course c)
        {
            try
            {
                _service.Update(c);
                return NoContent();
            }
            catch (ServiceException ex)
            {
                return BadRequest(ex.Message);
            }
        }

        /// <summary>
        /// Create 
        /// </summary>
        /// <param name="c"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult<Course> Create([FromBody] Course c)
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
