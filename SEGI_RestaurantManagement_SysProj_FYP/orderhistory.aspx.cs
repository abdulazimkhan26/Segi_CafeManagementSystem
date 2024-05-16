using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SEGI_RestaurantManagement_SysProj_FYP
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        String cs = "Data Source=abdulazimkhan;Initial Catalog=restaurant_management;Integrated Security=True";
       
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void back_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

    }
}