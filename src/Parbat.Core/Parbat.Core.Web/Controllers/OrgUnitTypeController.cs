using Microsoft.AspNetCore.Mvc;
using Parbat.Core.API.Client;
using Parbat.Core.Web.Models;

namespace Parbat.Core.Web.Controllers
{
    public class OrgUnitTypeController : Controller
    {
        // GET: OrgUnitType
        public async Task<ActionResult> Index()
        {
            try
            {
                ParbatClient pC = new(ViewHelper.BASE_URL, new HttpClient());
                var listOfData = await pC.OrgUnitTypeListAsync();

                return View(listOfData);
            }
            catch(Exception e) 
            {
                return NoContent();
            }
        }

        // GET: OrgUnitType/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: OrgUnitType/Create

        public ActionResult Create()
        {
            return PartialView(ViewHelper.CREATE_PARTIAL);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create(OrgUnitType o)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    ParbatClient pC = new(ViewHelper.BASE_URL, new HttpClient());
                    o.OrgUnitTypeID = 0;
                    var cc = await pC.OrgUnitTypeCreateAsync(o);
                    return NoContent();
                }
                catch(Exception e) 
                {
                    return NoContent();
                }
            }
            else
            {
                return PartialView(ViewHelper.CREATE_PARTIAL, o);
            }
        }

        // GET: OrgUnitType/Edit/5
        public async Task<ActionResult> Edit(int id)
        {
            try
            {
                ParbatClient pC = new(ViewHelper.BASE_URL, new HttpClient());
                var found = await pC.OrgUnitTypeGetByIdAsync(id);

                if (found != null)
                    return PartialView(ViewHelper.EDIT_PARTIAL, found);
                else
                    return BadRequest();
            }
            catch(Exception e)
            {
                return NoContent();
            }

        }

        // POST: DepartmentController/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(OrgUnitType o)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    ParbatClient pC = new(ViewHelper.BASE_URL, new HttpClient());
                    pC.OrgUnitTypeUpdateAsync(o);
                    return NoContent();
                }
                catch(Exception e)
                {
                    return NoContent();
                }
            }
            else
            {
                return PartialView(ViewHelper.EDIT_PARTIAL, o);
            }
        }

        // GET: OrgUnitType/Delete/5 
        public async Task<ActionResult> Delete(int id)
        {
            try
            {
                ParbatClient pC = new(ViewHelper.BASE_URL, new HttpClient());
                var found = await pC.OrgUnitTypeGetByIdAsync(id);

                if (found != null)
                {
                    return PartialView(ViewHelper.DELETE_PARTIAL, found);
                }
                else
                {
                    return BadRequest();
                }
            }
            catch(Exception e)
            {
                return NoContent();
            }
        }

        // POST: DepartmentController/Delete/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Delete(OrgUnitType o)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    ParbatClient c = new(ViewHelper.BASE_URL, new HttpClient());
                    await c.OrgUnitTypeDeleteByIdAsync((long)o.OrgUnitTypeID);
                    return NoContent();
                }
                catch(ApiException e)
                {
                    return NoContent();
                }
            }
            else
            {
                return PartialView(ViewHelper.DELETE_PARTIAL, o);
            }

        }
    }
}
