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
    /// Handle http req of faculty Business class
    /// </summary>
    [Route(GlobalConstants.API_CONTROLLER)]
    [ApiController]
    public class FacultyController : ControllerBase
    {

        /// <summary>
        /// Find the faculty memeber
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("{id}")]
        public ActionResult<Faculty> Get(long id)
        {
            Faculty FF = new Faculty
            {
                FacultyID = id
            };
            FF = FF.Find(Database.Instance) as Faculty;

            if (FF != null)
                return Ok(FF);
            else
                return NotFound();
        }


        /// <summary>
        /// Return all the faculty members
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public ActionResult List()
        {
            Faculty FF = new Faculty();
            return Ok(FF.GetAll(Database.Instance));

        }

        /// <summary>
        /// Update the info of faculty member
        /// </summary>
        /// <param name="faculty"></param>
     
        /// <returns></returns>
        [HttpPut]
        public ActionResult Update([FromBody]Faculty faculty)
        {
            if (faculty.FacultyID > 0)
            {
                try
                {
                    faculty.Update(Database.Instance);
                    return NoContent();
                }
                catch (Exception e)
                {

                    return BadRequest(e.Message);
                }
            }
            else
                return BadRequest();

        }


        /// <summary>
        /// Add new faculty member
        /// </summary>
        /// <param name="faculty"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult<Faculty> Create([FromBody]Faculty faculty)
        {
            faculty.Save(Database.Instance);
            return Created("Get", faculty);
        }



        /// <summary>
        /// Delete the faculty member
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpDelete("{id}")]
        public ActionResult Delete(long id)
        {
            Faculty FF = new Faculty
            {
                FacultyID = id
            };

            try
            {
                FF.Delete(Database.Instance);
                return NoContent();
            }
            catch (Exception e)
            {
                return BadRequest(e.Message);
            }

        }


    }
}