using KeptWeb.Models;
using KeptWeb.Repositories;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;

namespace KeptWeb.Controllers
{
	public class OpportunitiesImprovementController : Controller
	{
		private readonly KEPT_DBEntities _context;
		private readonly OOIAndAIRepository _oportunitiesAndActionItems;
        private readonly EmployeeRepository _employee;
		public OpportunitiesImprovementController()
		{
			_context = new KEPT_DBEntities();
            _employee = new EmployeeRepository(_context);
            _oportunitiesAndActionItems = new OOIAndAIRepository(_context);
		}
		// GET: OportunitiesImprovement
		[Authorize]
		public ActionResult Index()
		{
			return View();
		}

		[HttpGet]
		public ActionResult GetOportunities()
		{
            var employee = _employee.GetEmployee(User.Identity.GetUserId());
			var oportunities = _oportunitiesAndActionItems.GetOOIbyEmployee(employee.DocumentId);
			return View(oportunities);
		}

        [HttpGet]
        public ActionResult GetActionItems()
        {
            var employee = _employee.GetEmployee(User.Identity.GetUserId());
            var actionItems = _oportunitiesAndActionItems.GetActionItemsbyEmployee(employee.DocumentId);
            return View(actionItems);
        }
    }
}