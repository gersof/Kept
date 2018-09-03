using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace KeptWeb.Controllers
{
    public class OpportunitiesImprovementController : Controller
    {
        // GET: OportunitiesImprovement
        [Authorize]
        public ActionResult Index()
        {
            return View();
        }
    }
}