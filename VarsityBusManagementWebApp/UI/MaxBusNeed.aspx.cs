using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VarsityBusManagementWebApp.BLL;

namespace VarsityBusManagementWebApp.UI
{
    public partial class MaxBusNeed : System.Web.UI.Page
    {
        public RequermentManager RequermentManager = new RequermentManager();
        public StudentManager StudentManager = new StudentManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                dayDropDownList.DataSource = StudentManager.GetDay();
                dayDropDownList.DataBind();
                dayDropDownList.Items.Insert(0, "--Select--");
             
            }
        }

        protected void dayDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (dayDropDownList.SelectedIndex != 0)
            {
                string day = dayDropDownList.Text;
                busNeedGridView.DataSource = RequermentManager.GetMaxNeedByDay(day);
                busNeedGridView.DataBind();

                totalGridView.DataSource = RequermentManager.TotalBusNeed(day);
                totalGridView.DataBind();

                outputLabel.Text ="Total Bus Need For "+dayDropDownList.Text;
            }
           
        }
    }
}