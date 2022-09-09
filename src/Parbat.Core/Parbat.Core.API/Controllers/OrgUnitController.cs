using Microsoft.AspNetCore.Mvc;
using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using Parbat.Core.Services;

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
        public ActionResult List()
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
        /// Update a orgunit
        /// </summary>
        /// <param name="o"></param>
        /// <returns></returns>
        [HttpPut(Name = "OrgUnitUpdate")]
        public ActionResult Update([FromBody] OrgUnit o)
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
    }
}
