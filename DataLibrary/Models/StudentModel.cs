using System;
using System.Collections.Generic;
using System.Text;

namespace DataLibrary.Models
{
    public class StudentModel
    {
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public DateTime DateRegistered { get; set; }
        public int GenderId { get; set; }

    }
}
