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
    /// Handling all http req of term
    /// </summary>
    [Route(GlobalConstants.API_CONTROLLER)]
    [ApiController]
    public class TermController : ControllerBase
    {

        /// <summary>
        /// Find the terms
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("{id}")]
        public ActionResult<Term> Get(long id)
        {
            Term tt = new Term
            {
                TermID = id
            };

            tt = tt.Find(Database.Instance) as Term;

            if (tt != null)
                return Ok(tt);
            else
                return NotFound();
        }

        /// <summary>
        /// Get all the terms
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public ActionResult List()
        {
            Term tt = new Term();
            return Ok(tt.GetAll(Database.Instance));

        }

        /// <summary>
        /// Update the term
        /// </summary>
        /// <param name="term"></param>
        /// <returns></returns>
        [HttpPut]
        public ActionResult Update([FromBody]Term term)
        {
            if (term.TermID > 0)
            {
                try
                {
                    term.Update(Database.Instance);
                    return NoContent();
                }
                catch (Exception e)
                {

                    return BadRequest(e.Message);
                }
            }
            else
                return BadRequest();

        }


        /// <summary>
        /// Create a new term
        /// </summary>
        /// <param name="term"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult<Term> Create([FromBody]Term term)
        {
            term.Save(Database.Instance);
            return Created("Get", term);
        }

        /// <summary>
        /// Delelet the term 
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpDelete("{id}")]
        public ActionResult Delete(long id)
        {
            Term c = new Term
            {
                TermID = id
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