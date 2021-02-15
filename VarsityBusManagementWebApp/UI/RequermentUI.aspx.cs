using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VarsityBusManagementWebApp.BLL;

namespace VarsityBusManagementWebApp.UI
{
    public partial class RequermentUI : System.Web.UI.Page
    {
        private RequermentManager requermentManager = new RequermentManager();
        private UnassignManager unassignManager = new UnassignManager();
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        protected void unassignButton_Click(object sender, EventArgs e)
        {
            //string msg = unassignManager.Unassign();
            Outputlabel.Text = "Showing The Requirement Lis Of Date: "+dateTextBox.Text;
            string date = dateTextBox.Text;
            requermentListGridView.DataSource = requermentManager.GetRequermentList(date);
            requermentListGridView.DataBind();
        }
    }
}