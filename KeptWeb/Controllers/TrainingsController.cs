using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace KeptWeb.Controllers
{
    public class TrainingsController : Controller
    {
        // GET: Trainnings
        public ActionResult Index()
        {
            return View();
        }
    }
}