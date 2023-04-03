using DataLibrary.Data;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SchoolXyWeb.Controllers
{
    public class StudentController : Controller
    {
        private readonly IStudentData _studentData;

        public StudentController(IStudentData studentData)
        {
            _studentData = studentData;
        }
        public async Task<IActionResult> Index()
        {
            var students = await _studentData.GetStudents();
            return View(students);
        }
    }
}
