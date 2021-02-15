using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using VarsityBusManagementWebApp.DAL.Model;

namespace VarsityBusManagementWebApp.DAL.Gateway
{
    public class ScheduleGateway : BaseGateway
    {
        public List<Schedule> GetCityToVarsitySchedule()
        {
            string query = "Select * From Schedule Where Way = 'City To Varsity' and Type = 'Regular' and Gender='Male'";
            command = new SqlCommand(query,connection);
            connection.Open();
            reader = command.ExecuteReader();

            List<Schedule> schedules = new List<Schedule>();

            while (reader.Read())
            {
                Schedule aSchedule = new Schedule();
                aSchedule.Location = reader["Location"].ToString();
                aSchedule.Time = reader["Time"].ToString();

                schedules.Add(aSchedule);
            }

            connection.Close();

            return schedules;
        }
        public List<Schedule> GetVarsityToCitySchedule()
        {
            string query = "Select * From Schedule Where Way = 'Varsity To City' and Type = 'Regular' and Gender='Male'";
            command = new SqlCommand(query, connection);
            connection.Open();
            reader = command.ExecuteReader();

            List<Schedule> schedules = new List<Schedule>();

            while (reader.Read())
            {
                Schedule aSchedule = new Schedule();
                aSchedule.Location = reader["Location"].ToString();
                aSchedule.Time = reader["Time"].ToString();

                schedules.Add(aSchedule);
            }

            connection.Close();

            return schedules;
        }
        public List<Schedule> GetCityToVarsityScheduleExam()
        {
            string query = "Select * From Schedule Where Way = 'City To Varsity' and Type = 'Examination'";
            command = new SqlCommand(query, connection);
            connection.Open();
            reader = command.ExecuteReader();

            List<Schedule> schedules = new List<Schedule>();

            while (reader.Read())
            {
                Schedule aSchedule = new Schedule();
                aSchedule.Location = reader["Location"].ToString();
                aSchedule.Time = reader["Time"].ToString();

                schedules.Add(aSchedule);
            }

            connection.Close();

            return schedules;
        }
        public List<Schedule> GetVarsityToCityScheduleExam()
        {
            string query = "Select * From Schedule Where Way = 'Varsity To City' and Type = 'Examination'";
            command = new SqlCommand(query, connection);
            connection.Open();
            reader = command.ExecuteReader();

            List<Schedule> schedules = new List<Schedule>();

            while (reader.Read())
            {
                Schedule aSchedule = new Schedule();
                aSchedule.Location = reader["Location"].ToString();
                aSchedule.Time = reader["Time"].ToString();

                schedules.Add(aSchedule);
            }

            connection.Close();

            return schedules;
        }
        public List<Schedule> GetCityToVarsityScheduleFemale()
        {
            string query = "Select * From Schedule Where Way = 'City To Varsity' and Type = 'Regular' and Gender='Female'";
            command = new SqlCommand(query, connection);
            connection.Open();
            reader = command.ExecuteReader();

            List<Schedule> schedules = new List<Schedule>();

            while (reader.Read())
            {
                Schedule aSchedule = new Schedule();
                aSchedule.Location = reader["Location"].ToString();
                aSchedule.Time = reader["Time"].ToString();

                schedules.Add(aSchedule);
            }

            connection.Close();

            return schedules;
        }
        public List<Schedule> GetVarsityToCityScheduleFemale()
        {
            string query = "Select * From Schedule Where Way = 'Varsity To City' and Type = 'Regular' and Gender='Female'";
            command = new SqlCommand(query, connection);
            connection.Open();
            reader = command.ExecuteReader();

            List<Schedule> schedules = new List<Schedule>();

            while (reader.Read())
            {
                Schedule aSchedule = new Schedule();
                aSchedule.Location = reader["Location"].ToString();
                aSchedule.Time = reader["Time"].ToString();

                schedules.Add(aSchedule);
            }

            connection.Close();

            return schedules;
        }

        public List<Schedule> GetCityToVarsityScheduleMasters()
        {
            string query = "Select * From Schedule Where Way = 'City To Varsity' and Type = 'Masters'";
            command = new SqlCommand(query, connection);
            connection.Open();
            reader = command.ExecuteReader();

            List<Schedule> schedules = new List<Schedule>();

            while (reader.Read())
            {
                Schedule aSchedule = new Schedule();
                aSchedule.Location = reader["Location"].ToString();
                aSchedule.Time = reader["Time"].ToString();
                aSchedule.Gender = reader["Gender"].ToString();


                schedules.Add(aSchedule);
            }

            connection.Close();

            return schedules;
        }
        public List<Schedule> GetVarsityToCityScheduleMasters()
        {
            string query = "Select * From Schedule Where Way = 'Varsity To City' and Type = 'Masters'";
            command = new SqlCommand(query, connection);
            connection.Open();
            reader = command.ExecuteReader();

            List<Schedule> schedules = new List<Schedule>();

            while (reader.Read())
            {
                Schedule aSchedule = new Schedule();
                aSchedule.Location = reader["Location"].ToString();
                aSchedule.Time = reader["Time"].ToString();
                aSchedule.Gender = reader["Gender"].ToString();


                schedules.Add(aSchedule);
            }

            connection.Close();

            return schedules;
        }
    }
}