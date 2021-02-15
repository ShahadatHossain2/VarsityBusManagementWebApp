using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using VarsityBusManagementWebApp.DAL.Gateway;

namespace VarsityBusManagementWebApp.BLL
{
    public class UnassignManager
    {
        public UnassignGateway UnassignGateway = new UnassignGateway();
        public string Unassign()
        {
            int rowAffect = UnassignGateway.Unassign();
            if (rowAffect > 0)
            {
                return "Successfully Deleted!!";
            }
            else
            {
                return "No data available or failed!!";
            }
        }

        public string Save(string notice)
        {
            int rowAffect = UnassignGateway.Save(notice);
            if (rowAffect > 0)
            {
                return "Notice Successfully Assigned";
            }
            else
            {
                return "failed!!";
            }
        }

        public string GetNotice()
        {
            return UnassignGateway.GetNotice();
        }
    }
}