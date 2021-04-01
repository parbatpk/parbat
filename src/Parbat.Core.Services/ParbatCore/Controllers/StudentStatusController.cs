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
    /// This is the Control of STD Status Class 
    /// </summary>
    [Route(GlobalConstants.API_CONTROLLER)]
    [ApiController]
    public class StudentStatusController : ControllerBase
    {
        /// <summary>
        /// Return the the StudentStatus from the StudentStatus Class
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public ActionResult List()
        {
            StudentStatus ss = new StudentStatus();
            return Ok(ss.GetAll(Database.Instance));

        }

        /// <summary>
        /// Find the Current StudentStatus from the Studentstatus Class
        /// </summary>
        /// <param name="StudentStatusID"></param>
        /// <returns></returns>
        [HttpGet]
        public ActionResult<StudentStatus> Find(long StudentStatusID)
        {
            StudentStatus ss = new StudentStatus
            {
                StudentStatusID = StudentStatusID
            };
            ss = ss.Find(Database.Instance) as StudentStatus;
            if (ss != null)
                return ss;
            return NotFound();    
        }

        /// <summary>
        /// Delete the StudentSatus from the StudentSatus Class
        /// </summary>
        /// <param name="StudentSatusID"></param>
        /// <returns></returns>
        [HttpDelete]
        public ActionResult Delete(long StudentSatusID)
        {
            StudentStatus ss = new StudentStatus
            {
                StudentStatusID = StudentSatusID
            };
            ss = ss.Find(Database.Instance) as StudentStatus;
            if (ss == null)
                return BadRequest();
            ss.Delete(Database.Instance);
            return NotFound();
        }

        /// <summary>
        /// Save the StudentSatus in the Student Status Class
        /// </summary>
        /// <param name="studentStatus"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult Save([FromBody] StudentStatus studentStatus)
        {
            studentStatus.Save(Database.Instance);
            return Created("Get", studentStatus);
        }

        /// <summary>
        /// Update the studentstatus in the studentstatus class
        /// </summary>
        /// <param name="studentStatus"></param>
        /// <returns></returns>
        [HttpPut]
        public ActionResult Update([FromBody] StudentStatus studentStatus)
        {
            if (studentStatus.Find(Database.Instance) == null)
                return BadRequest();
            if (studentStatus.StudentStatusID > 0)
            {
                try
                {
                    studentStatus.Update(Database.Instance);
                    return NotFound();
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex);
                    return BadRequest();
                }
            }
            else
                return BadRequest();

        }
    }
}