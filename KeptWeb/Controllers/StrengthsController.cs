using KeptWeb.Models;
using KeptWeb.Repositories;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;

namespace KeptWeb.Controllers
{
    public class StrengthsController : Controller
    {
        private readonly KEPT_DBEntities _context;
        private readonly StrengthsRepository _strengths;
        private readonly EmployeeRepository _employee;

        public StrengthsController()
        {
            _context = new KEPT_DBEntities();
            _employee = new EmployeeRepository(_context);
            _strengths = new StrengthsRepository(_context);
        }

        [Authorize]
        public ActionResult Index()
        {
            var employee = _employee.GetEmployee(User.Identity.GetUserId());
            var strengths = _strengths.GetStrenghtsbyEmployee(employee.DocumentId);
            var strengthsByEmployee = new StrengthsByEmployee { Strengths = strengths };
            return View(strengthsByEmployee);
        }
    }
}