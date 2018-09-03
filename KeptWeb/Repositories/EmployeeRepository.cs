﻿using KeptWeb.Models;
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

        public IEnumerable<Employee> GetLeads()
        {
            return _context.Employee.Where(e => e.IsLead == true).ToList();
        }

        public IEnumerable<DeliveryUnits> GetDeliveryUnits()
        {
            return _context.DeliveryUnits.ToList();
        }

        public IEnumerable<Grades> GetGrades()
        {
            return _context.Grades.ToList();
        }
    }
}