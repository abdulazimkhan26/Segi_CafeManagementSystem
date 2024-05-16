using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SEGI_RestaurantManagement_SysProj_FYP
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String name = (String)(Session["name"]);
            name_wel.Text = name.ToUpper();
      
        }
    }
}