using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VarsityBusManagementWebApp.BLL;

namespace VarsityBusManagementWebApp.UI
{
    public partial class CheckStatusUI : System.Web.UI.Page
    {
        private StudentManager studentManager = new StudentManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = StudentLogin.Class1.storevalue;
            requermentListGridView.DataSource = studentManager.CheckStatus(id);
            requermentListGridView.DataBind();
        }
    }
}