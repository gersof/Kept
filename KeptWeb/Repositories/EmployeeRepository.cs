using KeptWeb.Models;
using System;
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

		public Employee GetEmployee(string userId)
		{
			return _context.Employee.Single(e => e.UserId == userId);
		}

        public IList<Employee> GetLeads()
        {
            return _context.Employee.Where(e => e.IsLead == true).ToList();
        }

        public IList<DeliveryUnits> GetDeliveryUnits()
        {
            return _context.DeliveryUnits.ToList();
        }

        public IList<Grades> GetGrades()
        {
            return _context.Grades.ToList();
        }

		public bool UpdateEmployee(EmployeeViewModel employee)
		{
			try
			{
				var oldEmployee = GetEmployee(employee.UserId);
				oldEmployee.FullName = employee.FullName;
				oldEmployee.GradeId = employee.GradeId;
				oldEmployee.IsLead = employee.IsLead;
				oldEmployee.LeadDocumentId = employee.LeadDocumentId;
				oldEmployee.PictureURL = employee.PictureURL;
				oldEmployee.UserId = employee.UserId;
				oldEmployee.DeliveryUnitId = employee.DeliveryUnitId;

				//_context.Employee.Attach(oldEmployee);
				_context.SaveChanges();
				return true;
			}
			catch
			{
				return false;
			}

		}
	}
}