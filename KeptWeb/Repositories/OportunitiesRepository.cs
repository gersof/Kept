using KeptWeb.Models;
using System.Collections.Generic;
using System.Linq;

namespace KeptWeb.Repositories
{
	public class OportunitiesRepository
	{
		private readonly KEPT_DBEntities _context;
		public OportunitiesRepository(KEPT_DBEntities context)
		{
			_context = context;
		}

		public IList<Oportunities> GetOportunities()
		{
			var oportunities = new List<Oportunities>();
			var competencies = _context.CompetencyAndPerformance.ToList();
			foreach (var comp in competencies)
			{
				var oportinitiesByCompetency = _context.OportunitiesOfImprovement.Where(q => q.CAndPId == comp.CAndPId).ToList();
				var oportunity = new Oportunities
				{
					CAndPId = comp.CAndPId,
					Name = comp.Name,
					Description = comp.Description,
					IsCompetency = comp.IsCompetency,
					OportunitiesOfImprovements = oportinitiesByCompetency
				};
				oportunities.Add(oportunity);
			}
			return oportunities;
		}
	}
}