using Microsoft.AspNetCore.Mvc;
using Parbat.Core.DataObjects;
using Parbat.Core.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Parbat.Core.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ClassController : ControllerBase
    {
        private ClassService _service;

        /// <summary>
        /// constructor
        /// </summary>
        /// <param name="service">IRepositoryFactory</param>
        public ClassController(ClassService service)
        {
            _service = service;
        }

        /// <summary>
        /// get a class 
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        /// 
        // GET: api/<ClassController>
        [HttpGet("{id}")]
        public ActionResult<Class> Get(long id)
        {
            try
            {
                Class found = _service.FindById(id);
                return Ok(found);
            }
            catch(ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// list all classes
        /// </summary>
        /// <returns></returns>
        // GET api/<ClassController>/5
        [HttpGet]
        public ActionResult List()
        {
            try
            {
                var classes = _service.GetAll();
                return Ok(classes);
            }
            catch(ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// update a class
        /// </summary>
        /// <param name="c"></param>
        /// <returns></returns>
        // POST api/<ClassController>
        [HttpPut]
        public ActionResult Update([FromBody] Class c)
        {
            try
            {
                _service.Update(c);
                return NoContent();
            }
            catch(ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// create class
        /// </summary>
        /// <param name="c"></param>
        /// <returns></returns>
        // PUT api/<ClassController>/5
        [HttpPost]
        public ActionResult<Class> Create([FromBody] Class c)
        {
            try
            {
                _service.Create(c);
                return Created("Get", c);
            }
            catch(ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// delete class
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        // DELETE api/<ClassController>/5
        [HttpDelete("{id}")]
        public ActionResult Delete(long id)
        {
            try
            {
                _service.Delete(id);
                return NoContent();
            }
            catch(ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }
    }
}
