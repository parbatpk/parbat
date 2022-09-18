using Microsoft.AspNetCore.Mvc;
using Parbat.Core.API.Client;
using Parbat.Core.Web.Models;

namespace Parbat.Core.Web.Controllers
{
    public class ComponentTypeController : Controller
    {
        // GET: ComponentType
        public async Task<ActionResult> Index()
        {
            try
            {
                ParbatClient client = new(ViewHelper.BASE_URL, new HttpClient());
                var data = await client.ComponentTypeListAsync();

                return View(data);
            }
            catch(Exception ex)
            {
                return BadRequest(ex);
            }
        }

        // GET: ComponentType/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: ComponentType/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: ComponentType/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }

        // GET: ComponentType/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: ComponentType/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(int id, IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }

        // GET: ComponentType/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: ComponentType/Delete/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Delete(int id, IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }
    }
}
