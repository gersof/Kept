using KeptWeb.Models;
using System.Collections.Generic;
using System.Linq;

namespace KeptWeb.Repositories
{
	public class OOIAndAIRepository
	{
		private readonly KEPT_DBEntities _context;
		public OOIAndAIRepository(KEPT_DBEntities context)
		{
			_context = context;
		}

        public IEnumerable<OportunitiesOfImprovement> GetOOIbyEmployee(string employeeDocumentId)
        {
            return _context.OportunitiesOfImprovement.Where(oo => oo.EmployeeDocumentId == employeeDocumentId).ToList();
        }

        public IEnumerable<ActionItems> GetActionItemsbyEmployee(string employeeDocumentId)
        {
            return _context.ActionItems.Where(ai => ai.EmployeeDocumentId == employeeDocumentId).ToList();

        }
    }
}