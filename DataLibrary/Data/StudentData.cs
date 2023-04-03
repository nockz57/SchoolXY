using DataLibrary.Database;
using DataLibrary.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace DataLibrary.Data
{
    public class StudentData : IStudentData
    {
        private readonly IDataAccess _dataAccess;
        private readonly ConnectionStringData _connectionString;

        public StudentData(IDataAccess dataAccess, ConnectionStringData connectionString)
        {
            _dataAccess = dataAccess;
            _connectionString = connectionString;
        }

        public Task<List<StudentModel>> GetStudents()
        {
            return _dataAccess.LoadData<StudentModel, dynamic>("[dbo].[spStudents_All]", new { }, _connectionString.SqlConnectionName);
        }
    }
}
