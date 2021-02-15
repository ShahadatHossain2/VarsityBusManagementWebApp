using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VarsityBusManagementWebApp.BLL;

namespace VarsityBusManagementWebApp.UI
{
    public partial class AddDeptUI : System.Web.UI.Page
    {
        private BusScheduleManager busScheduleManager = new BusScheduleManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string dept = deptTextBox.Text;
            if (deptTextBox.Text != "")
            {
                outputLabel.Text = busScheduleManager.SaveDept(dept);
            }

            else
            {
                outputLabel.Text = "Please Write The Name Of The Department";
            }
        }
    }
}