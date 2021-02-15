using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VarsityBusManagementWebApp.BLL;

namespace VarsityBusManagementWebApp.UI.ClassRoutine
{
    public partial class AddPickupPointUI : System.Web.UI.Page
    {
        private BusScheduleManager busScheduleManager = new BusScheduleManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = loccationTextBox.Text;
            if (loccationTextBox.Text != "")
            {
                outputLabel.Text = busScheduleManager.SavePickupPoint(name);
            }

            else
            {
                outputLabel.Text = "Please Write The Name Of The Pickup Point";
            }
        }
    }
}