using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Parbat.Core.DataObjects;
using Parbat.Core.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Parbat.Core.API.Controllers
{
    /// <summary>
    /// ModuleAssessmentMark controller
    /// </summary>
    [Route(Global.API_CONTROLLER)]
    [ApiController]
    public class ModuleAssessmentMarkController : Controller
    {
        private ModuleAssessmentMarkService _service;

        /// <summary>
        /// Constructor 
        /// </summary>
        /// <param name="service">IRepositoryFactory</param>
        public ModuleAssessmentMarkController(ModuleAssessmentMarkService service)
        {
            _service = service;
        }

        /// <summary>
        /// Get a record
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("{id}", Name = "ModuleAssessmentMarkGetById")]
        public ActionResult<ModuleAssessmentMark> Get(long id)
        {
            try
            {
                ModuleAssessmentMark found = _service.FindByID(id);

                return Ok(found);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// List all ModuleAssessmentMark
        /// </summary>
        /// <returns></returns>
        [HttpGet(Name = "ModuleAssessmentMarkList")]
        public ActionResult<List<ModuleAssessmentMark>> List()
        {
            try
            {
                var moduleAssessmentMarks = _service.GetAll();

                return Ok(moduleAssessmentMarks);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// Update a moduleAssessmentMarks
        /// </summary>
        /// <param name="moduleAssessmentMark"></param>
        /// <returns></returns>
        [HttpPut(Name = "ModuleAssessmentMarkUpdate")]
        public ActionResult<ModuleAssessmentMark> Update([FromBody] ModuleAssessmentMark moduleAssessmentMark)
        {
            try
            {
                _service.Update(moduleAssessmentMark);

                return NoContent();
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// Create 
        /// </summary>
        /// <param name="moduleAssessmentMark"></param>
        /// <returns></returns>
        [HttpPost(Name = "ModuleAssessmentMarkCreate")]
        [ProducesResponseType(typeof(ModuleAssessmentMark), StatusCodes.Status201Created)]
        public ActionResult<ModuleAssessmentMark> Create([FromBody] ModuleAssessmentMark moduleAssessmentMark)
        {
            try
            {
                _service.Create(moduleAssessmentMark);

                return Created("Get", moduleAssessmentMark);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }

        }

        /// <summary>
        /// Delete
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpDelete("{id}", Name = "ModuleAssessmentMarkDeleteById")]
        [ProducesResponseType(StatusCodes.Status204NoContent)]
        public ActionResult<long> Delete(long id)
        {
            try
            {
                _service.Delete(id);

                return NoContent();
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }
    }
}
