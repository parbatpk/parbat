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
            return PartialView(ViewHelper.CREATE_PARTIAL);
        }

        // POST: ComponentType/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create(ComponentType componentType)
        {
            if(ModelState.IsValid)
            {
                try
                {
                    ParbatClient client = new(ViewHelper.BASE_URL, new HttpClient());
                    componentType.ComponentTypeID = -1;
                    var data = await client.ComponentTypeCreateAsync(componentType);

                    return NoContent();
                }
                catch(Exception ex)
                {
                    return BadRequest(ex);
                }
            }
            else
            {
                return PartialView(ViewHelper.CREATE_PARTIAL);
            }     
        }

        // GET: ComponentType/Edit/5
        public async Task<ActionResult> Edit(int id)
        {
            try
            {
                ParbatClient client = new(ViewHelper.BASE_URL ,new HttpClient());
                var data = await client.ComponentTypeGetByIdAsync(id);
                
                if(data is not null)
                {
                    return PartialView(ViewHelper.EDIT_PARTIAL, data);
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

        // POST: ComponentType/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit(ComponentType componentType)
        {
            if(ModelState.IsValid)
            {
                try
                {
                    ParbatClient client = new(ViewHelper.BASE_URL, new HttpClient());
                    await client.ComponentTypeUpdateAsync(componentType);

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

        // GET: ComponentType/Delete/5
        public async Task<ActionResult> Delete(int id)
        {
            try
            {
                ParbatClient client = new(ViewHelper.BASE_URL, new HttpClient());
                var data = await client.ComponentTypeGetByIdAsync(id);

                if(data is not null)
                {
                    return PartialView(ViewHelper.DELETE_PARTIAL, data);
                }
                else
                {
                    return BadRequest("Not Found");
                }
            }
            catch(Exception ex)
            {
                return BadRequest(ex);
            }
        }

        // POST: ComponentType/Delete/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Delete(ComponentType componentType)
        {
            try
            {
                ParbatClient client = new(ViewHelper.BASE_URL, new HttpClient());
                await client.ComponentTypeDeleteByIdAsync((long)componentType.ComponentTypeID);

                return NoContent();
            }
            catch
            {
                return BadRequest("Sorry, Cannot Delete");
            }
        }
    }
}
