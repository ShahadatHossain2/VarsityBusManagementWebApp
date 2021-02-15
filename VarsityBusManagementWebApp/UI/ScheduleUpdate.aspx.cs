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
    public partial class ScheduleUpdate : System.Web.UI.Page
    {
        private StudentManager studentManager = new StudentManager();
        private BusScheduleManager busScheduleManager = new BusScheduleManager();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                pickupPointDropDownList.DataSource = studentManager.PickupPointList();
                pickupPointDropDownList.DataTextField = "Location";
                pickupPointDropDownList.DataValueField = "Id";
                pickupPointDropDownList.DataBind();
                roadDropDownList.DataSource = busScheduleManager.GetWayList();
                roadDropDownList.DataBind();
                genderDropDownList.DataSource = busScheduleManager.GetGenderList();
                genderDropDownList.DataBind();
                rtypeDropDownList.DataSource = busScheduleManager.GetTypeList();
                rtypeDropDownList.DataBind();

                pickupPointDropDownList.Items.Insert(0, "Select");
                timeDropDownList.Items.Insert(0, "Select");
                roadDropDownList.Items.Insert(0, "Select");
                rtypeDropDownList.Items.Insert(0, "Select");
                genderDropDownList.Items.Insert(0, "Select");

            }
        }


        protected void timeTextBox_OnTextChanged(object sender, EventArgs e)
        {
           
        }

        protected void pickupPointDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            

            if (pickupPointDropDownList.SelectedIndex != 0)
            {
                //int locationId = Convert.ToInt32(pickupPointDropDownList.SelectedItem.Value);
                BusSchedule bus = new BusSchedule();
                bus.Location = Convert.ToInt32(pickupPointDropDownList.Text);
                bus.Way = roadDropDownList.Text;
                bus.Time = timeDropDownList.Text;
                bus.Type = rtypeDropDownList.Text;
                bus.Gender = genderDropDownList.Text;
                timeDropDownList.DataSource = busScheduleManager.TimeList(bus);

                timeDropDownList.DataBind();
            }
            else
            {
                timeDropDownList.Items.Clear();
            }

            timeDropDownList.Items.Insert(0, "Select Time");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string oldtime = timeDropDownList.Text;
         

            if (genderDropDownList.SelectedIndex != 0 &&
                rtypeDropDownList.SelectedIndex != 0 && roadDropDownList.SelectedIndex != 0)
            {
                if (timeTextBox.Text == "")
                {
                    outputLabel.Text = "Please Set New Time!";
                }

                else
                {
                    BusSchedule bus = new BusSchedule();
                    bus.Location = Convert.ToInt32(pickupPointDropDownList.Text);
                    bus.Gender = genderDropDownList.Text;
                    bus.Type = rtypeDropDownList.Text;
                    bus.Way = roadDropDownList.Text;
                    bus.Time = timeTextBox.Text;
                    outputLabel.Text = busScheduleManager.UpdateBusSchedule(bus, oldtime);
                }
            }

            else
            {
                outputLabel.Text = "Please Select all the box!!";
            }
        }
    }
}