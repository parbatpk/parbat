using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using Parbat.Core.Services;
using System.Collections.Generic;

namespace Parbat.Core.API.Controllers
{
    /// <summary>
    /// orgunit controller
    /// </summary>
    [Route(Global.API_CONTROLLER)]
    [ApiController]
    public class OrgUnitController : Controller
    {
        private OrgUnitService _service;

        /// <summary>
        /// Constructor 
        /// </summary>
        /// <param name="service">IRepositoryFactory</param>
        public OrgUnitController(OrgUnitService service)
        {
            _service = service;
        }

        /// <summary>
        /// Get a record
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("{id}", Name = "OrgUnitGetById")]
        public ActionResult<OrgUnit> Get(long id)
        {
            try
            {
                OrgUnit found = _service.FindByID(id);

                return Ok(found);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// List all orgunit
        /// </summary>
        /// <returns></returns>
        [HttpGet(Name = "OrgUnitList")]
        public ActionResult<List<OrgUnit>> List()
        {
            try
            {
                var orgUnit = _service.GetAll();

                return Ok(orgUnit);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// List all orgunit
        /// </summary>
        /// <returns></returns>
        [HttpGet(Name = "OrgUnitListbyParentUnitId")]
        public ActionResult<List<OrgUnit>> ListbyParentUnitId(long id)
        {
            try
            {
                var orgUnit = _service.GetAllbyParentUnitId(id);

                return Ok(orgUnit);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// Update a orgunit
        /// </summary>
        /// <param name="o"></param>
        /// <returns></returns>
        [HttpPut(Name = "OrgUnitUpdate")]
        public ActionResult<OrgUnit> Update([FromBody] OrgUnit o)
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
        [HttpPost(Name = "OrgUnitCreate")]
        [ProducesResponseType(typeof(OrgUnit), StatusCodes.Status201Created)]
        public ActionResult<OrgUnit> Create([FromBody] OrgUnit o)
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
        [HttpDelete("{id}", Name = "OrgUnitDeleteById")]
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
