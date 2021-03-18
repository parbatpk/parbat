using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

using ParbatCore.Models;
using Parbat.Data;

namespace ParbatCore.Controllers
{
    /// <summary>
    /// A test controller
    /// </summary>
    [Route("api/[controller]")]
    [ApiController]
    public class TestController : ControllerBase
    {
        /// <summary>
        /// A test function
        /// </summary>
        /// <param name="values"></param>
        /// <returns></returns>
        [HttpGet]
        public ActionResult<TestModel> Get([FromQuery] Student values)
        {
            try
            {


                values.Save(Database.Instance);
                return Ok();
            }
            catch (Exception e)
            {

                return NotFound(values);
            }

        }
    }
}