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
    public partial class StudentUI : System.Web.UI.Page
    {
        private StudentManager studentManager = new StudentManager();
        private BusScheduleManager busScheduleManager = new BusScheduleManager();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                locationDropDownList.DataSource = studentManager.PickupPointList();
                locationDropDownList.DataTextField = "Location";
                locationDropDownList.DataValueField = "Id";
                locationDropDownList.DataBind();

                departmentDropDownList.DataSource = studentManager.GetDepartment();
                departmentDropDownList.DataTextField = "Name";
                departmentDropDownList.DataValueField = "Id";
                departmentDropDownList.DataBind();

                semesterDropDownList.DataSource = studentManager.GetSemester();
                semesterDropDownList.DataBind();

                courseDropDownList.DataSource = studentManager.GetCourse();
                courseDropDownList.DataBind();

                genderDropDownList.DataSource = busScheduleManager.GetGenderList();
                genderDropDownList.DataBind();

                departmentDropDownList.Items.Insert(0, "Select");
                genderDropDownList.Items.Insert(0, "Select");
                semesterDropDownList.Items.Insert(0, "Select");
                courseDropDownList.Items.Insert(0, "Select");
                locationDropDownList.Items.Insert(0, "Select");
                
            }
            
        }

        protected void submitButton_Click(object sender, EventArgs e)
        {

            if (locationDropDownList.SelectedIndex != 0 && departmentDropDownList.SelectedIndex != 0 &&
                courseDropDownList.SelectedIndex != 0 && semesterDropDownList.SelectedIndex != 0 && genderDropDownList.SelectedIndex != 0)
            {
                if (PasswordTextbox.Text == ConfirmpassTextbox.Text)
                {
                    Student student = new Student();

                    student.Name = nameTextBox.Text;
                    student.MetricNo = metricNoTextBox.Text;
                    student.Department = Convert.ToInt32(departmentDropDownList.Text);
                    student.Semester = semesterDropDownList.Text;
                    student.Course = courseDropDownList.Text;
                    student.Mobile = mobileNoTextBox.Text;
                    student.Email = emailTextBox.Text;
                    student.Location = Convert.ToInt32(locationDropDownList.Text);
                    student.Password = ConfirmpassTextbox.Text;
                    student.Gender = genderDropDownList.Text;

                    string msg = studentManager.Save(student);

                    outPutLabel.Text = msg;

                    if (msg != "This Student Id is Already Exist")
                    {
                        nameTextBox.Text = "";
                        metricNoTextBox.Text = "";
                        mobileNoTextBox.Text = "";
                        emailTextBox.Text = "";
                        departmentDropDownList.SelectedIndex = 0;
                        courseDropDownList.SelectedIndex = 0;
                        semesterDropDownList.SelectedIndex = 0;
                        locationDropDownList.SelectedIndex = 0;
                    }
                }
                else
                {
                    outPutLabel.Text = "Password Not Match";
                }

              
                }
            else
            {
                outPutLabel.Text = "Please select All";
            }
              
        }
    }
}