using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

using ParbatCore.Models;
using Parbat.Data;
namespace ParbatCore.Controllers
{
    /// <summary>
    /// Controller of Student Business Class
    /// </summary>
    [Route(GlobalConstants.API_CONTROLLER)]
    [ApiController]
    public class StudentController : ControllerBase
    {
        /// <summary>
        /// Return All students from the Student Class
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public ActionResult List()
        {
            Student ss = new Student();
            return Ok(ss.GetAll(Database.Instance));
        }

        /// <summary>
        /// Find the STD from the Student Class
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("{id}")]
        public ActionResult<Student> Find(long id)
        {
            Student s = new Student()
            {
                StudentID = id
            };
            s = s.Find(Database.Instance) as Student;
            if (s != null)
                return s;

            return NotFound();
        }

        /// <summary>
        /// Delete the STD from the Student Class
        /// </summary>
        /// <param name="StudentID"></param>
        /// <returns></returns>
        [HttpDelete("{id}")]
        public ActionResult Delete(long id)
        {
            Student ss = new Student
            {
                StudentID = id
            };
            ss = ss.Find(Database.Instance) as Student;
            if (ss == null)
                return BadRequest();
            ss.Delete(Database.Instance);
            return NotFound();

        }

        /// <summary>
        /// Add the new STD in the Student Class
        /// </summary>
        /// <param name="std"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult Save([FromBody] Student std)
        {
            std.Save(Database.Instance);
            return Created("Get", std);
        }

        /// <summary>
        /// Update the STD in the Student Class
        /// </summary>
        /// <param name="std"></param>
        /// <returns></returns>
        [HttpPut]
        public ActionResult Update([FromBody] Student std)
        {
            if (std.Find(Database.Instance) == null)
                return BadRequest();
            if(std.StudentID > 0)
            {
                try
                {
                    std.Update(Database.Instance);
                    return NoContent();
                }
                catch(Exception ex)
                {
                    Console.WriteLine(ex);
                    return BadRequest();
                }
            }
            else
            {
                return BadRequest();
            }
        }




    }
}