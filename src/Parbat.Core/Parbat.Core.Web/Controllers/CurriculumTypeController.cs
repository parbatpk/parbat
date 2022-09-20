using Microsoft.AspNetCore.Mvc;
using Parbat.Core.API.Client;
using Parbat.Core.Web.Models;

namespace Parbat.Core.Web.Controllers
{
    /// <summary>
    ///     CurriculumTypeController
    /// </summary>
    public class CurriculumTypeController : Controller
    {
        /// <summary>
        ///     ParbatClient instance
        /// </summary>
        private ParbatClient _client;

        /// <summary>
        ///     Constructor
        /// </summary>
        public CurriculumTypeController()
        {
            _client = new(ViewHelper.BASE_URL, new HttpClient());
        }

        /// <summary>
        ///     GET: CurriculumTypeController
        /// </summary>
        /// <returns></returns>
        public async Task<ActionResult> Index()
        {
            try
            {
                var data = await _client.CurriculumTypeListAsync();

                if(data is not null)
                {
                    return View(data);
                }
                else
                {
                    return NoContent();
                }
            }
            catch(Exception ex)
            {
                return BadRequest(ex);
            }
        }

        /// <summary>
        ///     GET: CurriculumTypeController/Details/5
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public ActionResult Details(int id)
        {
            return View();
        }

        /// <summary>
        ///      GET: CurriculumTypeController/Create
        /// </summary>
        /// <returns></returns>
        public ActionResult Create()
        {
            return PartialView(ViewHelper.CREATE_PARTIAL);
        }

        /// <summary>
        ///     POST: CurriculumTypeController/Create
        /// </summary>
        /// <param name="collection"></param>
        /// <returns></returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create(CurriculumType c)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    c.CurriculumTypeID = -1;
                    await _client.CurriculumTypeCreateAsync(c);

                    return NoContent();
                }
                catch (Exception ex)
                {
                    return BadRequest(ex);
                }
            }
            else
            {
                return PartialView(ViewHelper.CREATE_PARTIAL);
            }
        }

        /// <summary>
        ///     GET: CurriculumTypeController/Edit/5
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public async Task<ActionResult> Edit(int id)
        {
            try
            {
                var data = await _client.CurriculumTypeGetByIdAsync(id);

                if(data is not null)
                {
                    return PartialView(ViewHelper.EDIT_PARTIAL, data);
                }
                else
                {
                    return BadRequest("Data not found!");
                }
            }
            catch(Exception ex)
            {
                return BadRequest(ex);
            }
        }

        /// <summary>
        ///     POST: CurriculumTypeController/Edit/5
        /// </summary>
        /// <param name="c"></param>
        /// <returns></returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit(CurriculumType c)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    var data = await _client.CurriculumTypeUpdateAsync(c);

                    return NoContent();
                }
                catch(Exception ex)
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
        ///     GET: CurriculumTypeController/Delete/5
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public async Task<ActionResult> Delete(long id)
        {
            try
            {
                var data = await _client.CurriculumTypeGetByIdAsync(id);

                if(data is not null)
                {
                    return PartialView(ViewHelper.DELETE_PARTIAL, data);
                }
                else
                {
                    return BadRequest();
                }
            }
            catch(Exception ex)
            {
                return BadRequest(ex);
            }
        }

        /// <summary>
        ///     POST: CurriculumTypeController/Delete/5
        /// </summary>
        /// <param name="c"></param>
        /// <returns></returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Delete(CurriculumType c)
        {
            try
            {
                await _client.CurriculumTypeDeleteByIdAsync(c.CurriculumTypeID.Value);

                return NoContent();
            }
            catch
            {
                return BadRequest();
            }
        }
    }
}
