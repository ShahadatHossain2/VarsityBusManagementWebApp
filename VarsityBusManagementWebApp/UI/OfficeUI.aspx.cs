using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VarsityBusManagementWebApp.UI
{
    public partial class OfficeUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = userTextBox.Text;
            string pass = passwordTextBox.Text;
            if (name == "Admin" && pass == "admin")
            {
                Response.Redirect("OfficeLoginUI.aspx");
            }
            else
            {
                if (name == "" && pass == "")
                {
                    outputLabel.Text = "Please Enter User Name and Password";
                }
                else
                {
                    outputLabel.Text = "Worng User Name or Password!!";
                }
            }
        }
    }
}