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
    /// Service for Curriculum 
    /// </summary>
    [Route(GlobalConstants.API_CONTROLLER)]
    [ApiController]
    public class CurriculumController : ControllerBase
    {
        /// <summary>
        /// Get Curriculum of given id
        /// </summary>
        /// <param name="id"></param>
        /// <returns>Return json object of Curriculum</returns>
        [HttpGet("{id}")]
        public ActionResult<Curriculum> Get(long id)
        {
            Curriculum c = new Curriculum
            {
                CurriculumID = id
            };
            c = c.Find(Database.Instance) as Curriculum;

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
            Curriculum c = new Curriculum();
            return Ok(c.GetAll(Database.Instance));

        }
        /// <summary>
        /// Return all records
        /// </summary>
        /// <param name="id"></param>
        /// <returns>Return a DataTable</returns>
        [HttpGet("OwnerUnit/{id}")]
        public ActionResult GetOwnerUnit(long id)
        {
            Curriculum c = new Curriculum
            {
                OwnerUnitID = id
            };
            return Ok(c.GetOwnerUnit(Database.Instance));

        }
        /// <summary>
        /// Return all records
        /// </summary>
        /// <param name="id"></param>
        /// <returns>Return a DataTable</returns>
        [HttpGet("CurriculumType/{id}")]
        public ActionResult GetCurriculumType(long id)
        {
            Curriculum c = new Curriculum
            {
                CurriculumTypeID = id
            };
            return Ok(c.GetCurriculumType(Database.Instance));

        }
        /// <summary>
        /// Update Curriculum
        /// </summary>
        /// <param name="ctype"></param>
        /// <returns>Returns only http codeds</returns>
        [HttpPut]
        public ActionResult Update([FromBody]Curriculum ctype)
        {
            if (ctype.CurriculumID != null && ctype.CurriculumID > 0 && ctype.TotalCourses > 0 && ctype.TotalCreditHrs > 0)
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
        /// Create a new Curriculum
        /// </summary>
        /// <param name="ctype"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult<Curriculum> Create([FromBody]Curriculum ctype)
        {
            if (ctype.TotalCourses > 0 && ctype.TotalCreditHrs > 0)
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
            else
                return BadRequest();
        }

        /// <summary>
        /// Delete instance
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpDelete("{id}")]
        public ActionResult Delete(long id)
        {
            Curriculum c = new Curriculum
            {
                CurriculumID = id
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