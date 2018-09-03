using KeptWeb.Models;
using System.Collections.Generic;
using System.Linq;

namespace KeptWeb.Repositories
{
	public class EmployeeRepository
	{
		private readonly KEPT_DBEntities _context;
		public EmployeeRepository(KEPT_DBEntities context)
		{
			_context = context;
		}

		public void CreateEmployee(Employee employee)
		{
			_context.Employee.Add(employee);
			_context.SaveChanges();
		}
	}
}