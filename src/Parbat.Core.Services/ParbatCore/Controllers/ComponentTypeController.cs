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
    /// Service for  Component Type 
    /// </summary>
    [Route(GlobalConstants.API_CONTROLLER)]
    [ApiController]
    public class ComponentTypeController : ControllerBase
    {
        /// <summary>
        /// Get  Component Type of given id
        /// </summary>
        /// <param name="id"></param>
        /// <returns>Return json object of  Component Type</returns>
        [HttpGet("{id}")]
        public ActionResult<ComponentType> Get(long id)
        {
            ComponentType c = new ComponentType
            {
                ComponentTypeID = id
            };
            c = c.Find(Database.Instance) as ComponentType;

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
            ComponentType c = new ComponentType();
            return Ok(c.GetAll(Database.Instance));

        }

        /// <summary>
        /// Update  Component Type
        /// </summary>
        /// <param name="ctype"></param>
        /// <returns>Returns only http codeds</returns>
        [HttpPut]
        public ActionResult Update([FromBody]ComponentType ctype)
        {
            if (ctype.ComponentTypeID != null && ctype.ComponentTypeID > 0)
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
        /// Create a new  Component Type
        /// </summary>
        /// <param name="ctype"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult<ComponentType> Create([FromBody]ComponentType ctype)
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
            ComponentType c = new ComponentType
            {
                ComponentTypeID = id
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