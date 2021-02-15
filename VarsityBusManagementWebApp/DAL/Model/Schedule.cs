using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VarsityBusManagementWebApp.DAL.Model
{
    public class Schedule
    {
        public int Id { get; set; }
        public string Location { get; set; }
        public string Time { get; set; }

        public string Gender { get; set; }
    }
}