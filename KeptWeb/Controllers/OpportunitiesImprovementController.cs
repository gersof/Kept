using KeptWeb.Models;
using KeptWeb.Repositories;
using System.Web.Mvc;

namespace KeptWeb.Controllers
{
	public class OpportunitiesImprovementController : Controller
	{
		private readonly KEPT_DBEntities _context;
		private readonly OportunitiesRepository _oportunities;
		public OpportunitiesImprovementController()
		{
			_context = new KEPT_DBEntities();
			_oportunities = new OportunitiesRepository(_context);
		}
		// GET: OportunitiesImprovement
		[Authorize]
		public ActionResult Index()
		{
			return View();
		}

		public ActionResult GetOportunities()
		{
			var oportunities = _oportunities.GetOportunities();
			return View(oportunities);
		}
	}
}