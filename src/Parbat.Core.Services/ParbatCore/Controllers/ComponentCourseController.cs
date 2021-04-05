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
    /// Service for ComponentCourse 
    /// </summary>
    [Route(GlobalConstants.API_CONTROLLER)]
    [ApiController]
    public class ComponentCourseController : ControllerBase
    {
        /// <summary>
        /// Get ComponentCourse of given id
        /// </summary>
        /// <param name="id"></param>
        /// <returns>Return json object of ComponentCourse</returns>
        [HttpGet("{id}")]
        public ActionResult<ComponentCourse> Get(long id)
        {
            ComponentCourse c = new ComponentCourse
            {
                ComponentCourseID = id
            };
            c = c.Find(Database.Instance) as ComponentCourse;

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
            ComponentCourse c = new ComponentCourse();
            return Ok(c.GetAll(Database.Instance));

        }

        /// <summary>
        /// Update ComponentCourse
        /// </summary>
        /// <param name="ctype"></param>
        /// <returns>Returns only http codeds</returns>
        [HttpPut]
        public ActionResult Update([FromBody]ComponentCourse ctype)
        {
            if (ctype.ComponentCourseID != null && ctype.ComponentCourseID > 0)
            {
                try
                {
                    ctype.Update(Database.Instance);
                    return NoContent();
                }
                catch(Exception e)
                {

                    return BadRequest(e.Message);
                }
            }
            else
                return BadRequest();

        }

        /// <summary>
        /// Create a new ComponentCourse
        /// </summary>
        /// <param name="ctype"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult<ComponentCourse> Create([FromBody]ComponentCourse ctype)
        {
                try
                {
                    ctype.Save(Database.Instance);
                    return Created("Get", ctype);
                }
                catch(Exception e)
                {

                    return BadRequest(e.Message);
                }
        }

        /// <summary>
        /// Delete instance
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpDelete("{id}")]
        public ActionResult Delete(long id)
        {
            ComponentCourse c = new ComponentCourse
            {
                ComponentCourseID = id
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