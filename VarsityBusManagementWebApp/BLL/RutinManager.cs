using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using VarsityBusManagementWebApp.DAL.Gateway;
using VarsityBusManagementWebApp.DAL.Model;

namespace VarsityBusManagementWebApp.BLL
{
    public class RutinManager
    {
        public RutinGateway RutinGateway = new RutinGateway(); 
        public string Save(Rutin rutin)
        {
            if (!RutinGateway.IsExistRutin(rutin))
            {
                int rowAffect = RutinGateway.Save(rutin);

                if (rowAffect > 0)
                {
                    return "Successful!!";
                }
                else
                {
                    return "Ops! Failed!!";
                }
            }

            else
            {
                int rowAffect = RutinGateway.NeedRutinUpdate(rutin);

                if (rowAffect > 0)
                {
                    return "Updated Successfuly!!";
                }
                else
                {
                    return "Ops! Failed!!";
                }
            }
           
        }

        public String SaveRoutine(Rutin rutin)
        {
            if (!RutinGateway.IsExistDept(rutin.Department,rutin.Gender))
            {
                int rowAffect = RutinGateway.SaveRoutine(rutin);

                if (rowAffect > 0)
                {
                    return "Successful!!";
                }
                else
                {
                    return "Ops! Failed!!";
                }
            }

            else
            {
                int rowAffect = RutinGateway.RoutineUpdate(rutin);

                if (rowAffect > 0)
                {
                    return "Class Routine Of Dept. "+rutin.Department+" "+rutin.Gender+" Has been Successfully updated!!";
                }
                else
                {
                    return "Ops! Failed!!";
                }
            }
           
        }

        public String Emergency(Rutin rutin)
        {
            int rowAffect = RutinGateway.Emergency(rutin);

            if (rowAffect > 0)
            {
                return "Successful!!";
            }
            else
            {
                return "Ops! Failed!!";
            }
        }
    }
}