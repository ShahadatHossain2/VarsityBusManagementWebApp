using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VarsityBusManagementWebApp.BLL;

namespace VarsityBusManagementWebApp.UI
{
    public partial class EmergencyBusSchedule : System.Web.UI.Page
    {
        private BusScheduleManager busScheduleManager = new BusScheduleManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            cityListGridView.DataSource = busScheduleManager.GetEmergencyList();
            cityListGridView.DataBind();
        }
    }
}