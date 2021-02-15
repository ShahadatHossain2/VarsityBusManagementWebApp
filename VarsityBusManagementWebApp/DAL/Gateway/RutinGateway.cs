using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using VarsityBusManagementWebApp.DAL.Model;

namespace VarsityBusManagementWebApp.DAL.Gateway
{
    public class RutinGateway : BaseGateway
    {
        public int Save(Rutin rutin)
        {
            string query = "Insert Into Rutin(Day,Department,Semester,Gender,StudentNumber) Values(@day,@department,@semester,@gender,@studentNumber)";
            command = new SqlCommand(query,connection);

            command.Parameters.AddWithValue("@day", rutin.Day);
            command.Parameters.AddWithValue("@department", rutin.Department);
            command.Parameters.AddWithValue("@semester", rutin.Semester);
            command.Parameters.AddWithValue("@gender", rutin.Gender);
            command.Parameters.AddWithValue("@studentNumber", rutin.StudentNumber);
            connection.Open();
            int rowAffect = command.ExecuteNonQuery();
            connection.Close();

            return rowAffect;

        }
        public int SaveRoutine(Rutin rutin)
        {
            string query = "Insert Into ClassRoutin(Department,ClassRoutine,Gender) Values(@department,@classRoutine,@gender)";
            command = new SqlCommand(query, connection);

            command.Parameters.AddWithValue("@department", rutin.Department);
            command.Parameters.AddWithValue("@classRoutine", rutin.ClassRoutine);
            command.Parameters.AddWithValue("@gender", rutin.Gender);


            connection.Open();
            int rowAffect = command.ExecuteNonQuery();
            connection.Close();

            return rowAffect;

        }
        public int Emergency(Rutin rutin)
        {
            string query = "Insert Into EmergencySchedule(Department,Semester,Date,Time,Location,Way,Gender) Values(@department,@semester,@date,@time,@location,@way,@gender)";

            command = new SqlCommand(query, connection);

            command.Parameters.AddWithValue("@department", rutin.Department);
            command.Parameters.AddWithValue("@semester", rutin.Semester);
            command.Parameters.AddWithValue("@date", rutin.Date);
            command.Parameters.AddWithValue("@time", rutin.Time);
            command.Parameters.AddWithValue("@location", rutin.Location);
            command.Parameters.AddWithValue("@way", rutin.Way);
            command.Parameters.AddWithValue("@gender", rutin.Gender);


            connection.Open();
            int rowAffect = command.ExecuteNonQuery();
            connection.Close();

            return rowAffect;

        }
        public bool IsExistDept(string dept, string gender)
        {
            string query = "Select * From ClassRoutin Where Department = @dept and Gender = @gender";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@dept", dept);
            command.Parameters.AddWithValue("@gender", gender);

            connection.Open();
            reader = command.ExecuteReader();
            bool isExist = reader.HasRows;
            connection.Close();

            return isExist;
        }

        public int RoutineUpdate(Rutin rutin)
        {
            string query = "update ClassRoutin set ClassRoutine = @classRoutine Where Department = @dept and Gender = @gender";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@dept", rutin.Department);
            command.Parameters.AddWithValue("@gender", rutin.Gender);
            command.Parameters.AddWithValue("@classRoutine", rutin.ClassRoutine);


            connection.Open();
            int rowAffect = command.ExecuteNonQuery();
            connection.Close();

            return rowAffect;
        }

        public bool IsExistRutin(Rutin rutin)
        {
            string query = "Select * From Rutin Where Day = @day and Department = @dept and Semester = @semester and Gender = @gender ";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@dept", rutin.Department);
            command.Parameters.AddWithValue("@gender", rutin.Gender);
            command.Parameters.AddWithValue("@semester", rutin.Semester);
            command.Parameters.AddWithValue("@day", rutin.Day);

            connection.Open();
            reader = command.ExecuteReader();
            bool isExist = reader.HasRows;
            connection.Close();

            return isExist;
        }

        public int NeedRutinUpdate(Rutin rutin)
        {
            string query = "update Rutin set StudentNumber = @studentNumber Where Day = @day and Department = @dept and Semester = @semester and Gender = @gender";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@dept", rutin.Department);
            command.Parameters.AddWithValue("@gender", rutin.Gender);
            command.Parameters.AddWithValue("@semester", rutin.Semester);
            command.Parameters.AddWithValue("@day", rutin.Day);
            command.Parameters.AddWithValue("@studentNumber", rutin.StudentNumber);



            connection.Open();
            int rowAffect = command.ExecuteNonQuery();
            connection.Close();

            return rowAffect;
        }
    }
}