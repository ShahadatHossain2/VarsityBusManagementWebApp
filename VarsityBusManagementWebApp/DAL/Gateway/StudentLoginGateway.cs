using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using VarsityBusManagementWebApp.DAL.Model;

namespace VarsityBusManagementWebApp.DAL.Gateway
{
    public class StudentLoginGateway : BaseGateway
    {
        public bool IsExist(string id)
        {
            string query = "Select * From Student Where MetricNo = @id";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@id", id);
            connection.Open();
            reader = command.ExecuteReader();
            bool isExist = reader.HasRows;
            connection.Close();

            return isExist;
        }

        public bool IsExistPassword(string id,string password)
        {
            string query = "Select * From Student where Password = @password and MetricNo = @id";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@password", password);
            command.Parameters.AddWithValue("@id", id);

            connection.Open();
            reader = command.ExecuteReader();
            bool isExist = reader.HasRows;
            connection.Close();

            return isExist;
        }
        public string StudentName(string id)
        {
            string query = "Select * From Students Where MetricNo = @id";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@id", id);
            connection.Open();
            reader = command.ExecuteReader();
            string name = "";
            
            
            while (reader.Read())
            {
                
               name = reader["Name"] as string;
              
            }

            connection.Close();
            return name;
        }

        public string StudentLocation(string id)
        {
            string query = "Select * From Students Where MetricNo = @id";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@id", id);
            connection.Open();
            reader = command.ExecuteReader();
            string pickup = "";

            while (reader.Read())
            {

                pickup = reader["Location"] as string;
            }

            connection.Close();
            return pickup;
        }

        public string StudentEmail(string id)
        {
            string query = "Select * From Students Where MetricNo = @id";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@id", id);
            connection.Open();
            reader = command.ExecuteReader();
            string pickup = "";

            while (reader.Read())
            {

                pickup = reader["Email"] as string;
            }

            connection.Close();
            return pickup;
        }

        public string StudentGender(string id)
        {
            string query = "Select * From Students Where MetricNo = @id";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@id", id);
            connection.Open();
            reader = command.ExecuteReader();
            string name = "";


            while (reader.Read())
            {

                name = reader["Gender"] as string;

            }

            connection.Close();
            return name;
        }

        public List<string> GetEmail()
        {
            string query = "Select * From Students";
            command = new SqlCommand(query, connection);
            connection.Open();
            reader = command.ExecuteReader();
            List<string> mailList = new List<string>();

            while (reader.Read())
            {

               string pickup = reader["Email"] as string;
               mailList.Add(pickup);
            }

            connection.Close();
            return mailList;
        }
    }
}