using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Parbat.Data;

//My Lib
using ParbatCore.Models;


namespace ParbatCore.Controllers
{

    /// <summary>
    /// Component Controller 
    /// </summary>
    [Route(GlobalConstants.API_CONTROLLER)]
    [ApiController]
    public class ComponentController : ControllerBase
    {
        /// <summary>
        /// Return all the components from the Component Business Model
        /// </summary>
        /// <returns></returns>
        [HttpGet]
       public ActionResult List()
       {
            Component cc = new Component();
            return Ok(cc.GetAll(Database.Instance));
       }

        /// <summary>
        /// Return the Component from the Component Business Model If available
        /// </summary>
        /// <param name="ComponentID"></param>
        /// <returns></returns>
        [HttpGet("{id}")]
        public ActionResult<Component> Find(long ComponentID)
        {
            Component cc = new Component
            {
                ComponentID = ComponentID
            };
            cc = cc.Find(Database.Instance) as Component;
            if (cc != null)
                return Ok(cc);
            return NotFound("Sorry, Result Not Found!");
        }

        /// <summary>
        /// Delete the Component From the Component Business Model
        /// </summary>
        /// <param name="ComponentID"></param>
        /// <returns></returns>
        [HttpDelete("{id}")]
        public ActionResult<Component> Delete(int ComponentID)
        {
            Component cc = new Component
            {
                ComponentID = ComponentID
            };
            try
            {
                cc.Delete(Database.Instance);
                return NotFound();
            }
            catch(Exception ex)
            {
                throw new BOException("Sorry, Result Not Found!" + ex.Message);
            }
        }

        /// <summary>
        /// Save the New Component In the Component Business Model OR Update it
        /// </summary>
        /// <param name="cc"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult<Component> Save([FromBody] Component cc)
        {
            cc.Save(Database.Instance);
            return Created("Get", cc.ComponentID);
        }

        /// <summary>
        /// Update the Component in the Component Business Model
        /// </summary>
        /// <param name="cc"></param>
        /// <returns></returns>
        [HttpPut]
        public ActionResult<Component> Update([FromBody] Component cc)
        {
            if(cc.ComponentID>0)
            {
                try
                {
                    cc.Update(Database.Instance);
                    return NoContent();
                }
                catch(Exception ex)
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