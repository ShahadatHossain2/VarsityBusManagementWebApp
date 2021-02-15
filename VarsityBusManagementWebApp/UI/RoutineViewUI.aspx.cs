using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VarsityBusManagementWebApp.BLL;

namespace VarsityBusManagementWebApp.UI
{
    public partial class RoutineViewUI : System.Web.UI.Page
    {
        private RequermentManager requermentManager = new RequermentManager();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                routineGridView.DataSource = requermentManager.GetRoutine();
                routineGridView.DataBind();
            }
        }
    }
}