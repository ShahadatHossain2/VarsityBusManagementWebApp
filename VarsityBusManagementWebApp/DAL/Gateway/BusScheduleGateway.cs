using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using VarsityBusManagementWebApp.DAL.Model;

namespace VarsityBusManagementWebApp.DAL.Gateway
{
    public class BusScheduleGateway : BaseGateway
    {
        public int Save(BusSchedule bus)
        {
            string query = "Insert Into Bus(Time,Way,LocationID,Type,Gender) Values(@time,@way,@location,@type,@gender)";
            command = new SqlCommand(query,connection);
            command.Parameters.AddWithValue("@time", bus.Time);
            command.Parameters.AddWithValue("@way", bus.Way);
            command.Parameters.AddWithValue("@location", bus.Location);
            command.Parameters.AddWithValue("@type", bus.Type);
            command.Parameters.AddWithValue("@gender", bus.Gender);



            connection.Open();
            int rowAffect = command.ExecuteNonQuery();
            connection.Close();

            return rowAffect;
        }
        public List<string> GetWayList()
        {
            List<string> wayList = new List<string>();
            wayList.Add("Varsity To City");
            wayList.Add("City To Varsity");

            return wayList;
        }

        public List<string> GetTypeList()
        {
            List<string> typeList = new List<string>();
            typeList.Add("Regular");
            typeList.Add("Examination");
            typeList.Add("Masters");


            return typeList;
        }

        public List<string> GetGenderList()
        {
            List<string> genderList = new List<string>();
            genderList.Add("Male");
            genderList.Add("Female");

            return genderList;
        }

        public int UpdateBusSchedule(BusSchedule bus, string time)
        {
            string query = "Update  Bus Set Time = @time Where LocationID = @locationId and Gender = @gender and Type = @type and Way = @way and Time = @oldtime";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@time", bus.Time);
            command.Parameters.AddWithValue("@oldtime",time);
            command.Parameters.AddWithValue("@locationId", bus.Location);
            command.Parameters.AddWithValue("@gender", bus.Gender);
            command.Parameters.AddWithValue("@type", bus.Type);
            command.Parameters.AddWithValue("@Way", bus.Way);



            connection.Open();
            int rowAffect = command.ExecuteNonQuery();
            connection.Close();

            return rowAffect;
        }

        public bool IsExistSchedule(BusSchedule bus)
        {
            string query = "Select * From Bus Where LocationID = @locationID and Time = @time and Way = @way and Type = @type and Gender = @gender";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@time", bus.Time);
            command.Parameters.AddWithValue("@way", bus.Way);
            command.Parameters.AddWithValue("@locationID", bus.Location);
            command.Parameters.AddWithValue("@type", bus.Type);
            command.Parameters.AddWithValue("@gender", bus.Gender);

            connection.Open();
            reader = command.ExecuteReader();
            bool isExist = reader.HasRows;
            connection.Close();

            return isExist;
        }

        public List<string> TimeList(BusSchedule busSchedule)
        {
            string query = "Select Time From Bus Where LocationID = @locationId and Gender = @gender and Type = @type and Way = @way";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@locationId", busSchedule.Location);
            command.Parameters.AddWithValue("@gender", busSchedule.Gender);
            command.Parameters.AddWithValue("@type", busSchedule.Type);
            command.Parameters.AddWithValue("@Way", busSchedule.Way);

            connection.Open();
            reader = command.ExecuteReader();

            List<string> timeList = new List<string>();
            while (reader.Read())
            {
                string time = reader["Time"].ToString();

                timeList.Add(time);
            }

            connection.Close();

            return timeList;
        }

        public int SaveDept(string dept)
        {
            string query = "Insert Into Departments(Name) Values(@name)";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@name", dept);


            connection.Open();
            int rowAffect = command.ExecuteNonQuery();
            connection.Close();

            return rowAffect;
        }

        public int SavePickupPoint(string pickUp)
        {
            string query = "Insert Into PickupPoint(Location) Values(@name)";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@name", pickUp);


            connection.Open();
            int rowAffect = command.ExecuteNonQuery();
            connection.Close();

            return rowAffect;
        }

        public bool IsExistDept(string dept)
        {
            string query = "Select * From Departments Where Name = @name";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@name", dept);

            connection.Open();
            reader = command.ExecuteReader();
            bool isExist = reader.HasRows;
            connection.Close();

            return isExist;
        }

        public bool IsExistPickupPoint(string pickupPoint)
        {
            string query = "Select * From PickupPoint Where Location = @name";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@name", pickupPoint);

            connection.Open();
            reader = command.ExecuteReader();
            bool isExist = reader.HasRows;
            connection.Close();

            return isExist;
        }

        public List<Rutin> GetEmergencyList()
        {
            string query = "Select * From EmergencySchedule";
            command = new SqlCommand(query, connection);
            connection.Open();
            reader = command.ExecuteReader();

            List<Rutin> schedules = new List<Rutin>();

            while (reader.Read())
            {
                Rutin aSchedule = new Rutin();
                aSchedule.Department = reader["Department"].ToString();
                aSchedule.Semester = reader["Semester"].ToString();
                aSchedule.Date = reader["Date"].ToString();
                aSchedule.Location = reader["Location"].ToString();
                aSchedule.Time = reader["Time"].ToString();
                aSchedule.Gender = reader["Gender"].ToString();
                aSchedule.Way = reader["Way"].ToString();
                if (aSchedule.Way == "City To Varsity")
                {
                    aSchedule.Way = "Towards Varsity";
                }
                else
                {
                    aSchedule.Way = "Towards City";
                }


                schedules.Add(aSchedule);
            }

            connection.Close();

            return schedules;
        }
    }
}