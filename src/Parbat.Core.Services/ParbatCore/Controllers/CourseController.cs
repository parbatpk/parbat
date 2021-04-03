using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

using System.Data.Common;
using Parbat.Data;
using ParbatCore.Models;

namespace ParbatCore.Controllers
{
    /// <summary>
    /// Service for Course 
    /// </summary>
    [Route(GlobalConstants.API_CONTROLLER)]
    [ApiController]
    public class CourseController : ControllerBase
    {
        /// <summary>
        /// Get Course of given id
        /// </summary>
        /// <param name="id"></param>
        /// <returns>Return json object of Course</returns>
        [HttpGet("{id}")]
        public ActionResult<Course> Get(long id)
        {
            Course c = new Course
            {
                CourseID = id
            };
            c = c.Find(Database.Instance) as Course;

            if (c != null)
                return Ok(c);
            else
                return NotFound();
        }

        /// <summary>
        /// Return all records
        /// </summary>
        /// <param name="id"></param>
        /// <returns>Return a DataTable</returns>
        [HttpGet]
        public ActionResult List()
        {
            Course c = new Course();
            return Ok(c.GetAll(Database.Instance));

        }

        /// <summary>
        /// Update Course
        /// </summary>
        /// <param name="ctype"></param>
        /// <returns>Returns only http codeds</returns>
        [HttpPut]
        public ActionResult Update([FromBody]Course ctype)
        {
            if (ctype.CourseID != null && ctype.CourseID > 0)
            {
                try
                {
                   ctype.Update(Database.Instance);
                   return NoContent();
                }
                catch
                {

                    return BadRequest();
                }
            }
            else
                return BadRequest();

        }

        /// <summary>
        /// Create a new Course
        /// </summary>
        /// <param name="ctype"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult<Course> Create([FromBody]Course ctype)
        {
            if (ctype.TheoryCredit > 0 && ctype.LabCredit > 0)
            {
                try
                {
                    ctype.Save(Database.Instance);
                    return Created("Get",ctype);
                }
                catch
                {

                    return BadRequest();
                }
            }
            else
                return BadRequest();
        }

        /// <summary>
        /// Delete instance
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpDelete("{id}")]
        public ActionResult Delete(long id)
        {
            Course c = new Course
            {
                CourseID = id
            };
            try
            {
                c.Delete(Database.Instance);
                return NoContent();
            }
            catch (Exception e)
            {
                return BadRequest(e.Message);
            }
        }
    }
}