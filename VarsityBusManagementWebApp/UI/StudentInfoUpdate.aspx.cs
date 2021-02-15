using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VarsityBusManagementWebApp.BLL;

namespace VarsityBusManagementWebApp.UI
{
    public partial class StudentInfoUpdate : System.Web.UI.Page
    {
        private StudentInfoUpdateManager StudentInfoUpdateManager = new StudentInfoUpdateManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = StudentLogin.Class1.storevalue;
            string email = mailTextbox.Text;

            string msg = StudentInfoUpdateManager.EmailUpdate(id, email);
            if (msg == "Email Successfully updated!!")
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