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
    public class CurriculumTypeController : ControllerBase
    {
        /// <summary>
        /// Get Curriculum Type of given id
        /// </summary>
        /// <param name="id"></param>
        /// <returns>Return json object of Curriculum Type</returns>
        [HttpGet("{id}")]
        public ActionResult<CurriculumType> Get(long id)
        {
            CurriculumType c = new CurriculumType();
            c.CurriculumTypeID = id;
            c = c.Find(Database.Instance) as CurriculumType;

            if (c.CurriculumTypeID > 0)
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
            CurriculumType c = new CurriculumType();
            return Ok(c.GetAll(Database.Instance));

        }

        /// <summary>
        /// Update Curriculum Type
        /// </summary>
        /// <param name="ctype"></param>
        /// <returns>Returns only http codeds</returns>
        [HttpPut]
        public ActionResult Update([FromBody]CurriculumType ctype)
        {
            if (ctype.CurriculumTypeID != null && ctype.CurriculumTypeID > 0)
            {
                ctype.Update(Database.Instance);
                return NoContent();
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
        public ActionResult<CurriculumType> Create([FromBody]CurriculumType ctype)
        {
            ctype.Save(Database.Instance);
            return Created("Get", ctype);
        }
    }
}