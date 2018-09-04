using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using KeptWeb.Models;
using KeptWeb.Repositories;
using Microsoft.AspNet.Identity;

namespace KeptWeb.Controllers
{
    public class PerformanceprofileController : Controller
    {
        private readonly KEPT_DBEntities _context;
        private readonly EmployeeRepository _employee;

        public PerformanceprofileController()
        {
            _context = new KEPT_DBEntities();
            _employee = new EmployeeRepository(_context);
        }

        [Authorize]
        public ActionResult Index()
        {
            var employee = _employee.GetEmployee(User.Identity.GetUserId());
            var profile = _context.PerformanceProfile.ToList();
            var competencies = _context.CompetencyAndPerformance.Where(cp => cp.IsCompetency == true).ToList();
            var perrformance = _context.CompetencyAndPerformance.Where(cp => cp.IsCompetency == false).ToList();
            var viewmodel = new PerformanceProfileModel { Employee = employee, Profile = null, Competencies = null, Performance = null };
            return View(viewmodel);
        }
    }
}