using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using NuGet.Protocol;
using Parbat.Core.API.Client;
using System.Collections;
using System.Diagnostics;

namespace Parbat.Core.Web.Controllers
{
    public class OrgUnitTypeController : Controller
    {
        // GET: HomeController1
        public async Task<ActionResult> Index()
        {/*
            var c = new ParbatClient();*/
            /*            var all = await c.OrgUnitTypeListAsync();*/
            ParbatClient c = new("", new HttpClient());
            /*ParbatClient cc= new HttpClient();*/
            /*            var myList =(IEnumerable<OrgUnitType>)c.OrgUnitTypeListAsync();*/
            /*            var o = new ICollection<OrgUnitType>(myList);*/
            var l = await c.OrgUnitTypeListAsync();
            return View(l);
        }

        // GET: HomeController1/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: HomeController1/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: HomeController1/Create
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

        // GET: HomeController1/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: HomeController1/Edit/5
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

        // GET: HomeController1/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: HomeController1/Delete/5
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
