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
    /// THis is an student object
    /// </summary>
    [Route(GlobalConstants.API_CONTROLLER)]
    [ApiController]

    public class StudentController : ControllerBase
    {
        /// <summary>
        /// This is a function, which is used to insert a new student
        /// </summary>
        [HttpPost]
        public ActionResult insertStudent(string stdName)
        {
            Student ss = new Student();
            ss.stdName = stdName;
            int genID = ss.Save(Database.Instance);
            ss.stdID = genID;
            return Ok(ss);
        }

      

    }
}