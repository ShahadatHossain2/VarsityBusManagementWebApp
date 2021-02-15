using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VarsityBusManagementWebApp.BLL;
using VarsityBusManagementWebApp.DAL.Model;
using System.Data;
using System.Data.SqlClient;

namespace VarsityBusManagementWebApp.UI
{
    public partial class RutinUI : System.Web.UI.Page
    {
        private StudentManager studentManager = new StudentManager();
        private RutinManager rutinManager = new RutinManager();
        private BusScheduleManager busScheduleManager = new BusScheduleManager();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dayDropDownList.DataSource = studentManager.GetDay();
                dayDropDownList.DataBind();

                departmentDropDownList.DataSource = studentManager.GetDepartment();
                departmentDropDownList.DataTextField = "Name";
                departmentDropDownList.DataValueField = "Name";
                departmentDropDownList.DataBind();

                semesterDropDownList.DataSource = studentManager.GetSemester();
                semesterDropDownList.DataBind();

                genderDropDownList.DataSource = busScheduleManager.GetGenderList();
                genderDropDownList.DataBind();

                departmentDropDownList.Items.Insert(0, "--Select--");
                semesterDropDownList.Items.Insert(0, "--Select--");
                dayDropDownList.Items.Insert(0, "--Select--");
                genderDropDownList.Items.Insert(0, "--Select--");

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (departmentDropDownList.SelectedIndex != 0 && semesterDropDownList.SelectedIndex != 0 &&
                dayDropDownList.SelectedIndex != 0 && genderDropDownList.SelectedIndex != 0)
            {
                Rutin rutin = new Rutin();
                rutin.Day = dayDropDownList.Text;
                rutin.Department = departmentDropDownList.Text;
                rutin.Semester = semesterDropDownList.Text;
                rutin.Gender = genderDropDownList.Text;
                rutin.StudentNumber = Convert.ToInt32(studentNumberTextBox.Text);

                outputLabel.Text = rutinManager.Save(rutin);
            }
            else
            {
                outputLabel.Text = "Please Select All The Box!";
            }
        }

      
    }
}