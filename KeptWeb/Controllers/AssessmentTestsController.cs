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
		private readonly EmployeeRepository _employee;

		public AssessmentTestsController()
		{
			_context = new KEPT_DBEntities();
			_assessment = new AssessmentsQuestionsRepository(_context);
			_employee = new EmployeeRepository(_context);

		}

		// GET: AssessmentTests
		[HttpGet]
		[Authorize]
		public ActionResult Index()
		{
			var AssessmentsQuestions = _assessment.GetAssessments();
			return View(AssessmentsQuestions);
		}

		[HttpGet]
		public ActionResult GetAssessment()
		{
			var AssessmentsQuestions = _assessment.GetAssessments();
			return View(AssessmentsQuestions);
		}

		[HttpPost]
		public ActionResult CreateAssessment(AssessmentTestResults assessment)
		{
			var employee = _employee.GetEmployee(User.Identity.GetUserId());
			assessment.EmployeeDocumentId = employee.DocumentId;
			var AssessmentsQuestions = _assessment.CreateAssessments(assessment);
			return RedirectToAction("Index", "Home");
		}


	}

}