using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using VarsityBusManagementWebApp.DAL.Gateway;
using VarsityBusManagementWebApp.DAL.Model;

namespace VarsityBusManagementWebApp.BLL
{
    public class StudentLoginManager
    {
        private StudentLoginGateway studentLoginGateway = new StudentLoginGateway();
        public string IsExist(string id,string password)
        {
            if (!studentLoginGateway.IsExistPassword(id, password))
            {
                return "Sorry Wrong Id or Password";
            }
            else
            {
                return "ss";
            }
        }

        public string StudentName(string id)
        {
            return  studentLoginGateway.StudentName(id);
        }

        public string StudentLocation(string id)
        {
            return studentLoginGateway.StudentLocation(id);
        }

        public string StudentEmail(string id)
        {
            return studentLoginGateway.StudentEmail(id);
        }

        public string StudentGender(string id)
        {
            return studentLoginGateway.StudentGender(id);
        }

        public List<string> GetEmail()
        {
            return studentLoginGateway.GetEmail();
        }
    }
}