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
            try
            {
                CurriculumType c = new CurriculumType
                {
                    CurriculumTypeID = id
                };
                c = c.Find(Database.Instance) as CurriculumType;
                return Ok(c);
            }
            catch(Exception e)
            {
                return NotFound(e.Message);
            }
        }

        /// <summary>
        /// Return all records
        /// </summary>
        /// <param name="izd"></param>
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
            try
            {
                ctype.Update(Database.Instance);
                return Ok();
            }
            catch (Exception e)
            {
                return BadRequest(e.Message);
            }
        }

        /// <summary>
        /// Create a new curriculum type
        /// </summary>
        /// <param name="ctype">Object that needs to be updated</param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult<CurriculumType> Create([FromBody]CurriculumType ctype)
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
        /// <param name="id">primary key</param>
        /// <returns></returns>
        [HttpDelete("{id}")]
        public ActionResult Delete(long id)
        {
            // create object with given ID
            CurriculumType c = new CurriculumType
            {
                CurriculumTypeID = id
            };

            try
            {
                // call delete 
                c.Delete(Database.Instance);
                return Ok();
            }
            catch(Exception e)
            {
                // if business logic fails or any other issue
                return BadRequest(e.Message);
            }

           

        }
    }
}