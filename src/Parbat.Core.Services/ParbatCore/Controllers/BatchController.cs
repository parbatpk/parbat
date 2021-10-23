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
    /// This is the controller class of Batch Business Model
    /// </summary>
    [Route(GlobalConstants.API_CONTROLLER)]
    [ApiController]
    public class BatchController : ControllerBase
    {
        /// <summary>
        /// Return the list of the Batch
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public ActionResult List()
        {
            Batch bb = new Batch();
            return Ok(bb.GetAll(Database.Instance));
        }

        /// <summary>
        /// Return the Requried Batch
        /// </summary>
        /// <param name="BatchID"></param>
        /// <returns></returns>
        [HttpGet("{id}")]
        public ActionResult<Batch> Find(long BatchID)
        {
            Batch bb = new Batch
            {
                BatchID = BatchID
            };
            bb.Find(Database.Instance);
            if (bb != null)
                return Ok(bb);
            return NotFound();
        }

        /// <summary>
        /// Delete the Batch 
        /// </summary>
        /// <param name="BatchID"></param>
        /// <returns></returns>
        [HttpDelete("{id}")]
        public ActionResult Delete(long BatchID)
        {
            Batch bb = new Batch
            {
                BatchID = BatchID
            };
            try
            {
                bb.Delete(Database.Instance);
                return NoContent();
            }
            catch(Exception ex)
            {
                return BadRequest("Result Not Found!" + ex.Message);
            }

        }

        /// <summary>
        /// Save the New Batch In the batch Business Model OR Update it
        /// </summary>
        /// <param name="bb"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult<Component> Save([FromBody] Batch bb)
        {
            bb.Save(Database.Instance);
            return Created("Get", bb.BatchID);
        }

        /// <summary>
        /// Update the Batch
        /// </summary>
        /// <param name="bb"></param>
        /// <returns></returns>
        [HttpPut]
        public ActionResult<Component> Update([FromBody] Batch bb)
        {
            if (bb.BatchID > 0)
            {
                try
                {
                    bb.Update(Database.Instance);
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