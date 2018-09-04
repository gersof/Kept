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
		public ActionResult GetDeliveryUnits()
		{
			var deliveryUnits = _employee.GetDeliveryUnits();
			return View(deliveryUnits);
		}

		[HttpGet]
		[Authorize]
		public ActionResult Update()
		{
			var employee = _employee.GetEmployee(User.Identity.GetUserId());
			var viewModel = new EmployeeViewModel
			{
				DocumentId = employee.DocumentId,
				FullName = employee.FullName,
				DeliveriesUnits = _employee.GetDeliveryUnits(),
				UserGrades = _employee.GetGrades(),
				UserId = employee.UserId,
				PictureURL = employee.PictureURL,
				Leads = _employee.GetLeads(),
				DeliveryUnitId = employee.DeliveryUnitId,
				GradeId =employee.GradeId,
				LeadDocumentId = employee.LeadDocumentId,
				IsLead = employee.IsLead
			};
			return View(viewModel);
		}

		[HttpPost]
		[Authorize]
		public ActionResult Update(EmployeeViewModel employee)
		{
			var result = new JsonResult();
			if (_employee.UpdateEmployee(employee))
			{
				result.Data = new { status = "200", message = "Se ha actualizado correctamente" };
				return RedirectToAction("Index", "Home");
			}
			result.Data = new { status = "500", message = "Error al actualizar" };
			return View("Error");
		}
	}
}