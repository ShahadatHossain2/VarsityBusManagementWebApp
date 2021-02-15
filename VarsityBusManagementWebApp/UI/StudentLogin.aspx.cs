using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VarsityBusManagementWebApp.BLL;

namespace VarsityBusManagementWebApp.UI
{
    public partial class StudentLogin : System.Web.UI.Page
    {
        private StudentLoginManager studentLoginManager = new StudentLoginManager();

        public class Class1
        {
            public static string storevalue;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Class1.storevalue = idTextBox.Text;
        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            string id = idTextBox.Text;
            string password = passwordTextBox.Text;
            string msg = studentLoginManager.IsExist(id, password);
            if (idTextBox.Text == "")
            {
                outputLabel.Text = "Enter Student Id";
            }
            else
            {
                if (passwordTextBox.Text == "")
                {
                    outputLabel.Text = "Enter Password";
                }
                else
                {
                    if (msg == "ss")
                    {
                        Response.Redirect("StudentMenu.aspx");
                    }
                    else
                    {
                        outputLabel.Text = msg;
                        idTextBox.Text = "";
                        passwordTextBox.Text = "";
                    }
                }
            }
           
        }
    }
}