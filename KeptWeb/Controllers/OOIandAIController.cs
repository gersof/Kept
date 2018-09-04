using KeptWeb.Models;
using KeptWeb.Repositories;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;

namespace KeptWeb.Controllers
{
    public class OOIandAIController : Controller
    {
        private readonly KEPT_DBEntities _context;
        private readonly OOIAndAIRepository _oportunitiesAndActionItems;
        private readonly EmployeeRepository _employee;
        public OOIandAIController()
        {
            _context = new KEPT_DBEntities();
            _employee = new EmployeeRepository(_context);
            _oportunitiesAndActionItems = new OOIAndAIRepository(_context);
        }

        [Authorize]
        public ActionResult Index()
        {
            var employee = _employee.GetEmployee(User.Identity.GetUserId());
            var oportunities = _oportunitiesAndActionItems.GetOOIbyEmployee(employee.DocumentId);
            var actionItems = _oportunitiesAndActionItems.GetActionItemsbyEmployee(employee.DocumentId);
            var viewmodel = new OOIandAI { Oportunities = oportunities, ActionItems = actionItems };
            return View(viewmodel);
        }
    }
}