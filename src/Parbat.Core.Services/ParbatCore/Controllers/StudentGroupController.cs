using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Parbat.Data;
using ParbatCore.Models;

namespace ParbatCore.Controllers
{
    /// <summary>
    /// This controller is handling all the API of Student Group
    /// </summary>
    [Route(GlobalConstants.API_CONTROLLER)]
    [ApiController]
    public class StudentGroupController : ControllerBase
    {
        /// <summary>
        /// Return the list of the StudentGroups
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public ActionResult List()
        {
            StudentGroup SG = new StudentGroup();
            return Ok(SG.GetAll(Database.Instance));
        }

        /// <summary>
        /// Return the Studen Group Through the Student ID
        /// </summary>
        /// <param name="StudentGroupID"></param>
        /// <returns></returns>
        [HttpGet("{id}")]
        public ActionResult<Student> Find(long StudentGroupID)
        {
            StudentGroup SG = new StudentGroup
            {
                StudenGroupID = StudentGroupID
            };
            SG.Find(Database.Instance);
            if (SG != null)
                return Ok(SG);
            return NotFound();
        }

       /// <summary>
       /// Delete the StudentGroup
       /// </summary>
       /// <param name="StudentGroupID"></param>
       /// <returns></returns>
        [HttpDelete("{id}")]
        public ActionResult Delete(long StudentGroupID)
        {
            StudentGroup SG = new StudentGroup
            {
                StudenGroupID = StudentGroupID
            };

            try
            {
                SG.Delete(Database.Instance);
                return NoContent();
            }
            catch (Exception ex)
            {
                return BadRequest("Result Not Found!" + ex.Message);
            }

        }

        /// <summary>
        /// Save the StudentGroup
        /// </summary>
        /// <param name="SG"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult<StudentGroup> Save([FromBody] StudentGroup SG)
        {
            SG.Save(Database.Instance);
            return Created("Get", SG.StudenGroupID);
        }

    
        /// <summary>
        /// update the StudentGroup
        /// </summary>
        /// <param name="SG"></param>
        /// <returns></returns>
        [HttpPut]
        public ActionResult<StudentGroup> Update([FromBody] StudentGroup SG)
        {
            if (SG.StudenGroupID > 0)
            {
                try
                {
                    SG.Update(Database.Instance);
                    return NoContent();
                }
                catch (Exception ex)
                {
                    throw new BOException("Result Not Found!" + ex.Message);
                }
            }
            else
            {
                return NotFound("Result Not Found!");
            }

        }
    }
}