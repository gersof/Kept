using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KeptWeb.Models
{
	public class EmployeeViewModel
	{
		public string DocumentId { get; set; }
		public string FullName { get; set; }
		public Nullable<int> DeliveryUnitId { get; set; }
		public Nullable<int> GradeId { get; set; }
		public string UserId { get; set; }
		public string LeadDocumentId { get; set; }
		public string PictureURL { get; set; }
		public Nullable<bool> IsLead { get; set; }
		public IList<DeliveryUnits> DeliveriesUnits { get; set; }
		public IList<Grades> UserGrades { get; set; }
		public IList<Employee> Leads { get; set; }
	}
}