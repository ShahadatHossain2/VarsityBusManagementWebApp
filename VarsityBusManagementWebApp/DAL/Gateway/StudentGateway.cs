using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using VarsityBusManagementWebApp.DAL.Model;

namespace VarsityBusManagementWebApp.DAL.Gateway
{
    public class StudentGateway : BaseGateway
    {
        public int Save(Student student)
        {
            string query = "INSERT INTO Student(Name,MetricNo,Semester,DepartmentId,Email,MobileNo,Course,LocationId,Password,Gender) VALUES(@name,@metricNo,@semester,@department,@email,@mobileNo,@course,@location,@password,@gender)";
            command = new SqlCommand(query,connection);
            command.Parameters.AddWithValue("@name", student.Name);
            command.Parameters.AddWithValue("@metricNo", student.MetricNo);
            command.Parameters.AddWithValue("@semester", student.Semester);
            command.Parameters.AddWithValue("@department", student.Department);
            command.Parameters.AddWithValue("@email", student.Email);
            command.Parameters.AddWithValue("@mobileNo", student.Mobile);
            command.Parameters.AddWithValue("@course", student.Course);
            command.Parameters.AddWithValue("@location", student.Location);
            command.Parameters.AddWithValue("@password", student.Password);
            command.Parameters.AddWithValue("@gender", student.Gender);

            connection.Open();
            int rowAffect = command.ExecuteNonQuery();
            connection.Close();

            return rowAffect;
        }

        public List<Department> GetDepartment()
        {
            
            string query = "Select * From Departments";
            command = new SqlCommand(query, connection);
            connection.Open();
            reader = command.ExecuteReader();

            List<Department> departmentList = new List<Department>();
            while (reader.Read())
            {
                Department adepartment = new Department();
                adepartment.Id = (int)reader["Id"];
                adepartment.Name = reader["Name"].ToString();

                departmentList.Add(adepartment);
            }

            connection.Close();

            return departmentList;
        }

        public List<string> GetCourse()
        {
            List<string> courseList = new List<string>();
            courseList.Add("Under Graduate");
            courseList.Add("Master's");
         

            return courseList;
        }

        public List<string> GetSemester()
        {
            List<string> semesterList = new List<string>();
            semesterList.Add("1st");
            semesterList.Add("2nd");
            semesterList.Add("3rd");
            semesterList.Add("4th");
            semesterList.Add("5th");
            semesterList.Add("6th");
            semesterList.Add("7th");
            semesterList.Add("8th");
            semesterList.Add("All");


            return semesterList;
        }

        public List<Pickup> PickupPointList()
        {
            string query = "Select * From PickupPoint";
            command = new SqlCommand(query,connection);
            connection.Open();
            reader = command.ExecuteReader();

            List<Pickup> locations = new List<Pickup>();
            while (reader.Read())
            {
                Pickup location = new Pickup();
                location.Id = (int) reader["Id"];
                location.Location = reader["Location"].ToString();

                locations.Add(location);
            }

            connection.Close();

            return locations;
        }

        public bool IsExistMail(string email)
        {
            string query = "Select * From Student Where Email = @email";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@email", email);
            connection.Open();
            reader = command.ExecuteReader();
            bool isExist = reader.HasRows;
            connection.Close();

            return isExist;
        }
        public List<string> GetDay()
        {
            List<string> daList = new List<string>();
            daList.Add("Saturday");
            daList.Add("Sunday");
            daList.Add("Monday");
            daList.Add("Tuesday");
            daList.Add("Wednsday");
            daList.Add("Thursday");
            daList.Add("Friday");

            return daList;
        }

        public List<Feedback> CheckStatus(string id)
        {
            string query = "Select * From Feedback Where StudentId = @id";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@id", id);
            connection.Open();
            reader = command.ExecuteReader();

            List<Feedback> locations = new List<Feedback>();
            while (reader.Read())
            {
                Feedback location = new Feedback();
                location.Status = reader["Status"].ToString();
                if (location.Status == "Yes")
                {
                    location.Status = "Eligible";
                location.FromDate = reader["FromDate"].ToString();
                location.ToDate = reader["ToDate"].ToString();
                location.Location = reader["Location"].ToString();
                }
                else
                {
                    location.Status = "Not Eligible";
                    location.FromDate = "-";
                    location.ToDate = "-";
                    location.Location = reader["Location"].ToString();

                }

                locations.Add(location);
            }

            connection.Close();

            return locations;
        }
    }
}