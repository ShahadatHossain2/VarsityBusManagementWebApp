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
    public partial class ClassRoutin : System.Web.UI.Page
    {
        private StudentManager studentManager = new StudentManager();
        private RutinManager rutinManager = new RutinManager();
        private BusScheduleManager busScheduleManager = new BusScheduleManager();
        private static string routineLink;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                departmentDropDownList.DataSource = studentManager.GetDepartment();
                departmentDropDownList.DataTextField = "Name";
                departmentDropDownList.DataValueField = "Name";
                departmentDropDownList.DataBind();


                genderDropDownList.DataSource = busScheduleManager.GetGenderList();
                genderDropDownList.DataBind();

                departmentDropDownList.Items.Insert(0, "--Select--");
                genderDropDownList.Items.Insert(0, "--Select--");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (ClassRutine() == true)
            {
                if (departmentDropDownList.SelectedIndex != 0 && genderDropDownList.SelectedIndex != 0)
                {
                    Rutin rutin = new Rutin();
                    rutin.Department = departmentDropDownList.Text;
                    rutin.Gender = genderDropDownList.Text;
                    rutin.ClassRoutine = routineLink;

                    OutputLabel.Text = rutinManager.SaveRoutine(rutin);
                }

                else
                {
                    OutputLabel.Text = "Please Select All";
                }
            }
        }
        private bool ClassRutine()
        {
            bool routineSave = false;
            if (FileUpload.HasFile == true)
            {
                string conntentType = FileUpload.PostedFile.ContentType;
                if (conntentType == "application/pdf")
                {
                    int filesize = FileUpload.PostedFile.ContentLength;

                    FileUpload.SaveAs(Server.MapPath("~/UI/ClassRoutine/") + departmentDropDownList.Text + genderDropDownList.Text + ".pdf");
                    routineLink = "ClassRoutine/" + departmentDropDownList.Text + genderDropDownList.Text + ".pdf";
                    routineSave = true;
                    warningLabel.Text = "";
                }
                else
                {
                    warningLabel.Text = "Upload Routine In Pdf Format Only";
                }
            }

            else
            {
                warningLabel.Text = "Kindly Upload Class Routine";
            }
            return routineSave;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddDeptUI.aspx");
        }
    }
}