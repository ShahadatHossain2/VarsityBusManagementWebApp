using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using VarsityBusManagementWebApp.DAL.Gateway;
using VarsityBusManagementWebApp.DAL.Model;

namespace VarsityBusManagementWebApp.BLL
{
    public class StudentManager
    {
        public StudentGateway studentGateway = new StudentGateway();
        public StudentLoginGateway StudentLoginGateway = new StudentLoginGateway();

        public string Save(Student student)
        {
            
            if (student.Name == "" || student.MetricNo == "" || student.Course == "Select" || student.Semester == "Select" || student.Mobile == "" ||
                student.Email == "")
            {
                return "Please Fill All Box!";
            }
            else
            {
                string mail = student.Email;
                if (!mail.Contains('@') || !mail.Contains(".com"))
                {
                    return "Please Input a valid Email!";
                }
                else
                {
                    if (studentGateway.IsExistMail(student.Email))
                    {
                        return "This Email Is already Registered!";
                    }
                    else
                    {
                        if (StudentLoginGateway.IsExist(student.MetricNo))
                        {
                            return "This Student Id is Already Exist";
                        }
                        else
                        {
                            int rowAffect = studentGateway.Save(student);
                            if (rowAffect > 0)
                            {
                                return "Successfully Registered!!";
                            }
                            else
                            {
                                return "Ops! Registration Failed!!";
                            }
                        }
                    }
                }
            }
          
        }


        public List<string> GetSemester()
        {
            return studentGateway.GetSemester();
        }

        public List<Department> GetDepartment()
        {
            return studentGateway.GetDepartment();
        }


        public List<string> GetCourse()
        {
            return studentGateway.GetCourse();
        }

        public List<Pickup> PickupPointList()
        {
            return studentGateway.PickupPointList();
        }

        public List<string> GetDay()
        {
            return studentGateway.GetDay();
        }

        public List<Feedback> CheckStatus(string id)
        {
            return studentGateway.CheckStatus(id);
        }
    }
}