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
    /// RegisterStatus controller for handling Http req
    /// </summary>
    [Route(GlobalConstants.API_CONTROLLER)]
    [ApiController]
    public class RegisterStatusController : ControllerBase
    {
        /// <summary>
        /// Get all the RegStatus
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public ActionResult List()
        {
            RegisterStatus RR = new RegisterStatus();
            return Ok(RR.GetAll(Database.Instance));
        }

        /// <summary>
        /// Find the RegStatus
        /// </summary>
        /// <param name="ID"></param>
        /// <returns></returns>
        [HttpGet("{id}")]
        public ActionResult<RegisterStatus> Find(long ID)
        {
            RegisterStatus RR = new RegisterStatus
            {
                RegisterStatusID = ID
            };
            RR = RR.Find(Database.Instance) as RegisterStatus;
            if (RR != null)
                return RR;
            else
                return NotFound();
        }


        /// <summary>
        /// Delete the RegStatus
        /// </summary>
        /// <param name="ID"></param>
        /// <returns></returns>
        [HttpDelete("{id}")]
        public ActionResult<RegisterStatus> Delete(long ID)
        {
            RegisterStatus RR = new RegisterStatus
            {
                RegisterStatusID = ID
            };

            RR = RR.Find(Database.Instance) as RegisterStatus;
            if (RR == null)
                return BadRequest();
            RR.Delete(Database.Instance);
            return NotFound();
        }


        /// <summary>
        /// Save the New RegsStatus
        /// </summary>
        /// <param name="regstatus"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult<RegisterStatus> Save([FromBody]RegisterStatus regstatus)
        {
            regstatus.Save(Database.Instance);
            return Created("Get", regstatus);
        }


        /// <summary>
        /// Update the exist regStatus
        /// </summary>
        /// <param name="regstatus"></param>
        /// <returns></returns>
        [HttpPut]
        public ActionResult<RegisterStatus> Update([FromBody]RegisterStatus regstatus)
        {
            if (regstatus.Find(Database.Instance) == null)
                return BadRequest();
            if (regstatus.RegisterStatusID > 0)
            {
                try
                {
                    regstatus.Update(Database.Instance);
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

    }
}