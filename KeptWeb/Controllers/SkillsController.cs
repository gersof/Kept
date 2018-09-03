using KeptWeb.Models;
using System.Web.Mvc;
using KeptWeb.Repositories;

namespace KeptWeb.Controllers
{
	public class SkillsController : Controller
    {
		private readonly KEPT_DBEntities _context;
		private readonly SkillsRepository _repository;

		public SkillsController()
		{
			_context = new KEPT_DBEntities();
			_repository = new SkillsRepository(_context);
		}
		// GET: Skills from SQL Server
		[Authorize]
        public ActionResult Index()
        {
            return View();
        }
		[HttpGet]
		[Authorize]
		public ActionResult GetSkills()
		{
			var skills = _repository.GetSkills();
			return View(skills);
		}
    }
}