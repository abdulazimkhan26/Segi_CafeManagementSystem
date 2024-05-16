using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Helpers;
using System.Drawing;

namespace SEGI_RestaurantManagement_SysProj_FYP
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String name = (String)(Session["name"]);
            String connection = "Data Source=abdulazimkhan;Initial Catalog=restaurant_management;Integrated Security=True";
            SqlConnection con = new SqlConnection(connection);
            SqlCommand checkusernameexist = new SqlCommand("SELECT cust_username FROM customer_credentials WHERE cust_name='" + name + "'", con);
            SqlCommand checkuseremailexist = new SqlCommand("SELECT cust_email FROM customer_credentials WHERE cust_name= '" + name + "'", con);
            SqlCommand checkusertelnoexist = new SqlCommand("SELECT cust_telNo FROM customer_credentials WHERE cust_name= '" + name + "'", con);
            SqlCommand checkuserpwexist = new SqlCommand("SELECT cust_pw FROM customer_credentials WHERE cust_name= '" + name + "'", con);
            con.Open();            
            String existornot_user = (String)checkusernameexist.ExecuteScalar();         
            String existornot_email = (String)checkuseremailexist.ExecuteScalar();        
            String existornot_no = (String)checkusertelnoexist.ExecuteScalar();        
            String existornotpw = (String)checkuserpwexist.ExecuteScalar();
            con.Close();

            displayname.Text = name;
            displayusername.Text = existornot_user;
            displayemail.Text = existornot_email;
            displaymobile.Text = existornot_no;
            displaypw.Text = existornotpw;
        }

        protected void editbtn_Click(object sender, EventArgs e)
        {
            editname.ReadOnly = false;
            editname.Visible = true;
            displayname.Visible = false;
            editbtn.Visible = false;
            updatename.Visible = true;
           
        }

        protected void nameupdatebtn_Click(object sender, EventArgs e)
        {
            if (editname.Text != "")
            {
                String name = (String)(Session["name"]);
                String connection = "Data Source=abdulazimkhan;Initial Catalog=restaurant_management;Integrated Security=True";
                SqlConnection con = new SqlConnection(connection);
                con.Open();
                String query = "UPDATE customer_credentials SET cust_name ='" + editname.Text + "' WHERE cust_name ='" + name + "' ";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                displayname.Text = editname.Text;
                editbtn.Visible = true;
                updatename.Visible = false;
                editname.Visible = false;
                displayname.Visible = true;

            }
            else
            {
                Response.Write("<script>alert('Name cannot be null!')</script>");
            }
        }

        protected void edit_email_btn_Click(object sender, EventArgs e)
        {
            edit_email.ReadOnly = false;
            edit_email.Visible = true;
            displayemail.Visible = false;
            edit_email_btn.Visible = false;
            emailupdatebtn.Visible = true;
        }

        protected void emailupdatebtn_Click(object sender, EventArgs e)
        {
            if (edit_email.Text != "")
            {
                String name = (String)(Session["name"]);
                String connection = "Data Source=abdulazimkhan;Initial Catalog=restaurant_management;Integrated Security=True";
                SqlConnection con = new SqlConnection(connection);
                con.Open();
                String query = "UPDATE customer_credentials SET cust_email ='" + edit_email.Text + "' WHERE cust_name ='" + name + "' ";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                displayemail.Text = edit_email.Text;
                edit_email.Visible = false;
                displayemail.Visible = true;
                edit_email_btn.Visible = true;
                emailupdatebtn.Visible = false;
            }
            else
            {
                Response.Write("<script>alert('Email cannot be null!')</script>");
            }
        }

        protected void edit_mobilebtn_Click(object sender, EventArgs e)
        {
            edit_mobile.ReadOnly = false;
            edit_mobile.Visible = true;
            displaymobile.Visible =false;
            edit_mobilebtn.Visible = false;
            mobileupdatebtn.Visible = true;
        }

        protected void mobileupdatebtn_Click(object sender, EventArgs e)
        {
            if (edit_mobile.Text != "")
            {
                String name = (String)(Session["name"]);
                String connection = "Data Source=abdulazimkhan;Initial Catalog=restaurant_management;Integrated Security=True";
                SqlConnection con = new SqlConnection(connection);
                con.Open();
                String query = "UPDATE customer_credentials SET cust_telNo ='" + edit_mobile.Text + "' WHERE cust_name ='" + name + "' ";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                displaymobile.Text = edit_mobile.Text;
                edit_mobile.Visible = false;
                displaymobile.Visible = true;
                edit_mobilebtn.Visible = true;
                mobileupdatebtn.Visible = false;
            }
            else
            {
                Response.Write("<script>alert('mobile cannot be null!')</script>");
            }
        }

        protected void edit_pwbtn_Click(object sender, EventArgs e)
        {
            edit_pw.ReadOnly = false;
            edit_pw.Visible = true;
            displaypw.Visible = false;
            edit_pwbtn.Visible = false;
            pwupdatebtn.Visible = true;
        }
        protected void pwupdatebtn_Click(object sender, EventArgs e)
        {
            if (edit_pw.Text != "")
            {
                String name = (String)(Session["name"]);
                String connection = "Data Source=abdulazimkhan;Initial Catalog=restaurant_management;Integrated Security=True";
                SqlConnection con = new SqlConnection(connection);
                con.Open();
                String query = "UPDATE customer_credentials SET cust_pw ='" + edit_pw.Text + "' WHERE cust_name ='" + name + "' ";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                displaypw.Text = edit_pw.Text;
                edit_pw.Visible = false;
                displaypw.Visible = true;
                edit_pwbtn.Visible = true;
                pwupdatebtn.Visible = false;
            }
            else
            {
                Response.Write("<script>alert('pw cannot be null!')</script>");
            }
        }

        protected void update_btn_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Login required if credentials are changed!')</script>");
            Response.Redirect("Login.aspx");           
        }

      
    }
}