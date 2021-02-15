using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using VarsityBusManagementWebApp.DAL.Gateway;
using VarsityBusManagementWebApp.DAL.Model;

namespace VarsityBusManagementWebApp.BLL
{
    public class ScheduleManager
    {
        public ScheduleGateway ScheduleGateway = new ScheduleGateway();

        public List<Schedule> GetCityToVarsitySchedule()
        {
            return ScheduleGateway.GetCityToVarsitySchedule();
        }

        public List<Schedule> GetVarsityToCitySchedule()
        {
            return ScheduleGateway.GetVarsityToCitySchedule();
        }

        public List<Schedule> GetCityToVarsityScheduleExam()
        {
            return ScheduleGateway.GetCityToVarsityScheduleExam();
        }

        public List<Schedule> GetVarsityToCityScheduleExam()
        {
            return ScheduleGateway.GetVarsityToCityScheduleExam();
        }

        public List<Schedule> GetCityToVarsityScheduleFemale()
        {
            return ScheduleGateway.GetCityToVarsityScheduleFemale();
        }

        public List<Schedule> GetVarsityToCityScheduleFemale()
        {
            return ScheduleGateway.GetVarsityToCityScheduleFemale();
        }

        public List<Schedule> GetCityToVarsityScheduleMasters()
        {
            return ScheduleGateway.GetCityToVarsityScheduleMasters();
        }

        public List<Schedule> GetVarsityToCityScheduleMasters()
        {
            return ScheduleGateway.GetVarsityToCityScheduleMasters();
        }
    }
}