using KeptWeb.Models;
using KeptWeb.Repositories;
using Microsoft.AspNet.Identity;
using System.Web.Mvc;
namespace KeptWeb.Controllers
{
	public class EmployeeController : Controller
	{
		private readonly KEPT_DBEntities _context;
		private readonly EmployeeRepository _employee;
		public EmployeeController()
		{
			_context = new KEPT_DBEntities();
			_employee = new EmployeeRepository(_context);
		}
		[HttpGet]
		[Authorize]
		public ActionResult GetLeads()
		{
			var leads = _employee.GetLeads();
			return View(leads);
		}
		[HttpGet]
		[Authorize]
		public ActionResult GetEmployee()
		{
			var employee = _employee.GetEmployee(User.Identity.GetUserId());
			return View(employee);
		}
		[HttpGet]
		[Authorize]
		public ActionResult GetDeliveryUnits()
		{
			var deliveryUnits = _employee.GetDeliveryUnits();
			return View(deliveryUnits);
		}
	}
}