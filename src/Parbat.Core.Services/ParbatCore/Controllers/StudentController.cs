using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

using System.Data;

using ParbatCore.Models;
using Parbat.Data;

namespace ParbatCore.Controllers
{
    /// <summary>
    /// A student controller
    /// </summary>
    [Route(GlobalConstants.API_CONTROLLER)]
    [ApiController]
    public class StudentController : ControllerBase
    {
        /// <summary>
        /// A test function
        /// </summary>
        /// <param name="student"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult<Student> SaveStudent([FromBody] Student student)
        {
            try
            {
                int r = student.Save(Database.Instance);
                student.StudentId = r;
                if (student.StudentId > 0)
                    return Created("GetStudentById", student.StudentId);
                else
                    return BadRequest();
            }
            catch (Exception e)
            {

                return BadRequest(e.Message);
            }

        }

        /// <summary>
        /// get at student by Id
        /// </summary>
        /// <param name="studentId"></param>
        /// <returns></returns>
        [HttpGet("{studentId}")]
        public ActionResult<Student> GetStudentById(int studentId)
        {
            Student s = new Student(studentId);
            s = s.Find(Database.Instance) as Student;
            if (s != null)
                return Ok(s);

            return NotFound();
        }

        /// <summary>
        /// Update a student instance
        /// </summary>
        /// <param name="s"></param>
        /// <returns></returns>
        [HttpPut]
        public ActionResult<Student> UpdateStudent([FromBody] Student s)
        {
            try
            {
                s.Update(Database.Instance);
                return NoContent();
            }
            catch(Exception e)
            {
                return NotFound(e.Message);
            }
        }

        /// <summary>
        /// Delete a student by Id
        /// </summary>
        /// <param name="studentId"></param>
        /// <returns></returns>
        [HttpDelete("{studentId}")]
        public ActionResult<Student> DeleteStudentById(int studentId)
        {
            try
            {
                Student s = new Student(studentId);
                s.Delete(Database.Instance);
                return NoContent();
            }
            catch(Exception e)
            {
                return BadRequest(e.Message);
            }
        }
   

        /// <summary>
        /// Return all students
        /// </summary>
        /// <returns></returns>
        [HttpGet("all")]
        public ActionResult GetAllStudent()
        {
            try
            {
                Student s = new Student();
                DataSet ds = s.GetAll(Database.Instance);

                return Ok(ds.Tables[0]);

            }
            catch(Exception e)
            {
                return BadRequest(e.Message);
            }
        }
    }
}