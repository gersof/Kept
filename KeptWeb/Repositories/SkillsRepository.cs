using KeptWeb.Models;
using System.Collections.Generic;
using System.Linq;


namespace KeptWeb.Repositories
{	
	public class SkillsRepository
	{		
		private readonly KEPT_DBEntities _context;		
		public SkillsRepository(KEPT_DBEntities context)
		{
			_context = context;
		}

		public IList<Skills> GetSkills()
		{
			var skills = _context.Skills.ToList();
			return skills;
		}
			
		
	}
}