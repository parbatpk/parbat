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
    /// Service for OrgUnit Type 
    /// </summary>
    [Route(GlobalConstants.API_CONTROLLER)]
    [ApiController]
    public class OrgUnitController : ControllerBase
    {
        /// <summary>
        /// Get OrgUnit Type of given id
        /// </summary>
        /// <param name="id"></param>
        /// <returns>Return json object of OrgUnit Type</returns>
        [HttpGet("{id}")]
        public ActionResult<OrgUnit> Get(long id)
        {
            OrgUnit c = new OrgUnit
            {
                OrgUnitID = id
            };
            c = c.Find(Database.Instance) as OrgUnit;

            if (c != null)
                return Ok(c);
            else
                return NotFound();
        }
        /// <summary>
        /// Get All OrgUnit record against ParentID
        /// </summary>
        /// <param name="id"></param>
        /// <returns>Return json object of OrgUnit Type</returns>
        [HttpGet("Parent/{id}")]
        public ActionResult<OrgUnit> GetParent(long id)
        {
            OrgUnit c = new OrgUnit
            {
                ParentUnitID = id
            };
            
            if (c.FindParent(Database.Instance) != null)
                return Ok(c.FindParent(Database.Instance));
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
            OrgUnit c = new OrgUnit();
            if(c.GetAll(Database.Instance) != null)
                return Ok(c.GetAll(Database.Instance));
            return NotFound();

        }

        /// <summary>
        /// Update OrgUnit Type
        /// </summary>
        /// <param name="ctype"></param>
        /// <returns>Returns only http codeds</returns>
        [HttpPut]
        public ActionResult Update([FromBody]OrgUnit ctype)
        {
            if (ctype.Find(Database.Instance) == null)
                return BadRequest();

            if (ctype.OrgUnitID != null && ctype.OrgUnitID > 0)
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
        /// Create a new OrgUnit type
        /// </summary>
        /// <param name="ctype"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult<OrgUnit> Create([FromBody]OrgUnit ctype)
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
            OrgUnit c = new OrgUnit
            {
                OrgUnitID = id
            };
            c = (OrgUnit)c.Find(Database.Instance);

            if (c == null)
                return BadRequest();

            c.Delete(Database.Instance);
            return NoContent();

        }
    }
}