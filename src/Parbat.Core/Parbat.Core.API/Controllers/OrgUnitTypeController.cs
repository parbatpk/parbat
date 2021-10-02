using Microsoft.AspNetCore.Mvc;
using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using Parbat.Core.Services;

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
        /// <param name="factory">IRepositoryFactory</param>
        public OrgUnitTypeController(IRepositoryFactory factory)
        {
            _service = new OrgUnitTypeService(factory);
        }

        /// <summary>
        /// Get a record
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("{id}")]
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
        [HttpGet]
        public ActionResult List()
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
        [HttpPut]
        public ActionResult Update([FromBody] OrgUnitType o)
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
        [HttpPost]
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
    }
}
