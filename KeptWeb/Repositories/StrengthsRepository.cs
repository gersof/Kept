using KeptWeb.Models;
using System.Collections.Generic;
using System.Linq;

namespace KeptWeb.Repositories
{
	public class StrengthsRepository
    {
		private readonly KEPT_DBEntities _context;
		public StrengthsRepository(KEPT_DBEntities context)
		{
			_context = context;
		}

        public IEnumerable<Strengths> GetStrenghtsbyEmployee(string employeeDocumentId)
        {
            return _context.Strengths.Where(st => st.EmployeeDocumentId == employeeDocumentId).ToList();
        }
    }
}