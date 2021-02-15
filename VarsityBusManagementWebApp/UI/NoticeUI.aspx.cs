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
    public partial class NoticeUI : System.Web.UI.Page
    {
        private StudentLoginManager studentLoginManager = new StudentLoginManager();
        private UnassignManager UnassignManager = new UnassignManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            List<string> mailList = studentLoginManager.GetEmail();

            foreach (var email in mailList)
            {
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("bankm4126@gmail.com", "Sha@1234");
                smtp.EnableSsl = true;
                MailMessage msg = new MailMessage();
                msg.Subject = "Notice ";
                msg.Body = noticeTextBox.Text;

                string toaddress = email;
                if (toaddress != "")
                {
                    msg.To.Add(toaddress);
                    string fromaddress = "IIUC Transport Division <bankm4126@gmail.com>";
                    msg.From = new MailAddress(fromaddress);
                    try
                    {
                        smtp.Send(msg);
                        outputLabel.Text = UnassignManager.Save(noticeTextBox.Text);

                    }
                    catch
                    {
                        throw;
                    }
                }
            }
        }
    }
}