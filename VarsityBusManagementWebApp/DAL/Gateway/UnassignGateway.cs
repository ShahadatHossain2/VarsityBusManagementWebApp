using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace VarsityBusManagementWebApp.DAL.Gateway
{
    public class UnassignGateway : BaseGateway
    {
        public int Unassign()
        {
            string query = "Delete From EmergencySchedule";
            command = new SqlCommand(query, connection);
            connection.Open();

            int rowAffect = command.ExecuteNonQuery();

            connection.Close();

            return rowAffect;

        }

        public int Save(string notice)
        {
            string query = "Update NoticeBoard Set Notice = @notice Where Id = 1";
            command = new SqlCommand(query,connection);
            command.Parameters.AddWithValue("@notice", notice);
            connection.Open();
            int rowAffect = command.ExecuteNonQuery();
            connection.Close();

            return rowAffect;
        }

        public string GetNotice()
        {
            string query = "Select * From NoticeBoard";
            command = new SqlCommand(query,connection);
            connection.Open();
            reader = command.ExecuteReader();
            string notice = "";
            while (reader.Read())
            {
                notice = reader["Notice"].ToString();
            }

            connection.Close();

            return notice;
        }
    }
}