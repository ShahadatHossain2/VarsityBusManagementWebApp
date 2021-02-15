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
    public partial class EmergencyUI : System.Web.UI.Page
    {
        private StudentManager studentManager = new StudentManager();
        private BusScheduleManager busScheduleManager = new BusScheduleManager();
        private RutinManager rutinManager = new RutinManager();
        private UnassignManager unassignManager = new UnassignManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                locationDropDownList.DataSource = studentManager.PickupPointList();
                locationDropDownList.DataTextField = "Location";
                locationDropDownList.DataValueField = "Location";
                locationDropDownList.DataBind();

                departmentDropDownList.DataSource = studentManager.GetDepartment();
                departmentDropDownList.DataTextField = "Name";
                departmentDropDownList.DataValueField = "Name";
                departmentDropDownList.DataBind();

                genderDropDownList.DataSource = busScheduleManager.GetGenderList();
                genderDropDownList.DataBind();

                wayDropDownList.DataSource = busScheduleManager.GetWayList();
                wayDropDownList.DataBind();

                semesterDropDownList.DataSource = studentManager.GetSemester();
                semesterDropDownList.DataBind();


                wayDropDownList.Items.Insert(0, "--Select--");
                departmentDropDownList.Items.Insert(0, "--Select--");
                semesterDropDownList.Items.Insert(0, "--Select--");
                locationDropDownList.Items.Insert(0, "--Select--");
                genderDropDownList.Items.Insert(0, "--Select--");

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (genderDropDownList.SelectedIndex != 0 && semesterDropDownList.SelectedIndex != 0 &&
                departmentDropDownList.SelectedIndex != 0 && locationDropDownList.SelectedIndex != 0 &&
                wayDropDownList.SelectedIndex != 0)
            {
                Rutin rutin = new Rutin();
                rutin.Department = departmentDropDownList.Text;
                rutin.Semester = semesterDropDownList.Text;
                rutin.Location = locationDropDownList.Text;
                rutin.Way = wayDropDownList.Text;
                rutin.Gender = genderDropDownList.Text;
                rutin.Date = fromDateTextBox.Text;
                rutin.Time = timepickerTextBox.Text;

                Outputlabel.Text = rutinManager.Emergency(rutin);
            }

            else
            {
                Outputlabel.Text = "Please Select All The Box";
            }

        }

        protected void timepickerTextBox_OnTextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            CheckLabel.Text = unassignManager.Unassign();
        }
    }
}