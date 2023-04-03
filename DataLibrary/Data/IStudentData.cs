using DataLibrary.Models;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace DataLibrary.Data
{
    public interface IStudentData
    {
        Task<List<StudentModel>> GetStudents();
    }
}