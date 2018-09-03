using KeptWeb.Models;
using KeptWeb.Repositories;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;

namespace KeptWeb.Controllers
{
	public class AssessmentTestsController : Controller
	{
		private readonly KEPT_DBEntities _context;
		private readonly AssessmentsQuestionsRepository _assessment;
		public AssessmentTestsController()
		{
			_context = new KEPT_DBEntities();
			_assessment = new AssessmentsQuestionsRepository(_context);
		}

		// GET: AssessmentTests
		[HttpGet]
		[Authorize]
		public ActionResult Index()
		{
			return View();
		}

		[HttpGet]
		public ActionResult GetAssessment()
		{
			var userID = User.Identity.GetUserId();
			var AssessmentsQuestions = _assessment.GetAssessments();
			return View(AssessmentsQuestions);
		}


	}

}