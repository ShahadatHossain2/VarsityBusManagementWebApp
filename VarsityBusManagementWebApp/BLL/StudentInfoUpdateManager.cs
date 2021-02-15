using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using VarsityBusManagementWebApp.DAL.Gateway;

namespace VarsityBusManagementWebApp.BLL
{
    public class StudentInfoUpdateManager
    {
       public StudentInfoUpdateGateway studentInfoUpdateGateway = new StudentInfoUpdateGateway();
        public string LocationUpdate(string id, int location)
        {
            int rowAffect = studentInfoUpdateGateway.LocationUpodate(id, location);
            if (rowAffect > 0)
            {
                
                return "Loaction Successfully  Updated!!";
            }
            else
            {
          
                return "Loaction Update Failed!";
            }
        }

        public string EmailUpdate(string id, string email)
        {
            string mail = email;
            if (mail.Contains('@') && mail.Contains(".com"))
            {
                int rowAffect = studentInfoUpdateGateway.EmailUpodate(id, email);
                if (rowAffect > 0)
                {
                    return "Email Successfully updated!!";
                }
                else
                {

                    return "Email Update Failed!";
                }
            }
            else
            {
                return "Ops! Wrong Email Address!!";
            }
        }

        public int feedbacklocationupdate(string id, string location)
        {
            return studentInfoUpdateGateway.feedbacklocationupdate(id, location);
        }
    }
}