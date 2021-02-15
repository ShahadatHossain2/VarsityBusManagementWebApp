using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VarsityBusManagementWebApp.BLL;

namespace VarsityBusManagementWebApp.UI
{
    public partial class ScheduleUI : System.Web.UI.Page
    {
        private ScheduleManager scheduleManager = new ScheduleManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            cityListGridView.DataSource = scheduleManager.GetCityToVarsitySchedule();
            cityListGridView.DataBind();
            varsityGridView.DataSource = scheduleManager.GetVarsityToCitySchedule();
            varsityGridView.DataBind();
        }
    }
}