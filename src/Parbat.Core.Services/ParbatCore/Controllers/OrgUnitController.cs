using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Parbat.Data;
using ParbatCore.Models;

namespace ParbatCore.Controllers
{
    [Route(GlobalConstants.API_CONTROLLER)]
    [ApiController]
    public class OrgUnitController : ControllerBase
    {
        [HttpGet]
        public ActionResult<DataSet> Get([FromQuery] OrgUnit org)
        {
            try
            {
                org.Find(Database.Instance);
                return Ok();
            }
            catch (Exception e)
            {

                return NotFound(org);
            }

        }
        [HttpPost]
        public ActionResult Post([FromBody] OrgUnit org)
        {
            try
            {
                var result = org.Save(Database.Instance);
                return Created("",org);
            }
            catch (Exception e)
            {

                return NotFound(org);
            }

        }
        [HttpPut]
        public ActionResult Put([FromBody] OrgUnit org)
        {
            try
            {
                org.Update(Database.Instance);
                return Ok();
            }
            catch (Exception e)
            {

                return NotFound(org);
            }

        }
        [HttpDelete]
        public ActionResult Delete([FromQuery] OrgUnit org)
        {
            try
            {
                org.Delete(Database.Instance);
                return Ok();
            }
            catch (Exception e)
            {

                return NotFound(org);
            }

        }
    }
}