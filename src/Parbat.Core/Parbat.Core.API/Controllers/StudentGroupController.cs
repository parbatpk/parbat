using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Parbat.Core.DataObjects;
using Parbat.Core.Services;
using System.Collections.Generic;

namespace Parbat.Core.API.Controllers
{
    /// <summary>
    /// Student Groups
    /// </summary>
    [Route(Global.API_CONTROLLER)]
    [ApiController]
    public class StudentGroupController : Controller
    {
        private StudentGroupService _service;

        /// <summary>
        /// Constructor 
        /// </summary>
        /// <param name="service">IRepositoryFactory</param>
        public StudentGroupController(StudentGroupService service)
        {
            _service = service;
        }

        /// <summary>
        /// Get a record
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("{id}",Name ="StudenGroupGetById")]
        public ActionResult<StudentGroup> Get(long id)
        {
            try
            {
                StudentGroup found = _service.FindByID(id);

                return Ok(found);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// List all studentGroup
        /// </summary>
        /// <returns></returns>
        [HttpGet(Name = "StudenGroupList")]
        public ActionResult<List<StudentGroup>> List()
        {
            try
            {
                var studentGroups = _service.GetAll();

                return Ok(studentGroups);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// Update a studentGroup
        /// </summary>
        /// <param name="s"></param>
        /// <returns></returns>
        [HttpPut(Name = "StudenGroupUpdate")]
        public ActionResult<StudentGroup> Update([FromBody] StudentGroup s)
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
        [HttpPost(Name = "StudenGroupCreate")]
        [ProducesResponseType(typeof(StudentGroup), StatusCodes.Status201Created)]
        public ActionResult<StudentGroup> Create([FromBody] StudentGroup s)
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
        [HttpDelete("{id}", Name = "StudenGroupDeleteById")]
        [ProducesResponseType(StatusCodes.Status204NoContent)]
        public ActionResult<long> Delete(long id)
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
