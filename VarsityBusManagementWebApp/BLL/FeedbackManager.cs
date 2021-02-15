using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using VarsityBusManagementWebApp.DAL.Gateway;
using VarsityBusManagementWebApp.DAL.Model;

namespace VarsityBusManagementWebApp.BLL
{
    public class FeedbackManager
    {
        private FeedbackGateway feedbackGateway = new FeedbackGateway();
      

        public string Save(Feedback aFeedback)
        {
            string msg = feedbackGateway.DateCheck(aFeedback.FromDate, aFeedback.ToDate);

            if (msg != "Valid")
            {
                return msg;
            }
            else
            {
                if (feedbackGateway.IsExist(aFeedback.StudentId))
                {
                    int rowAffect = feedbackGateway.UpdateById(aFeedback.StudentId, aFeedback.Status, aFeedback.FromDate, aFeedback.ToDate);
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
                    int rowAffect = feedbackGateway.Save(aFeedback);
                    if (rowAffect > 0)
                    {
                        return "Successful!!";
                    }
                    else
                    {
                        return "Failed!!";
                    }
                }
            }

            
        }
        public List<string> GetStatus()
        {
          

            return feedbackGateway.GetStatus();
        }

    }
}