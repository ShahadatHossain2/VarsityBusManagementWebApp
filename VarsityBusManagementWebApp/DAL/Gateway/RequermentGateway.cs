using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using VarsityBusManagementWebApp.DAL.Model;

namespace VarsityBusManagementWebApp.DAL.Gateway
{
    public class RequermentGateway : BaseGateway
    {

        public List<Requerment> GetRequermentList(string date)
        {
            string query = "Select Location,SUM(StudentNumber) AS StudentNumber,Gender From Statistic Where (@date Between FromDate AND ToDate) Group By Location,Gender";

            command = new SqlCommand(query,connection);
            command.Parameters.AddWithValue("@date", date);
            connection.Open();
            reader = command.ExecuteReader();

            List<Requerment> requermentList = new List<Requerment>();

            while (reader.Read())
            {
                Requerment requerment = new Requerment();
                requerment.Location = reader["Location"].ToString();
                requerment.StudentNumber = Convert.ToInt32(reader["StudentNumber"]);
                requerment.Gender = reader["Gender"].ToString();


                requermentList.Add(requerment);
            }
            connection.Close();

            return requermentList;
        }

        public List<BusNeedView> GetMaxNeedByDay(string day)
        {
            string query = "Select *From BusNeed WHERE Day = @day";

            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@day", day);
            connection.Open();
            reader = command.ExecuteReader();

            List<BusNeedView> busNeedList = new List<BusNeedView>();

            while (reader.Read())
            {
                BusNeedView busNeed = new BusNeedView();
                busNeed.Department = reader["Department"].ToString();
                busNeed.Gender = reader["Gender"].ToString();
                busNeed.Total = Convert.ToInt32(reader["Total"]);
                double bus = busNeed.Total/50.00;
                int bus1 = busNeed.Total/50;
                double test = busNeed.Total - (bus1*50.00);
                if (test>=0.5)
                {
                    busNeed.BusNeed = Convert.ToInt32(Math.Ceiling(bus));  
                }
                else
                {
                    busNeed.BusNeed = Convert.ToInt32(Math.Floor(bus)); 
                }
                busNeedList.Add(busNeed);
            }
            connection.Close();

            return busNeedList;
        }
        public List<BusNeedView> TotalBusNeed(string day)
        {
            string query = "Select *From BusNeed WHERE Day = @day";

            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@day", day);
            connection.Open();
            reader = command.ExecuteReader();

            List<BusNeedView> busNeedList = new List<BusNeedView>();
            int maleBus = 0;
            int femaleBus = 0;

            while (reader.Read())
            {
                BusNeedView busNeed = new BusNeedView();
                busNeed.Gender = reader["Gender"].ToString();
                busNeed.Total = Convert.ToInt32(reader["Total"]);
                int need = busNeed.Total;
                if (busNeed.Gender == "Male")
                {
                   maleBus += need;
                }

                else
                {
                    femaleBus += need;
                }
            }

            BusNeedView busNeed1 = new BusNeedView();

            double need1 = Math.Ceiling(maleBus / 50.0);
            double need2 = Math.Ceiling(femaleBus / 50.0);

            busNeed1.Need1 = need1;
            busNeed1.Need2 = need2;

            busNeedList.Add(busNeed1);


            connection.Close();

            return busNeedList;
        }
        public List<Rutin> GetRoutine()
        {
            string query = "SELECT Department,Gender,ClassRoutine From ClassRoutin Group by Department,ClassRoutine,Gender";

            command = new SqlCommand(query, connection);
            connection.Open();
            reader = command.ExecuteReader();

            List<Rutin> rutinList = new List<Rutin>();

            while (reader.Read())
            {
                Rutin aRutin = new Rutin();
                aRutin.Department = reader["Department"].ToString();
                aRutin.Gender = reader["Gender"].ToString();
                aRutin.ClassRoutine = reader["ClassRoutine"].ToString();


                rutinList.Add(aRutin);
            }
            connection.Close();

            return rutinList;
        }
    }
}