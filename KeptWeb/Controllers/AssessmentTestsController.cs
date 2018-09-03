using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using KeptWeb.Models;
using KeptWeb.Repositories;
using Newtonsoft.Json;

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
		public ActionResult Index()
		{
			return View();
		}

		[HttpGet]
		public ActionResult GetAssessment()
		{
			var AssessmentsQuestions = _assessment.GetAssessments();

			var list = JsonConvert.SerializeObject(AssessmentsQuestions,
						 Formatting.None,
						 new JsonSerializerSettings()
						 {
							 ReferenceLoopHandling = Newtonsoft.Json.ReferenceLoopHandling.Ignore
						 });

			return Content(list, "application/json");

		}
	}

}