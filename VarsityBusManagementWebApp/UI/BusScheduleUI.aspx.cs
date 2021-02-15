using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VarsityBusManagementWebApp.BLL;
using VarsityBusManagementWebApp.DAL.Model;

namespace VarsityBusManagementWebApp.UI
{
    public partial class BusScheduleUI : System.Web.UI.Page
    {
        private BusScheduleManager busScheduleManager = new BusScheduleManager();
        private StudentManager studentManager = new StudentManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                wayDropDownList.DataSource = busScheduleManager.GetWayList();
                wayDropDownList.DataBind();
                typeDropDownList.DataSource = busScheduleManager.GetTypeList();
                typeDropDownList.DataBind();
                forDropDownList.DataSource = busScheduleManager.GetGenderList();
                forDropDownList.DataBind();
                locationDropDownList.DataSource = studentManager.PickupPointList();
                locationDropDownList.DataTextField = "Location";
                locationDropDownList.DataValueField = "Id";
                locationDropDownList.DataBind();
                
                wayDropDownList.Items.Insert(0, "Select");
                typeDropDownList.Items.Insert(0, "Select");
                locationDropDownList.Items.Insert(0, "Select");
                forDropDownList.Items.Insert(0,"Select");

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (wayDropDownList.SelectedIndex != 0 && typeDropDownList.SelectedIndex != 0 && forDropDownList.SelectedIndex != 0 && locationDropDownList.SelectedIndex != 0)
            {
                BusSchedule bus = new BusSchedule();
                bus.Location = Convert.ToInt32(locationDropDownList.Text);
                bus.Way = wayDropDownList.Text;
                bus.Time = timepickerTextBox.Text;
                bus.Type = typeDropDownList.Text;
                bus.Gender = forDropDownList.Text;

                string msg = busScheduleManager.Save(bus);

                Outputlabel.Text = msg;

                
                typeDropDownList.SelectedIndex = 0;
                locationDropDownList.SelectedIndex = 0;
            }

            else
            {
                Outputlabel.Text = "Please Select All The Box!!";
            }
        }

        protected void timepickerTextBox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddPickupPointUI.aspx");
        }
    }
}