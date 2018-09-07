using System.Collections.Generic;

namespace KeptWeb.Models
{
	public class Oportunities
	{
		public long CAndPId { get; set; }
		public string Name { get; set; }
		public string Description { get; set; }
		public bool IsCompetency { get; set; }
		public IList<OportunitiesOfImprovement> OportunitiesOfImprovements { get; set; }
	}
}