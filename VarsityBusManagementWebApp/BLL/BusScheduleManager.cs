using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using VarsityBusManagementWebApp.DAL.Gateway;
using VarsityBusManagementWebApp.DAL.Model;

namespace VarsityBusManagementWebApp.BLL
{
    public class BusScheduleManager
    {
        private BusScheduleGateway busScheduleGateway = new BusScheduleGateway();

        public string Save(BusSchedule bus)
        {
            if (!busScheduleGateway.IsExistSchedule(bus))
            {
                int rowAffect = busScheduleGateway.Save(bus);
                if (rowAffect > 0)
                {
                    return "Successfull!!";
                }
                else
                {
                    return "Failed!!";
                }
            }
            else
            {
                return "Alerady Provided";
            }
        }

        public List<string> GetWayList()
        {
            return busScheduleGateway.GetWayList();
        }

        public List<string> GetTypeList()
        {
            return busScheduleGateway.GetTypeList();
        }
        public List<string> GetGenderList()
        {
            return busScheduleGateway.GetGenderList();
        }

        public List<string> TimeList(BusSchedule busSchedule)
        {
            return busScheduleGateway.TimeList(busSchedule);
        }

        public string UpdateBusSchedule(BusSchedule bus, string time)
        {
            int rowAffect = busScheduleGateway.UpdateBusSchedule(bus, time);
            if (rowAffect > 0)
            {
                return "Schedule Updated!";
            }

            else
            {
                return "Ops! failed";
            }
        }

        public string SaveDept(string dept)
        {
     
            if (!busScheduleGateway.IsExistDept(dept))
            {
                int rowAffect = busScheduleGateway.SaveDept(dept);
                if (rowAffect > 0)
                {
                    return "Successfully Added";
                }

                else
                {
                    return "Ops! failed";
                }
            }

            else
            {
                return "Already Exists!!";
            }
        }

        public string SavePickupPoint(string pickUp)
        {
            
            if (!busScheduleGateway.IsExistPickupPoint(pickUp))
            {
                int rowAffect = busScheduleGateway.SavePickupPoint(pickUp);
                if (rowAffect > 0)
                {
                    return "Successfully Added";
                }

                else
                {
                    return "Ops! failed";
                }
            }

            else
            {
                return "Already Exists!!";
            }
        }

        public List<Rutin> GetEmergencyList()
        {
            return busScheduleGateway.GetEmergencyList();
        }
    }
}