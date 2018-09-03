using KeptWeb.Models;
using System.Collections.Generic;
using System.Linq;

namespace KeptWeb.Repositories
{
	public class AssessmentsQuestionsRepository
	{
		private readonly KEPT_DBEntities _context;
		public AssessmentsQuestionsRepository(KEPT_DBEntities context)
		{
			_context = context;
		}

		public IList<AssessmentQuestions> GetAssessments()
		{
			var assessmentQuestions = new List<AssessmentQuestions>();
			var competencies = _context.CompetencyAndPerformance.ToList();
			foreach (var comp in competencies)
			{
				var questions = _context.AssessmentTestQuestions.Where(q => q.CAndPId == comp.CAndPId).ToList();
				var assessmentQuestion = new AssessmentQuestions
				{
					CAndPId = comp.CAndPId,
					Name = comp.Name,
					Description = comp.Description,
					IsCompetency = comp.IsCompetency,
					AssessmentTestsQuestions = questions
				};
				assessmentQuestions.Add(assessmentQuestion);
			}
			return assessmentQuestions;
		}

		public bool CreateAssessment(List<AssessmentTestResults> assessment,string employeeId)
		{
			try
			{
				foreach (var item in assessment)
				{
					_context.AssessmentTestResults.Add(item);
					_context.SaveChanges();
				}
				return true;
			}
			catch
			{
				return false;
			}

		}
	}
}