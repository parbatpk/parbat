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
    /// Service of OrgUnitType
    /// </summary>
    [Route(GlobalConstants.API_CONTROLLER)]
    [ApiController]
    public class OrgUnitTypeController : ControllerBase
    {
        /// <summary>
        /// Return All the OrgUnitType
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public ActionResult List()
        {
            OrgUnitType OUT = new OrgUnitType();
            return Ok(OUT.GetAll(Database.Instance));
        }

        /// <summary>
        /// Find the OrgUnitType if Exit else NotFound Error 
        /// </summary>
        /// <param name="ID"></param>
        /// <returns></returns>
        [HttpGet("{id}")]
        public ActionResult<OrgUnitType> Find(long ID)
        {
            OrgUnitType OUT = new OrgUnitType
            {
                OrgUnitTypeID = ID
            };
            OUT = OUT.Find(Database.Instance) as OrgUnitType;
            if (OUT != null)
                return OUT;
            else
                return NotFound();
        }

        /// <summary>
        /// Find the ID if EXITS than Delete it return Record doesnot exit
        /// </summary>
        /// <param name="ID"></param>
        /// <returns></returns>
        [HttpDelete("{id}")]
        public ActionResult<OrgUnitType> Delete(long ID)
        {
            OrgUnitType OUT = new OrgUnitType
            {
                OrgUnitTypeID = ID
            };
            OUT = OUT.Find(Database.Instance) as OrgUnitType;
            if (OUT == null)
                return BadRequest();
            OUT.Delete(Database.Instance);
            return NotFound();
        }

        /// <summary>
        /// Save the new OrgUnit Type if not exit otherwise update it
        /// </summary>
        /// <param name="orgType"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult<OrgUnitType> Save([FromBody]OrgUnitType orgType)
        {
            orgType.Save(Database.Instance);
            return Created("Get",orgType);
        }

        /// <summary>
        /// Update the Exist OrgUnitType otherwise return the bad request
        /// </summary>
        /// <param name="orgType"></param>
        /// <returns></returns>
        [HttpPut]
        public ActionResult<OrgUnitType> Update([FromBody]OrgUnitType orgType)
        {
            if (orgType.Find(Database.Instance) == null)
                return BadRequest();
            if (orgType.OrgUnitTypeID > 0)
            {
                try
                {
                    orgType.Update(Database.Instance);
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