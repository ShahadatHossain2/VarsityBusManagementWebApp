using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VarsityBusManagementWebApp.DAL.Model
{
    public class BusNeedView
    {
        public int Id { get; set; }
        public string Day { get; set; }
        public string Department { get; set; }
        public int Total { get; set; }
        public string Gender { get; set; }
        public int BusNeed { get; set; }
        public double Need1 { get; set; }
        public double Need2 { get; set; }
    }
}