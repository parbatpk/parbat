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
    /// Service for Curriculum Type 
    /// </summary>
    [Route(GlobalConstants.API_CONTROLLER)]
    [ApiController]
    public class CourseTypeController : ControllerBase
    {
        /// <summary>
        /// Get Curriculum Type of given id
        /// </summary>
        /// <param name="id"></param>
        /// <returns>Return json object of Curriculum Type</returns>
        [HttpGet("{id}")]
        public ActionResult<CourseType> Get(long id)
        {
            CourseType c = new CourseType
            {
                CourseTypeID = id
            };
            c = c.Find(Database.Instance) as CourseType;

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
            CourseType c = new CourseType();
            return Ok(c.GetAll(Database.Instance));

        }

        /// <summary>
        /// Update Curriculum Type
        /// </summary>
        /// <param name="ctype"></param>
        /// <returns>Returns only http codeds</returns>
        [HttpPut]
        public ActionResult Update([FromBody]CourseType ctype)
        {
            if (ctype.Find(Database.Instance) == null)
                return BadRequest();

            if (ctype.CourseTypeID != null && ctype.CourseTypeID > 0)
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
        /// Create a new curriculum type
        /// </summary>
        /// <param name="ctype"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult<CourseType> Create([FromBody]CourseType ctype)
        {
            ctype.Save(Database.Instance);
            return Created("Get", ctype);
        }

        /// <summary>
        /// Delete instance
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpDelete("{id}")]
        public ActionResult Delete(long id)
        {
            CourseType c = new CourseType
            {
                CourseTypeID = id
            };
            c = (CourseType)c.Find(Database.Instance);

            if (c == null)
                return BadRequest();

            c.Delete(Database.Instance);
            return NoContent();

        }
    }
}