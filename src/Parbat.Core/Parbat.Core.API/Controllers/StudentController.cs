using Microsoft.AspNetCore.Mvc;
using Parbat.Core.DataObjects;
using Parbat.Core.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Parbat.Core.API.Controllers
{
    /// <summary>
    /// Student controller
    /// </summary>
    [Route(Global.API_CONTROLLER)]
    [ApiController]
    public class StudentController : Controller
    {
        private StudentService _service;

        /// <summary>
        /// Constructor 
        /// </summary>
        /// <param name="service">IRepositoryFactory</param>
        public StudentController(StudentService service)
        {
            _service = service;
        }

        /// <summary>
        /// Get a record
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("{id}",Name ="StudentGetById")]

        public ActionResult<Student> Get(long id)
        {
            try
            {
                Student found = _service.FindByID(id);

                return Ok(found);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// List all student
        /// </summary>
        /// <returns></returns>
        [HttpGet(Name = "StudentList")]
        public ActionResult<List<Student>> List()
        {
            try
            {
                var students = _service.GetAll();
                return Ok(students);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// Update a student
        /// </summary>
        /// <param name="s"></param>
        /// <returns></returns>
        [HttpPut(Name = "StudentUpdate")]
        public ActionResult<Student> Update([FromBody] Student s)
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
        [HttpPost(Name = "StudentCreate")]
        public ActionResult<Student> Create([FromBody] Student s)
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
        [HttpDelete("{id}", Name = "StudentDeleteById")]
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