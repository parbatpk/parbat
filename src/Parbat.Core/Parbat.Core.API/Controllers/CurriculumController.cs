using Microsoft.AspNetCore.Mvc;
using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using Parbat.Core.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Parbat.Core.API.Controllers
{
    /// <summary>
    /// Curriculum controller
    /// </summary>
    [Route(Global.API_CONTROLLER)]
    [ApiController]
    public class CurriculumController : Controller
    {
        private CurriculumService _service;

        /// <summary>
        /// Constructor 
        /// </summary>
        /// <param name="service">IRepositoryFactory</param>
        public CurriculumController(CurriculumService service)
        {

            _service = service;
        }

        /// <summary>
        /// Get a record
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("{id}")]
        public ActionResult<Curriculum> Get(long id)
        {
            try
            {
                Curriculum found = _service.FindByID(id);

                return Ok(found);
            }
            catch (ServiceException ex)
            {
                return BadRequest(ex.Message);
            }
        }

        /// <summary>
        /// List all curriculum
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public ActionResult List()
        {
            try
            {
                var curriculum = _service.GetAll();
                return Ok(curriculum);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// Update a curriculum
        /// </summary>
        /// <param name="c"></param>
        /// <returns></returns>
        [HttpPut]
        public ActionResult Update([FromBody] Curriculum c)
        {
            try
            {
                _service.Update(c);
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
        /// <param name="c"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult<Curriculum> Create([FromBody] Curriculum c)
        {
            try
            {
                _service.Create(c);
                return Created("Get", c);
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
        [HttpDelete("{id}")]
        public ActionResult Delete(long id)
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

        
        /// <summary>
        /// return the curriculum owners
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("OwnerUnit/{id}")]
        public ActionResult GetOwnerUnit(long id)
        {
            return Ok(_service.GetOwnerUnit(id));
        }

        /// <summary>
        /// Return all curriculumTypes
        /// </summary>
        /// <param name="id"></param>
        /// <returns>Return a DataTable</returns>
        [HttpGet("CurriculumType/{id}")]
        public ActionResult GetCurriculumType(long id)
        {
            return Ok(_service.GetCurriculumType(id));
        }
    }
}
