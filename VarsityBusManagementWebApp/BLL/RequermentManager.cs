using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using VarsityBusManagementWebApp.DAL.Gateway;
using VarsityBusManagementWebApp.DAL.Model;

namespace VarsityBusManagementWebApp.BLL
{
    public class RequermentManager
    {
        public RequermentGateway RequermentGateway = new RequermentGateway();

        public List<Requerment> GetRequermentList(string date)
        {
            return RequermentGateway.GetRequermentList(date);
        }

        public List<BusNeedView> GetMaxNeedByDay(string day)
        {
            return RequermentGateway.GetMaxNeedByDay(day);
        }

        public List<Rutin> GetRoutine()
        {
            return RequermentGateway.GetRoutine();
        }

        public List<BusNeedView> TotalBusNeed(string day)
        {
            return RequermentGateway.TotalBusNeed(day);
        }

    }
}