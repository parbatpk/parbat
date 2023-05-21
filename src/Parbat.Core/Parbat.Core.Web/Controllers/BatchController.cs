using Microsoft.AspNetCore.Mvc;
using Parbat.Core.API.Client;

namespace Parbat.Core.Web.Controllers
{
    public class BatchController : Controller
    {
        // GET: BatchController
        public async Task<ActionResult> Index()
        {
            //Batch b = new Batch();
            ParbatClient c = new("",new HttpClient());

            return View("View");
        }

        // GET: BatchController/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: BatchController/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: BatchController/Create
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

        // GET: BatchController/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: BatchController/Edit/5
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

        // GET: BatchController/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: BatchController/Delete/5
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
