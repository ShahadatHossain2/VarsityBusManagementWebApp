using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace VarsityBusManagementWebApp.DAL.Gateway
{
    public class StudentInfoUpdateGateway : BaseGateway
    {
        public int LocationUpodate(string id, int location)
        {
            string query = "UPDATE Student SET LocationId = @location WHERE MetricNo = @id";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@location", location);
            command.Parameters.AddWithValue("@id", id);


            connection.Open();
            int rowAffect = command.ExecuteNonQuery();
            connection.Close();

            return rowAffect;
        }

        public int feedbacklocationupdate(string id, string location)
        {
            string query = "update Feedback set Location = @location where StudentId = @id";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@location", location);
            command.Parameters.AddWithValue("@id", id);



            connection.Open();
            int rowaffect = command.ExecuteNonQuery();
            connection.Close();

            return rowaffect;
        }

        public int EmailUpodate(string id, string email)
        {
            string query = "UPDATE Student SET Email = @email WHERE MetricNo = @id";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@email", email);
            command.Parameters.AddWithValue("@id", id);


            connection.Open();
            int rowAffect = command.ExecuteNonQuery();
            connection.Close();

            return rowAffect;
        }
    }
}