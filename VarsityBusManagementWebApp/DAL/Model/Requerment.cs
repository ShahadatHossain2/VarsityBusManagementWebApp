using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VarsityBusManagementWebApp.DAL.Model
{
    public class Requerment
    {
        public int Id { get; set; }
        public string Location { get; set; }
        public int StudentNumber { get; set; }
        public int BusNumber { get; set; }
        public string Gender { get; set; }

    }
}