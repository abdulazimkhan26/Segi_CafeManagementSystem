using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace SEGI_RestaurantManagement_SysProj_FYP
{
    public partial class WebForm3 : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        // this block of code depicts actions performed and its validation 

        protected void signup_Click(object sender, EventArgs e)
        {
            String connection = "Data Source=abdulazimkhan;Initial Catalog=restaurant_management;Integrated Security=True";
            SqlConnection con = new SqlConnection(connection);
            SqlCommand checkusernameexist = new SqlCommand("SELECT cust_username FROM customer_credentials WHERE cust_username= '" + username.Text + "'", con);
            SqlCommand checkuseremailexist = new SqlCommand("SELECT cust_email FROM customer_credentials WHERE cust_email= '" + email.Text + "'", con);
            SqlCommand checkusertelnoexist = new SqlCommand("SELECT cust_telNo FROM customer_credentials WHERE cust_telNo= '" + telno.Text + "'", con);
            con.Open();
            String existornot_user = (String)checkusernameexist.ExecuteScalar();
            String existornot_email = (String)checkuseremailexist.ExecuteScalar();
            String existornot_no = (String)checkusertelnoexist.ExecuteScalar();

            if (existornot_user == username.Text)
            {
                Response.Write("<script>alert('Username aleady exists!')</script>");
            }

            else if (existornot_email == email.Text)
            {
                Response.Write("<script>alert('Email aleady exists!')</script>");
            }

            else if (existornot_no == telno.Text || telno.Text.Length<10)
            {
                Response.Write("<script>alert('Phone number aleady exists!')</script>");
            }

            else if (Page.IsValid == true)
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("INSERT INTO customer_credentials (cust_name,cust_username, cust_email, cust_telNo, cust_pw) VALUES('" + name.Text + "','" + username.Text + "', '" + email.Text + "', '" + telno.Text + "', '" + confirmpw.Text + "')", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("Login.aspx");
                }
                
                catch(Exception ex)
                {

                }

                Response.Write("<script>alert('Phone number aleady exists!')</script>");
            }
            else { }

        }
    }

}