using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Web.Helpers;
using System.Collections;
using System.Web.WebPages;

namespace SEGI_RestaurantManagement_SysProj_FYP
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        
        String cs = "Data Source=abdulazimkhan;Initial Catalog=restaurant_management;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                deletedata();

            }
            String name = (String)(Session["name"]);
        }

        private void bindingdata()
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(cs);
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM cart_tempadd", con);
            da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
        }

        private void deletedata()
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(cs);
            SqlDataAdapter da = new SqlDataAdapter("DELETE FROM cart_tempadd", con);
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        private void deleterowdata(int ID)
        {
            SqlConnection con = new SqlConnection(cs);
            String query = "DELETE FROM cart_tempadd WHERE id=" + ID + "";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.ExecuteNonQuery();
        }

        private void updaterowdata(String quantity, int ID)
        {
            int quan = int.Parse(quantity);
            SqlConnection con = new SqlConnection(cs);
            String query = "UPDATE cart_tempadd SET item_quantity=" + quan + " WHERE id=" + ID + "";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.ExecuteNonQuery();
        }


        protected void additem_nasilemak_Click(object sender, EventArgs e)
        {
            if (quantity_nasilemak.Text == "" || int.Parse(quantity_nasilemak.Text) <= 0)
            {
                lbl_alert_nsilemak.Text = "Invalid Quantity";
            }

            else
            {
                lbl_alert_nsilemak.Text = " ";
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                String query = "INSERT INTO cart_tempadd (item_name, item_quantity, item_prize) VALUES('" + nasilemak_lbl.Text + "','" + quantity_nasilemak.Text + "', '" + nasilemak_rm.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                bindingdata();
            }
        }

        protected void additem_meegoreng_Click(object sender, EventArgs e)
        {

            if (quantity_meegoreng.Text == "" || int.Parse(quantity_meegoreng.Text) <= 0)
            {
                lbl_alert_meegoreng.Text = "Invalid Quantity";
            }

            else
            {
                lbl_alert_meegoreng.Text = " ";
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                String query = "INSERT INTO cart_tempadd (item_name, item_quantity, item_prize) VALUES('" + meegoreng_lbl.Text + "','" + quantity_meegoreng.Text + "', '" + meegoreng_rm.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                bindingdata();
            }
        }

        protected void additem_maggigoreng_Click(object sender, EventArgs e)
        {
            if (quantity_maggigoreng.Text == "" || int.Parse(quantity_maggigoreng.Text) <= 0)
            {
                lbl_alert_maggigoreng.Text = "Invalid Quantity";
            }

            else
            {
                lbl_alert_maggigoreng.Text = " ";
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                String query = "INSERT INTO cart_tempadd (item_name, item_quantity, item_prize) VALUES('" + maggigoreng_lbl.Text + "','" + quantity_maggigoreng.Text + "', '" + maggigoreng_rm.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                bindingdata();
            }
        }

        protected void additem_maggipattaya_Click(object sender, EventArgs e)
        {
            if (quantity_maggipattaya.Text == "" || int.Parse(quantity_maggipattaya.Text) <= 0)
            {
                lbl_alert_maggipattaya.Text = "Invalid Quantity";
            }

            else
            {
                lbl_alert_maggipattaya.Text = " ";
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                String query = "INSERT INTO cart_tempadd (item_name, item_quantity, item_prize) VALUES('" + maggi_pattaya.Text + "','" + quantity_maggipattaya.Text + "', '" + maggipattaya_rm.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                bindingdata();
            }
        }


        protected void additem_nasigrg_Click(object sender, EventArgs e)
        {
            if (quantity_nasigrg.Text == "" || int.Parse(quantity_nasigrg.Text) <= 0)
            {
                lbl_alert_nasigrg.Text = "Invalid Quantity";
            }

            else
            {
                lbl_alert_nasigrg.Text = " ";
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                String query = "INSERT INTO cart_tempadd (item_name, item_quantity, item_prize) VALUES('" + nasigrng_kampung.Text + "','" + quantity_nasigrg.Text + "', '" + nasigrg_rm.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                bindingdata();
            }
        }

        protected void additem_beehoon_Click(object sender, EventArgs e)
        {
            if (quantity_beehoon.Text == "" || int.Parse(quantity_beehoon.Text) <= 0)
            {
                lbl_alert_beehoon.Text = "Invalid Quantity";
            }

            else
            {
                lbl_alert_beehoon.Text = " ";
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                String query = "INSERT INTO cart_tempadd (item_name, item_quantity, item_prize) VALUES('" + bee_hoon.Text + "','" + quantity_beehoon.Text + "', '" + beehoon_rm.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                bindingdata();
            }
        }

        protected void additem_queyteow_Click(object sender, EventArgs e)
        {
            if (quantity_queyteow.Text == "" || int.Parse(quantity_queyteow.Text) <= 0)
            {
                lbl_alert_queyteow.Text = "Invalid Quantity";
            }

            else
            {
                lbl_alert_queyteow.Text = " ";
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                String query = "INSERT INTO cart_tempadd (item_name, item_quantity, item_prize) VALUES('" + quey_teow.Text + "','" + quantity_queyteow.Text + "', '" + queyteow_rm.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                bindingdata();
            }
        }

        protected void additem_chickenrice_Click(object sender, EventArgs e)
        {
            if (quantity_chickenrice.Text == "" || int.Parse(quantity_chickenrice.Text) <= 0)
            {
                lbl_alert_chickenrice.Text = "Invalid Quantity";
            }

            else
            {
                lbl_alert_chickenrice.Text = " ";
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                String query = "INSERT INTO cart_tempadd (item_name, item_quantity, item_prize) VALUES('" + chicken_rice.Text + "','" + quantity_chickenrice.Text + "', '" + chickenrice_rm.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                bindingdata();
            }
        }



        protected void additem_rotibanjir_Click(object sender, EventArgs e)
        {
            if (quantity_rotibanjir.Text == "" || int.Parse(quantity_rotibanjir.Text) <= 0)
            {
                lbl_alert_rotibanjir.Text = "Invalid Quantity";
            }

            else
            {
                lbl_alert_rotibanjir.Text = " ";
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                String query = "INSERT INTO cart_tempadd (item_name, item_quantity, item_prize) VALUES('" + rotibanjir.Text + "','" + quantity_rotibanjir.Text + "', '" + rotibanjir_rm.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                bindingdata();
            }
        }

        protected void additem_rotiegg_Click(object sender, EventArgs e)
        {
            if (quantity_rotiegg.Text == "" || int.Parse(quantity_rotiegg.Text) <= 0)
            {
                lbl_alert_rotiegg.Text = "Invalid Quantity";
            }

            else
            {
                lbl_alert_rotiegg.Text = " ";
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                String query = "INSERT INTO cart_tempadd (item_name, item_quantity, item_prize) VALUES('" + roti_egg.Text + "','" + quantity_rotiegg.Text + "', '" + rotiegg_rm.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                bindingdata();
            }
        }

        protected void additem_roti0_Click(object sender, EventArgs e)
        {
            if (quantity_roti0.Text == "" || int.Parse(quantity_roti0.Text) <= 0)
            {
                lbl_alert_roti0.Text = "Invalid Quantity";
            }

            else
            {
                lbl_alert_roti0.Text = " ";
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                String query = "INSERT INTO cart_tempadd (item_name, item_quantity, item_prize) VALUES('" + roti0.Text + "','" + quantity_roti0.Text + "', '" + roti0_rm.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                bindingdata();
            }
        }

        protected void additem_thosai_Click(object sender, EventArgs e)
        {
            if (quantity_thosai.Text == "" || int.Parse(quantity_thosai.Text) <= 0)
            {
                lbl_alert_thosai.Text = "Invalid Quantity";
            }

            else
            {
                lbl_alert_thosai.Text = " ";
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                String query = "INSERT INTO cart_tempadd (item_name, item_quantity, item_prize) VALUES('" + thosai.Text + "','" + quantity_thosai.Text + "', '" + thosia_rm.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                bindingdata();
            }
        }



        protected void additem_poori_Click(object sender, EventArgs e)
        {
            if (quantity_poori.Text == "" || int.Parse(quantity_poori.Text) <= 0)
            {
                lbl_alert_poori.Text = "Invalid Quantity";
            }

            else
            {
                lbl_alert_poori.Text = " ";
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                String query = "INSERT INTO cart_tempadd (item_name, item_quantity, item_prize) VALUES('" + poori.Text + "','" + quantity_poori.Text + "', '" + poori_rm.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                bindingdata();
            }
        }

        protected void additem_idli_Click(object sender, EventArgs e)
        {
            if (quantity_idli.Text == "" || int.Parse(quantity_idli.Text) <= 0)
            {
                lblalert_idli.Text = "Invalid Quantity";
            }

            else
            {
                lblalert_idli.Text = " ";
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                String query = "INSERT INTO cart_tempadd (item_name, item_quantity, item_prize) VALUES('" + idli.Text + "','" + quantity_idli.Text + "', '" + idli_rm.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                bindingdata();
            }
        }

        protected void additem_chappati_Click(object sender, EventArgs e)
        {
            if (quantity_chappati.Text == "" || int.Parse(quantity_chappati.Text) <= 0)
            {
                lblalert_chappati.Text = "Invalid Quantity";
            }

            else
            {
                lblalert_chappati.Text = " ";
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                String query = "INSERT INTO cart_tempadd (item_name, item_quantity, item_prize) VALUES('" + chappati.Text + "','" + quantity_chappati.Text + "', '" + chappati_rm.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                bindingdata();
            }
        }

        protected void additem_chickburger_Click(object sender, EventArgs e)
        {
            if (quantity_chickburger.Text == "" || int.Parse(quantity_chickburger.Text) <= 0)
            {
                lbl_alert_chickburger.Text = "Invalid Quantity";
            }

            else
            {
                lbl_alert_chickburger.Text = " ";
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                String query = "INSERT INTO cart_tempadd (item_name, item_quantity, item_prize) VALUES('" + chick_burger.Text + "','" + quantity_chickburger.Text + "', '" + chickburger_rm.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                bindingdata();
            }
        }



        protected void additem_chickenburgerx2_Click(object sender, EventArgs e)
        {
            if (quantity_chickenburgerx2.Text == "" || int.Parse(quantity_chickenburgerx2.Text) <= 0)
            {
                lbl_alert_chickenburgerx2.Text = "Invalid Quantity";
            }

            else
            {
                lbl_alert_chickenburgerx2.Text = " ";
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                String query = "INSERT INTO cart_tempadd (item_name, item_quantity, item_prize) VALUES('" + chickburgerx2.Text + "','" + quantity_chickenburgerx2.Text + "', '" + chickburgerx2_rm.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                bindingdata();
            }
        }

        protected void additem_chickenwrap_Click(object sender, EventArgs e)
        {
            if (quantity_chickenwrap.Text == "" || int.Parse(quantity_chickenwrap.Text) <= 0)
            {
                lbl_alert_chickenwrap.Text = "Invalid Quantity";
            }

            else
            {
                lbl_alert_chickenwrap.Text = " ";
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                String query = "INSERT INTO cart_tempadd (item_name, item_quantity, item_prize) VALUES('" + chickenwrap.Text + "','" + quantity_chickenwrap.Text + "', '" + chickenwrap_rm.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                bindingdata();
            }
        }

        protected void additem_frenchfries_Click(object sender, EventArgs e)
        {
            if (quantity_frenchfries.Text == "" || int.Parse(quantity_frenchfries.Text) <= 0)
            {
                lbl_alert_frenchfries.Text = "Invalid Quantity";
            }

            else
            {
                lbl_alert_frenchfries.Text = " ";
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                String query = "INSERT INTO cart_tempadd (item_name, item_quantity, item_prize) VALUES('" + frenchfries.Text + "','" + quantity_frenchfries.Text + "', '" + frenchfries_rm.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                bindingdata();
            }
        }

        protected void additem_onionrings_Click(object sender, EventArgs e)
        {           

            if (quantity_onionrings.Text == "" || int.Parse(quantity_onionrings.Text) <= 0)
            {
                lbl_alert_onionrings.Text = "Invalid Quantity";
            }

            else
            {
                lbl_alert_onionrings.Text = " ";
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                String query = "INSERT INTO cart_tempadd (item_name, item_quantity, item_prize) VALUES('" + onionrings.Text + "','" + quantity_onionrings.Text + "', '" + onionrings_rm.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                bindingdata();
            }
        }


        protected void additem_nuggets_Click(object sender, EventArgs e)
        {
            if (quantity_nuggets.Text == "" || int.Parse(quantity_nuggets.Text) <= 0)
            {
                lbl_alert_nuggets.Text = "Invalid Quantity";
            }

            else
            {
                lbl_alert_nuggets.Text = " ";
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                String query = "INSERT INTO cart_tempadd (item_name, item_quantity, item_prize) VALUES('" + nuggets.Text + "','" + quantity_nuggets.Text + "', '" + nuggets_rm.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                bindingdata();
            }
        }

        protected void additem_tehoice_Click(object sender, EventArgs e)
        {

            using (SqlConnection con = new SqlConnection(cs))
            using (SqlCommand cmd = con.CreateCommand())
            {
                cmd.CommandText = "INSERT INTO cart_tempadd (item_name, item_quantity, item_prize) VALUES(@name,@quantity,@prize)";
                cmd.Parameters.Add("@name", tehoice.Text);
                cmd.Parameters.Add("@quantity", quantity_tehoice.Text);
                cmd.Parameters.Add("@prize", tehoice_rm.Text);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                bindingdata();

            }
        }

        protected void additem_teholimau_Click(object sender, EventArgs e)
        {
            if (quantity_teholimau.Text == "" || int.Parse(quantity_teholimau.Text) <= 0)
            {
                lbl_alert_teholimau.Text = "Invalid Quantity";
            }
            else
            {
                lbl_alert_teholimau.Text = "";
                using (SqlConnection con = new SqlConnection(cs))
                using (SqlCommand cmd = con.CreateCommand())
                {
                    cmd.CommandText = "INSERT INTO cart_tempadd (item_name, item_quantity, item_prize) VALUES(@name,@quantity,@prize)";
                    cmd.Parameters.Add("@name", teholimau.Text);
                    cmd.Parameters.Add("@quantity", quantity_teholimau.Text);
                    cmd.Parameters.Add("@prize", teholimau_rm.Text);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    bindingdata();
                }
            }
        }

        protected void additem_teho_Click(object sender, EventArgs e)
        {
            if (quantity_teho.Text == "" || int.Parse(quantity_teho.Text) <= 0)
            {
                lbl_alert_teho.Text = "Invalid Quantity";
            }
            else
            {
                lbl_alert_teho.Text = " ";
                using (SqlConnection con = new SqlConnection(cs))
                using (SqlCommand cmd = con.CreateCommand())
                {
                    cmd.CommandText = "INSERT INTO cart_tempadd (item_name, item_quantity, item_prize) VALUES(@name,@quantity,@prize)";
                    cmd.Parameters.Add("@name", teho.Text);
                    cmd.Parameters.Add("@quantity", quantity_teho.Text);
                    cmd.Parameters.Add("@prize", teho_rm.Text);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    bindingdata();
                }
            }
        }

        protected void additem_tehtarik_Click(object sender, EventArgs e)
        {
            if (quantity_tehtarik.Text == "" || int.Parse(quantity_tehtarik.Text) <= 0)
            {
                lbl_alert_tehtarik.Text = "Invalid Quantity";
            }

            else
            {
                lbl_alert_tehtarik.Text = " ";
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                String query = "INSERT INTO cart_tempadd (item_name, item_quantity, item_prize) VALUES('" + tehtarik.Text + "','" + quantity_tehtarik.Text + "', '" + tehtarik_rm.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                bindingdata();
            }
        }

        protected void additem_milop_Click(object sender, EventArgs e)
        {
            if (quantity_milop.Text == "" || int.Parse(quantity_milop.Text) <= 0)
            {
                lbl_alert_milop.Text = "Invalid Quantity";
            }

            else
            {
                lbl_alert_milop.Text = " ";
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                String query = "INSERT INTO cart_tempadd (item_name, item_quantity, item_prize) VALUES('" + milop.Text + "','" + quantity_milop.Text + "', '" + milop_rm.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                bindingdata();
            }
        }

        protected void additem_miloice_Click(object sender, EventArgs e)
        {
            if (quantity_miloice.Text == "" || int.Parse(quantity_miloice.Text) <= 0)
            {
                lbl_alert_miloice.Text = "Invalid Quantity";
            }

            else
            {
                lbl_alert_miloice.Text = " ";
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                String query = "INSERT INTO cart_tempadd (item_name, item_quantity, item_prize) VALUES('" + miloice.Text + "','" + quantity_miloice.Text + "', '" + miloice_rm.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                bindingdata();
            }
        }

        protected void additem_limauice_Click(object sender, EventArgs e)
        {
            if (quantity_limauice.Text == "" || int.Parse(quantity_limauice.Text) <= 0)
            {
                lbl_alert_limauice.Text = "Invalid Quantity";
            }

            else
            {
                lbl_alert_limauice.Text = " ";
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                String query = "INSERT INTO cart_tempadd (item_name, item_quantity, item_prize) VALUES('" + limauice.Text + "','" + quantity_limauice.Text + "', '" + limauice_rm.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                bindingdata();
            }
        }

        protected void additem_coke_Click(object sender, EventArgs e)
        {
            if (quantity_coke.Text == "" || int.Parse(quantity_coke.Text) <= 0)
            {
                lbl_alert_coke.Text = "Invalid Quantity";
            }

            else
            {
                lbl_alert_coke.Text = " ";
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                String query = "INSERT INTO cart_tempadd (item_name, item_quantity, item_prize) VALUES('" + coke.Text + "','" + quantity_coke.Text + "', '" + coke_rm.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                bindingdata();
            }
        }

        protected void additem_pepsi_Click(object sender, EventArgs e)
        {
            if (quantity_pepsi.Text == "" || int.Parse(quantity_pepsi.Text) <= 0)
            {
                lbl_alert_pepsi.Text = "Invalid Quantity";
            }

            else
            {
                lbl_alert_pepsi.Text = " ";
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                String query = "INSERT INTO cart_tempadd (item_name, item_quantity, item_prize) VALUES('" + pepsi.Text + "','" + quantity_pepsi.Text + "', '" + pepsi_rm.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                bindingdata();
            }
        }

        protected void additem_sevenup_Click(object sender, EventArgs e)
        {
            if (quantity_sevenup.Text == "" || int.Parse(quantity_sevenup.Text) <= 0)
            {
                lbl_alert_sevenup.Text = "Invalid Quantity";
            }

            else
            {
                lbl_alert_sevenup.Text = " ";
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                String query = "INSERT INTO cart_tempadd (item_name, item_quantity, item_prize) VALUES('" + sevenup.Text + "','" + quantity_sevenup.Text + "', '" + sevenup_rm.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                bindingdata();
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            int id = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
            deleterowdata(id);
            bindingdata();
        }   

        // actions performed when place_order button is clicked
        protected void place_order_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            if (GridView1.Rows.Count> 0)
            {
                Response.Write("<script>alert('Are you sure you want to confirm the order?')</script>");
                con.Open();
                String query = "DELETE FROM cart_tempadd";

                String query2 = "Insert into Orders_Invoice (cust_id, item_name, item_quantity, item_prize, item_img) Select '" + (Session["name"]).ToString() + "', ca.item_name, item_quantity, item_prize, ai.img FROM cart_tempadd ca INNER JOIN img ai on ca.item_name = ai.item_name";
                SqlCommand cmd2 = new SqlCommand(query2, con);
                cmd2.ExecuteNonQuery();

                String query3 = "Insert into orders_admin (order_id, item_name, item_quantity, item_prize, cust_id) Select id, item_name, item_quantity, item_prize,'" + (Session["name"]).ToString() + "' FROM cart_tempadd";
                SqlCommand cmd3 = new SqlCommand(query3, con);
                cmd3.ExecuteNonQuery();

                String query1 = "Insert into Orders__temp (item_name, item_quantity, item_prize, item_img) Select ca.item_name, item_quantity, item_quantity * ai.prize as item_prize, ai.img FROM cart_tempadd ca INNER JOIN img ai on ca.item_name = ai.item_name";
                SqlCommand cmd1 = new SqlCommand(query1, con);
                cmd1.ExecuteNonQuery();              

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("order_invoice.aspx");
            }
            else { Response.Write("<script>alert('No item added to cart!')</script>"); }
        }

        // row editing in gridview of cart enables to edit quantity
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            bindingdata();
        }

        // row cancel if customer decides not to change anything
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            bindingdata();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
            TextBox quan = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2");
            updaterowdata(quan.Text, id);
            GridView1.EditIndex = -1;
            bindingdata();
        }
    }
}