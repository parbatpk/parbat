using Microsoft.AspNetCore.Mvc;
using Parbat.Core.API.Client;
using Parbat.Core.Web.Models;
using System.Dynamic;

namespace Parbat.Core.Web.Controllers
{
    public class CourseController : Controller
    {
        /// <summary>
        ///     Parbat client instance
        /// </summary>
        private ParbatClient _client;

        /// <summary>
        ///     course constructor
        /// </summary>
        public CourseController()
        {
            _client = new(ViewHelper.BASE_URL, new HttpClient());
        }

        /// <summary>
        ///     GET: CourseController
        /// </summary>
        /// <returns></returns>
        public async Task<ActionResult> Index()
        {
            try
            {
                var data = await _client.CourseListOrgUnitAsync();

                if (data is not null)
                {
                    return View(data);
                }
                else
                {
                    return NoContent();
                }
            }
            catch (Exception ex)
            {
                return BadRequest(ex);
            }
        }


        /// <summary>
        ///     GET: CourseController/List/5
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public async Task<ActionResult> List(long id) 
        {
            try
            {
                var data = await _client.CourseListCourseOrgUnitByIdAsync(id);

                if (data is not null)
                {
                    return View("List", data);
                }
                else
                {
                    return NoContent();
                }
            }
            catch (Exception ex)
            {
                return BadRequest(ex);
            }
        }

        /// <summary>
        ///     GET: CourseController/Details/5
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public async Task<ActionResult> Details(long id)
        {
            try
            {
                var data = await _client.CourseListCourseOrgUnitByIdAsync(id);
                
                if (data is not null)
                {
                    return View("Details");
                }
                else
                {
                    return NoContent();
                }
            }
            catch (Exception ex)
            {
                return BadRequest(ex);
            }
        }

        /// <summary>
        ///     GET: CourseController/Create
        /// </summary>
        /// <returns></returns>
        public async Task<ActionResult> Create()
        {
            dynamic dynamicModel = new ExpandoObject();

            var orgUnits = await _client.OrgUnitListAsync();
            var courseTypes = await _client.CourseTypeListAsync();

            dynamicModel.course = new Course();
            dynamicModel.orgUnits = orgUnits;
            dynamicModel.courseType = courseTypes;

            return PartialView(ViewHelper.CREATE_PARTIAL, dynamicModel);
        }

        /// <summary>
        ///     POST: CourseController/Create
        /// </summary>
        /// <param name="collection"></param>
        /// <returns></returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(dynamic dynamicModel)
        {
            try
            {
                //Course c = (Course)data.course;
                OrgUnit o = (OrgUnit)dynamicModel.orgUnits;
                CourseType ct = (CourseType)dynamicModel.courseType;

                //c.CurriculumTypeID = -1;
                //await _client.CurriculumTypeCreateAsync(c);

                return NoContent();
            }
            catch (Exception ex)
            {
                return BadRequest(ex);
            }
        }

        /// <summary>
        ///     GET: CourseController/Edit/5
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public async Task<ActionResult> Edit(int id)
        {
            try
            {
                var data = await _client.CourseGetByIdAsync(id);

                if (data is not null)
                {
                    return PartialView(ViewHelper.EDIT_PARTIAL, data);
                }
                else
                {
                    return BadRequest();
                }
            }
            catch (Exception ex)
            {
                return BadRequest(ex);
            }
        }

        /// <summary>
        ///     POST: CourseController/Edit/5
        /// </summary>
        /// <param name="id"></param>
        /// <param name="collection"></param>
        /// <returns></returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit(Course course)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    await _client.CourseUpdateAsync(course);

                    return NoContent();
                }
                catch (Exception ex)
                {
                    return BadRequest(ex);
                }
            }
            else
            {
                return PartialView(ViewHelper.EDIT_PARTIAL);
            }
        }

        /// <summary>
        ///     GET: CourseController/Delete/5
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public async Task<ActionResult> Delete(int id)
        {
            try
            {
                var data = await _client.CourseGetByIdAsync(id);

                if (data is not null)
                {
                    return PartialView(ViewHelper.DELETE_PARTIAL, data);
                }
                else
                {
                    return NoContent();
                }
            }
            catch (Exception ex)
            {
                return BadRequest(ex);
            }
        }

        /// <summary>
        ///     POST: CourseController/Delete/5
        /// </summary>
        /// <param name="id"></param>
        /// <param name="collection"></param>
        /// <returns></returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Delete(Course course)
        {
            try
            {
                await _client.CourseDeleteByIdAsync(course.CourseID.Value);

                return NoContent();
            }
            catch(Exception ex)
            {
                return BadRequest("Sorry, Cannot Delete\n"+ex);
            }
        }
    }
}
