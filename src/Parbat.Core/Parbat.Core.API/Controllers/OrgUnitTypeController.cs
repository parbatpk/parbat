using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using Parbat.Core.Services;
using System.Collections.Generic;

namespace Parbat.Core.API.Controllers
{
    /// <summary>
    /// orgunittype controller
    /// </summary>
    [Route(Global.API_CONTROLLER)]
    [ApiController]
    public class OrgUnitTypeController : Controller
    {
        private OrgUnitTypeService _service;

        /// <summary>
        /// Constructor 
        /// </summary>
        /// <param name="service">IRepositoryFactory</param>
        public OrgUnitTypeController(OrgUnitTypeService service)
        {
            _service = service;
        }

        /// <summary>
        /// Get a record
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("{id}", Name = "OrgUnitTypeGetById")]
        public ActionResult<OrgUnitType> Get(long id)
        {
            try
            {
                OrgUnitType found = _service.FindByID(id);

                return Ok(found);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// List all unittype
        /// </summary>
        /// <returns></returns>
        [HttpGet(Name = "OrgUnitTypeList")]
        public ActionResult<List<OrgUnitType>> List()
        {
            try
            {
                var batch = _service.GetAll();

                return Ok(batch);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// Update a unittype
        /// </summary>
        /// <param name="o"></param>
        /// <returns></returns>
        [HttpPut(Name = "OrgUnitTypeUpdate")]
        public ActionResult<OrgUnitType> Update([FromBody] OrgUnitType o)
        {
            try
            {
                _service.Update(o);

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
        /// <param name="o"></param>
        /// <returns></returns>
        [HttpPost(Name = "OrgUnitTypeCreate")]
        [ProducesResponseType(typeof(OrgUnitType), StatusCodes.Status201Created)]
        public ActionResult<OrgUnitType> Create([FromBody] OrgUnitType o)
        {
            try
            {
                _service.Create(o);

                return Created("Get", o);
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
        [HttpDelete("{id}", Name = "OrgUnitTypeDeleteById")]
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

