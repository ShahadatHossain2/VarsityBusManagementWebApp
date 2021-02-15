using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VarsityBusManagementWebApp.DAL.Model
{
    public class BusSchedule
    {
        public int Id { get; set; }
        public int Location { get; set; }
        public string Time { get; set; }
        public string Way { get; set; }
        public string Type { get; set; }
        public string Gender { get; set; }

    }
}