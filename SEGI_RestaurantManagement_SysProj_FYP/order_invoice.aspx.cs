using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace SEGI_RestaurantManagement_SysProj_FYP
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        String cs = "Data Source=abdulazimkhan;Initial Catalog=restaurant_management;Integrated Security=True";
        decimal total = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            GridView1.FooterRow.Cells[3].Text = "Total";
            foreach(GridViewRow row in GridView1.Rows)
            {
                total = total+ Convert.ToDecimal((row.Cells[4].Text));
            }
            GridView1.FooterRow.Cells[4].Text = "RM " + total.ToString(); ;
        }

        protected void back_btn_Click(object sender, EventArgs e)
        {
            deletedata();
        }

        private void deletedata()
        {
            SqlConnection con = new SqlConnection(cs);
            if (GridView1.Rows.Count > 0)
            {
                con.Open();
                String query = "DELETE FROM Orders__temp";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("menu.aspx");
            }
        }

        protected void print_btn_Click(object sender, EventArgs e)
        {
        }
    }
}