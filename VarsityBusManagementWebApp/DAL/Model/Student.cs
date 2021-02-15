using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VarsityBusManagementWebApp.DAL.Model
{
    public class Student
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string MetricNo { get; set; }
        public string Semester { get; set; }
        public int Department { get; set; }
        public string Email { get; set; }
        public string Mobile { get; set; }
        public string Course { get; set; }
        public int Location { get; set; }
        public string Password { get; set; }

        public string Gender { get; set; }
    }
}