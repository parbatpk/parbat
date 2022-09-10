﻿using Microsoft.AspNetCore.Mvc;
using Parbat.Core.Services;
using Parbat.Core.DataObjects;
using System.Collections.Generic;

namespace Parbat.Core.API.Controllers
{
    /// <summary>
    /// AssessmentCategory controller
    /// </summary>
    [Route(Global.API_CONTROLLER)]
    [ApiController]
    public class AssessmentCategoryController : Controller
    {
        private AssessmentCategoryService _service;

        /// <summary>
        /// Constructor 
        /// </summary>
        /// <param name="service">IRepositoryFactory</param>
        public AssessmentCategoryController(AssessmentCategoryService service)
        {
            _service = service;
        }

        /// <summary>
        /// Get a record
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("{id}", Name = "AssessmentGetById")]
        public ActionResult<AssessmentCategory> Get(long id)
        {
            try
            {
                AssessmentCategory found = _service.FindByID(id);

                return Ok(found);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// List all AssessmentCategory
        /// </summary>
        /// <returns></returns>
        [HttpGet(Name = "AssessmentCategoryList")]
        public ActionResult<List<AssessmentCategory>> List()
        {
            try
            {
                var assessmentCategories = _service.GetAll();

                return Ok(assessmentCategories);
            }
            catch (ServiceException se)
            {
                return BadRequest(se.Message);
            }
        }

        /// <summary>
        /// Update a AssessmentCategory
        /// </summary>
        /// <param name="assessmentCategory"></param>
        /// <returns></returns>
        [HttpPut(Name = "AssessmentCategoryUpdate")]
        public ActionResult<AssessmentCategory> Update([FromBody] AssessmentCategory assessmentCategory)
        {
            try
            {
                _service.Update(assessmentCategory);

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
        /// <param name="assessmentCategory"></param>
        /// <returns></returns>
        [HttpPost("AssessmentCategoryCreate")]
        public ActionResult<AssessmentCategory> Create([FromBody] AssessmentCategory assessmentCategory)
        {
            try
            {
                _service.Create(assessmentCategory);

                return Created("Get", assessmentCategory);
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
        [HttpDelete("{id}", Name = "AssessmentCategoryDeleteById")]
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
