﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace KeptWeb.Controllers
{
    public class SkillsController : Controller
    {
        // GET: Skills
        [Authorize]
        public ActionResult Index()
        {
            return View();
        }
    }
}