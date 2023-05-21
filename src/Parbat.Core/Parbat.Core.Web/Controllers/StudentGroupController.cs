using Microsoft.AspNetCore.Mvc;
using Parbat.Core.API.Client;
using Parbat.Core.Web.Models;

namespace Parbat.Core.Web.Controllers
{
    public class StudentGroupController : Controller
    {
        #region Variable
        /// <summary>
        ///     Parbat client instance
        /// </summary>
        private ParbatClient _parbatClient;

        #endregion

        #region Ctor
        /// <summary>
        /// StudentGroup Constructor.
        /// </summary>
        public StudentGroupController()
        {
            _parbatClient = new(ViewHelper.BASE_URL, new HttpClient());
        }

        #endregion

        #region CurdOperation

        /// <summary>
        /// Get all student groups list.
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public async Task<IActionResult> Index()
        {
            try
            {
                var data = await _parbatClient.StudentGroupListAsync();

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
        /// Create partial view.
        /// </summary>
        /// <returns></returns>
        public IActionResult Create()
        {
            return PartialView(ViewHelper.CREATE_PARTIAL);
        }

        /// <summary>
        /// Creat a new student group record.
        /// </summary>
        /// <param name="studentGroup"></param>
        /// <returns></returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(StudentGroup studentGroup)
        {
            if(ModelState.IsValid)
            {
                var data = await _parbatClient.StudentGroupCreateAsync(studentGroup);

                return NoContent();
            }
            else
            {
                return PartialView(ViewHelper.CREATE_PARTIAL, studentGroup);
            }

        }

        /// <summary>
        /// Find a student group.
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet]
        public async Task<IActionResult> Edit(int id)
        {
            try
            {
                var data = await _parbatClient.StudentGroupGetByIdAsync(id);

                if (data != null)
                {
                    return PartialView(ViewHelper.EDIT_PARTIAL, data);
                }
                else
                {
                    return BadRequest();
                }
            }
            catch
            {
                return NoContent();
            }
        }

        /// <summary>
        /// Update student group.
        /// </summary>
        /// <param name="o"></param>
        /// <returns></returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(StudentGroup studentGroup)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    await _parbatClient.StudentGroupUpdateAsync(studentGroup);

                    return NoContent();
                }
                catch
                {
                    return NoContent();
                }
            }
            else
            {
                return PartialView(ViewHelper.EDIT_PARTIAL, studentGroup);
            }
        }

        /// <summary>
        /// Get the student group to delete record.
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet]
        public async Task<IActionResult> Delete(int id)
        {
            try
            {
                var data = await _parbatClient.StudentGroupGetByIdAsync(id);

                if (data != null)
                {
                    return PartialView(ViewHelper.DELETE_PARTIAL, data);
                }
                else
                {
                    return BadRequest();
                }
            }
            catch
            {
                return NoContent();
            }
        }

        /// <summary>
        /// Delete the student group record.
        /// </summary>
        /// <param name="studentGroup"></param>
        /// <returns></returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Delete(StudentGroup studentGroup)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    await _parbatClient.StudentGroupDeleteByIdAsync(studentGroup.StudentGroupID.Value);
                    
                    return NoContent();
                }
                catch
                {
                    return NoContent();
                }
            }
            else
            {
                return PartialView(ViewHelper.DELETE_PARTIAL, studentGroup);
            }
        }

        #endregion
    }
}
