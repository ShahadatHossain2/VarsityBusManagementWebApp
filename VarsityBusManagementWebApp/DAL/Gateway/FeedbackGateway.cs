using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using VarsityBusManagementWebApp.DAL.Model;

namespace VarsityBusManagementWebApp.DAL.Gateway
{
    public class FeedbackGateway : BaseGateway
    {
        public int Save(Feedback afeedback)
        {
            string query = "INSERT INTO Feedback(Location,StudentId,Status,FromDate,ToDate,Gender) Values(@loaction,@stuentId,@status,@fromDate,@toDate,@gender)";
            command = new SqlCommand(query,connection);
            command.Parameters.AddWithValue("@loaction", afeedback.Location);
            command.Parameters.AddWithValue("@stuentId", afeedback.StudentId);
            command.Parameters.AddWithValue("@status", afeedback.Status);
            command.Parameters.AddWithValue("@fromDate", afeedback.FromDate);
            command.Parameters.AddWithValue("@toDate", afeedback.ToDate);
            command.Parameters.AddWithValue("@gender", afeedback.Gender);



            connection.Open();
            int rowAffect = command.ExecuteNonQuery();
            connection.Close();

            return rowAffect;

        }

        public int UpdateById(string id, string status, string fromDate, string toDate)
        {
            string query = "UPDATE Feedback SET Status = @status, FromDate = @FromDate , ToDate = @toDate  WHERE StudentId = @id";
            command = new SqlCommand(query,connection);
            command.Parameters.AddWithValue("@status", status);
            command.Parameters.AddWithValue("@id", id);
            command.Parameters.AddWithValue("@FromDate", fromDate);
            command.Parameters.AddWithValue("@toDate", toDate);



            connection.Open();
            int rowAffect = command.ExecuteNonQuery();
            connection.Close();

            return rowAffect;
        }
        public List<string> GetStatus()
        {
            List<string> statusList = new List<string>();
            statusList.Add("No");
            statusList.Add("Yes");

            return statusList;
        }

        public bool IsExist(string id)
        {
            string query = "Select * From Feedback Where StudentId = @id";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@id", id);
            connection.Open();
            reader = command.ExecuteReader();
            bool isExist = reader.HasRows;
            connection.Close();

            return isExist;
        }

        public string DateCheck(string fromDate, string toDate)
        {
            for (int i = 0; i < toDate.Length; i++)
            {
                if (fromDate[i] > toDate[i])
                {
                    return "To Date must be greater than or equal to From Date";
                }
                if (fromDate[i] < toDate[i])
                {
                    break;
                }
            }

            return "Valid";
        }
    }
}