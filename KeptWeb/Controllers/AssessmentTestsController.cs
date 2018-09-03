using KeptWeb.Models;
using KeptWeb.Repositories;
using Microsoft.AspNet.Identity;
using System.Web.Mvc;

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
		public JsonResult CreateAssessment(AssessmentTestResults assessment)
		{
			var employee = _employee.GetEmployee(User.Identity.GetUserId());
			assessment.EmployeeDocumentId = employee.DocumentId;
			var result = new JsonResult();
			if (_assessment.CreateAssessment(assessment))
			{
				result.Data = new { status = "200", message = "Se ha guardado correctamente" };
				return result;
			}
			result.Data = new { status = "500", message = "Error al guardar" };
			return result;
		}


	}

}