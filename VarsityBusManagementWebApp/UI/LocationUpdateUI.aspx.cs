using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VarsityBusManagementWebApp.BLL;

namespace VarsityBusManagementWebApp.UI
{
    public partial class LocationUpdateUI : System.Web.UI.Page
    {
        private StudentInfoUpdateManager studentInfoUpdateManager = new StudentInfoUpdateManager();
        private StudentManager studentManager = new StudentManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                pickuppointDropDownList.DataSource = studentManager.PickupPointList();
                pickuppointDropDownList.DataTextField = "Location";
                pickuppointDropDownList.DataValueField = "Id";
                pickuppointDropDownList.DataBind();

                pickuppointDropDownList.Items.Insert(0, "--Select--");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = StudentLogin.Class1.storevalue;
            int location = Convert.ToInt32(pickuppointDropDownList.Text);
            

            string msg = studentInfoUpdateManager.LocationUpdate(id, location);
            if (msg == "Loaction Successfully  Updated!!")
            {
                Response.Redirect("FeedbackUI.aspx");
            }
            else
            {
                outputLabel.Text = msg;
            }
        }
    }
}