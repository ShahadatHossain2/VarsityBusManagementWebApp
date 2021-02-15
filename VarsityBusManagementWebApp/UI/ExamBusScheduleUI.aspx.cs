using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VarsityBusManagementWebApp.BLL;

namespace VarsityBusManagementWebApp.UI
{
    public partial class ExamBusScheduleUI : System.Web.UI.Page
    {
        private ScheduleManager scheduleManager = new ScheduleManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            cityListGridView.DataSource = scheduleManager.GetCityToVarsityScheduleExam();
            cityListGridView.DataBind();

            varsityGridView.DataSource = scheduleManager.GetVarsityToCityScheduleExam();
            varsityGridView.DataBind();
        }
    }
}