using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Configuration;

namespace LIFDB.Controllers
{
    public class ObjectsController : Controller
    {
        LIFDB.Models.LIF2Entities db = new Models.LIF2Entities();

        //Type override and hit tab
        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        // GET: Objects
        public ActionResult Index()
        {
            var model = db.objects_types.Where(x => x.ID != 0);
            return View(model);
        }
        
        public ActionResult Details(int id = 0)
        {
            if (id == 0)
            {
                return View();
            }
            var model = db.objects_types.Where(x => x.ID == id);
            return View(model);
        }
    }
}