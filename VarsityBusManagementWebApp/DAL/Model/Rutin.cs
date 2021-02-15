using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VarsityBusManagementWebApp.DAL.Model
{
    public class Rutin
    {
        public int Id { get; set; }
        public string Day { get; set; }
        public string Gender { get; set; }
        public string Department { get; set; }
        public string Semester { get; set; }
        public int StudentNumber { get; set; }
        public string ClassRoutine { get; set; }
        public string Date { get; set; }
        public string Time { get; set; }
        public string Way { get; set; }
        public string Location { get; set; }
    }
}