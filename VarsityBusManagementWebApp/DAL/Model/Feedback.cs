using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VarsityBusManagementWebApp.DAL.Model
{
    public class Feedback
    {
        public string Name { get; set; }
        public string Location { get; set; }
        public string StudentId { get; set; }
        public int Id { get; set; }
        public string FromDate { get; set; }
        public string ToDate { get; set; }
        public string Status { get; set; }
        public string Email { get; set; }

        public string Gender { get; set; }

        



    }
}