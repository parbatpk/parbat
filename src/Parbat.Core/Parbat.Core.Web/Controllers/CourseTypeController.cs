using Microsoft.AspNetCore.Mvc;
using Parbat.Core.API.Client;
using Parbat.Core.Web.Models;

namespace Parbat.Core.Web.Controllers
{
    /// <summary>
    ///     CourseType Controller 
    /// </summary>
    public class CourseTypeController : Controller
    {
        /// <summary>
        ///     Parbat client instance 
        /// </summary>
        private ParbatClient client;
        
        /// <summary>
        ///     Constructor
        /// </summary>
        public CourseTypeController()
        {
            client = new(ViewHelper.BASE_URL, new HttpClient());
        }

        /// <summary>
        ///     GET: CourseTypeController 
        /// </summary>
        /// <returns></returns>
        public async Task<ActionResult> Index()
        {
            try
            {
                var data = await client.CourseTypeListAsync();

                if(data is not null)
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

            return View();
        }

        /// <summary>
        ///     GET: CourseTypeController/Details/5
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public ActionResult Details(int id)
        {
            return View();
        }

        /// <summary>
        ///     GET: CourseTypeController/Create
        /// </summary>
        /// <returns></returns>
        public ActionResult Create()
        {
            return PartialView(ViewHelper.CREATE_PARTIAL);
        }

        /// <summary>
        ///     POST: CourseTypeController/Create
        /// </summary>
        /// <param name="courseType"></param>
        /// <returns></returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create(CourseType courseType)
        {
            try
            {
                courseType.CourseTypeID = -1;
                await client.CourseTypeCreateAsync(courseType);

                return NoContent();
            }
            catch(Exception ex)
            {
                return BadRequest(ex);
            }
        }

        /// <summary>
        ///     GET: CourseTypeController/Edit/5
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public async Task<ActionResult> Edit(int id)
        {
            try
            {
                var data = await client.CourseTypeGetByIdAsync(id);

                if (data is not null)
                {
                    return PartialView(ViewHelper.EDIT_PARTIAL, data);
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
        ///     POST: CourseTypeController/Edit/5
        /// </summary>
        /// <param name="courseType"></param>
        /// <returns></returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit(CourseType courseType)
        {
            try
            {
                await client.CourseTypeUpdateAsync(courseType);

                return NoContent();
            }
            catch
            {
                return BadRequest();
            }
        }

        /// <summary>
        ///    GET: CourseTypeController/Delete/5
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public async Task<ActionResult> Delete(int id)
        {
            try
            {
                var data = await client.CourseTypeGetByIdAsync(id);
                
                if(data is not null)
                {
                    return PartialView(ViewHelper.DELETE_PARTIAL, data);
                }
                else
                {
                    return NotFound();
                }
            }
            catch(Exception ex)
            {
                return BadRequest(ex);
            }
        }

        /// <summary>
        ///     POST: CourseTypeController/Delete/5 
        /// </summary>
        /// <param name="courseType"></param>
        /// <returns></returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Delete(CourseType courseType)
        {
            try
            { 
                await client.CourseTypeDeleteByIdAsync(courseType.CourseTypeID.Value);

                return NoContent();
            }
            catch(Exception ex)
            {
                return BadRequest(ex);
            }
        }
    }
}
