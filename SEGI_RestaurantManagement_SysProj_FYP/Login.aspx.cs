using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SEGI_RestaurantManagement_SysProj_FYP
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_btn_Click(object sender, EventArgs e)
        {
            String connection = "Data Source=abdulazimkhan;Initial Catalog=restaurant_management;Integrated Security=True";
            SqlConnection con = new SqlConnection(connection);
            SqlCommand checkusernameexist = new SqlCommand("SELECT cust_username FROM customer_credentials WHERE cust_username= '" + username_in.Text + "'",con);
            SqlCommand checkuserpwexist = new SqlCommand("SELECT cust_pw FROM customer_credentials WHERE cust_username= '" + username_in.Text + "'", con);
            SqlCommand checkname = new SqlCommand("SELECT cust_name FROM customer_credentials WHERE cust_username= '" + username_in.Text + "'", con);
            con.Open();
            String existornot_username = (String)checkusernameexist.ExecuteScalar();
            String existornot_pw = (String)checkuserpwexist.ExecuteScalar();
            String name = (String)checkname.ExecuteScalar();

            if (Page.IsValid == true && existornot_username == username_in.Text && existornot_pw == pw_in.Text)
            {
                Session["name"] = name;
                Response.Redirect("Home.aspx");
                Response.Write("<script>alert('Login Successful!')</script>");

            }
            else 
            {
                Response.Write("<script>alert('Username/Password is incorrect!')</script>");
            }
        }
        protected void signup_btn_Click(object sender, EventArgs e)
        {
                Response.Redirect("Signup.aspx");

        }
    }
}