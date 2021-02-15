using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VarsityBusManagementWebApp.BLL;
using System.Net.Mail;
using System.Net;

namespace VarsityBusManagementWebApp.UI
{
    public partial class Feedback : System.Web.UI.Page
    {
        private StudentLoginManager studentLoginManager = new StudentLoginManager();
        private FeedbackManager feedbackManager = new FeedbackManager();
        private StudentInfoUpdateManager studentInfoUpdateManager = new StudentInfoUpdateManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = StudentLogin.Class1.storevalue;
            nameTextBox.Text = studentLoginManager.StudentName(id);
            pickupTextBox.Text = studentLoginManager.StudentLocation(id);
            emailTextBox.Text = studentLoginManager.StudentEmail(id);

            if (!IsPostBack)
            {
                //statusDropDownList.DataSource = feedbackManager.GetStatus();
                //statusDropDownList.DataBind();
                string Loaction = pickupTextBox.Text;
                string no = StudentLogin.Class1.storevalue;
                studentInfoUpdateManager.feedbacklocationupdate(no, Loaction);
               
            }
        }

        protected void confirmButton_Click(object sender, EventArgs e)
        {
            bool test1 = RadioButton1.Checked;
            bool test2 = RadioButton2.Checked;
            DAL.Model.Feedback aFeedback = new DAL.Model.Feedback();
            string masg;
            if (test1)
            {
                aFeedback.Status = "Yes";
            }
            else
            {
                aFeedback.Status = "No";
            }

           
  
            aFeedback.Location = pickupTextBox.Text;
            aFeedback.FromDate = fromDateTextBox.Text;
            aFeedback.ToDate = toDateTextBox.Text;
            aFeedback.StudentId = StudentLogin.Class1.storevalue;
            aFeedback.Gender = studentLoginManager.StudentGender(aFeedback.StudentId);

            if (!test1 && !test2)
            {
                statusLabel.Text = "Please Select Yes or No as Your status";
                masg = "";
            }
            else
            {
                masg = feedbackManager.Save(aFeedback);
                statusLabel.Text = "";
            }
            
            if (masg == "Successful!!" && aFeedback.Status == "Yes")
            {
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("bankm4126@gmail.com", "Sha@1234");
                smtp.EnableSsl = true;
                MailMessage msg = new MailMessage();
                msg.Subject = "Hello " + nameTextBox.Text;
                msg.Body = "Hi You are eligible for bus From " + "\n" + " Date : " + fromDateTextBox.Text +
                           " To Date : " + toDateTextBox.Text + "\n" + "Location :" + pickupTextBox.Text;
                           
                string toaddress = emailTextBox.Text;
                msg.To.Add(toaddress);
                string fromaddress = "IIUC Transport Division <bankm4126@gmail.com>";
                msg.From = new MailAddress(fromaddress);
                try
                {
                    smtp.Send(msg);
                    outputLabel.Text = "Successfull!!";

                }
                catch
                {
                    throw;
                }

            }

            else
            {
                outputLabel.Text = masg;
            }


        }
        protected void Button1_Click(object sender, EventArgs e)
        {
           Response.Redirect("StudentInfoUpdate.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("LocationUpdateUI.aspx");
        }
    }
}