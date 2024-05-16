<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="SEGI_RestaurantManagement_SysProj_FYP.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MENU</title>
    <link rel="stylesheet" href="menu.css" />
</head>
<body>
    <form id="form1" runat="server">
          
         
        <div class="container">         
            <div class="display">
                <div class="sidebar">
                    <ul class="sidebar_list">
                        <li class="sidebar_items" style="list-style=none; position:relative;"><h4>Food</h4> </li>                 
                          <li> <a href="#malaysianfood_name" style="text-decoration:none; color:black;"><h6>Malaysian</h6></a></li>        
                          <li> <a href="#indianfood_name" style="text-decoration:none; color:black;"><h6>Indian</h6></a></li>           
                          <li> <a href="#westernfood_name" style="text-decoration:none; color:black;"><h6>Western</h6></a> </li>                               
                        <li class="sidebar_items"><a href="#drinks" style="text-decoration:none; color:black; "><h4>Beverages</h4></a></li>
                        <li class="sidebar_items"><a href="Home.aspx" style="text-decoration:none; color:black;"><h4>Home</h4></a></li>
                    </ul>
                </div>
                <div class="menu_items"><br /><h3 style="margin-left:70px; " id="malaysianfood_name">MALAYSIAN FOOD</h3><br />
                    <ul class="items_inmenulist">

                        <div style="text-align:center;">
                           <li class="itemsmenu" style="background-image:url(Images/Nasi-lemak.jpg); background-size:cover;"></li>
                            <asp:Label ID="nasilemak_lbl" Font-Bold="true" Text="Nasi Lemak" runat="server"></asp:Label> &nbsp&nbsp&nbsp&nbsp<asp:Label ID="nasilemak_rm" Text="RM 3.50" Font-Size="15px" runat="server"></asp:Label> <br />
                           <asp:TextBox runat="server" ID="quantity_nasilemak"  ReadOnly="false" Width="100px" TextMode="Number"></asp:TextBox> <asp:Button  runat="server"  OnClick="additem_nasilemak_Click" ID="additem_nasilemak" Text="Add to Cart" OnClientClick="false" /><br />
                            <asp:Label runat="server" ID="lbl_alert_nsilemak" Font-Bold="True" Font-Size="13px" ForeColor="Red" ></asp:Label>
                            </div>  
                        
                        <div style="text-align:center;">
                           <li class="itemsmenu" style="background-image:url(Images/Mee-Goreng-Mamak-4-scaled.jpg); background-size:cover;"></li>
                            <asp:Label ID="meegoreng_lbl" Font-Bold="true" Text="Mee Goreng" runat="server"></asp:Label>&nbsp&nbsp&nbsp&nbsp <asp:Label ID="meegoreng_rm" Text="RM 7.50" Font-Size="15px" runat="server"></asp:Label> <br />
                           <asp:TextBox runat="server" ID="quantity_meegoreng" TextMode="Number" ReadOnly="false" Width="100px"></asp:TextBox> <asp:Button  runat="server" OnClick="additem_meegoreng_Click" ID="additem_meegoreng" Text="Add to Cart" /><br />
                           <asp:Label runat="server" ID="lbl_alert_meegoreng" Font-Bold="True" Font-Size="13px" ForeColor="Red" ></asp:Label>
                            </div>

                        <div style="text-align:center;">
                           <li class="itemsmenu" style="background-image:url(Images/maggigoreng.jpg); background-size:cover;"></li>
                            <asp:Label ID="maggigoreng_lbl" Font-Bold="true" Text="Maggi Goreng" runat="server"></asp:Label> &nbsp&nbsp&nbsp&nbsp<asp:Label ID="maggigoreng_rm" Text="RM 7.50" Font-Size="15px" runat="server"></asp:Label> <br />
                           <asp:TextBox runat="server" ID="quantity_maggigoreng" ReadOnly="false" Width="100px" TextMode="Number"></asp:TextBox> <asp:Button  runat="server"  OnClick="additem_maggigoreng_Click" ID="additem_maggigoreng" Text="Add to Cart" /><br />
                           <asp:Label runat="server" ID="lbl_alert_maggigoreng" Font-Bold="True" Font-Size="13px" ForeColor="Red" ></asp:Label>
                            </div>
                        
                        <div style="text-align:center;">
                           <li class="itemsmenu" style="background-image:url(Images/maggi%20goreng%20pattaya.jpg); background-size:cover;"></li>
                            <asp:Label ID="maggi_pattaya" Font-Bold="true" Text="Maggi Pattaya" runat="server"></asp:Label>&nbsp&nbsp&nbsp&nbsp <asp:Label ID="maggipattaya_rm" Text="RM 8.70" Font-Size="15px" runat="server"></asp:Label> <br />
                           <asp:TextBox runat="server" ID="quantity_maggipattaya" ReadOnly="false" TextMode="Number" Width="100px"></asp:TextBox> <asp:Button  runat="server" OnClick="additem_maggipattaya_Click" ID="additem_maggipattaya" Text="Add to Cart" /><br />
                           <asp:Label runat="server" ID="lbl_alert_maggipattaya" Font-Bold="True" Font-Size="13px" ForeColor="Red" ></asp:Label>
                        </div>


                        <div style="text-align:center;">
                           <li class="itemsmenu" style="background-image:url(Images/Nasi_Goreng_Kampung.jpg); background-size:cover;"></li>
                            <asp:Label ID="nasigrng_kampung" Font-Bold="true" Text="Nasi Goreng" runat="server"></asp:Label> &nbsp&nbsp&nbsp&nbsp<asp:Label ID="nasigrg_rm" Text="RM 6.50" Font-Size="15px" runat="server"></asp:Label> <br />
                           <asp:TextBox runat="server" ID="quantity_nasigrg"  ReadOnly="false" Width="100px" TextMode="Number"></asp:TextBox> <asp:Button  runat="server"  OnClick="additem_nasigrg_Click" ID="additem_nasigrg" Text="Add to Cart" OnClientClick="false" /><br />
                            <asp:Label runat="server" ID="lbl_alert_nasigrg" Font-Bold="True" Font-Size="13px" ForeColor="Red" ></asp:Label> <br /><h3 id="indianfood_name">INDIAN FOOD</h3>
                            </div>
                        
                        <div style="text-align:center;">
                           <li class="itemsmenu" style="background-image:url(Images/bee%20hoon.jpg); background-size:cover;"></li>
                            <asp:Label ID="bee_hoon" Font-Bold="true" Text="Bee Hoon" runat="server"></asp:Label>&nbsp&nbsp&nbsp&nbsp <asp:Label ID="beehoon_rm" Text="RM 6.50" Font-Size="15px" runat="server"></asp:Label> <br />
                           <asp:TextBox runat="server" ID="quantity_beehoon" TextMode="Number" ReadOnly="false" Width="100px"></asp:TextBox> <asp:Button  runat="server" OnClick="additem_beehoon_Click" ID="additem_beehoon" Text="Add to Cart" /><br />
                           <asp:Label runat="server" ID="lbl_alert_beehoon" Font-Bold="True" Font-Size="13px" ForeColor="Red" ></asp:Label>
                            </div>

                        <div style="text-align:center;">
                           <li class="itemsmenu" style="background-image:url(Images/char-koay-teow-thumb.jpg); background-size:cover;"></li>
                            <asp:Label ID="quey_teow" Font-Bold="true" Text="Quey Teow" runat="server"></asp:Label> &nbsp&nbsp&nbsp&nbsp<asp:Label ID="queyteow_rm" Text="RM 8.50" Font-Size="15px" runat="server"></asp:Label> <br />
                           <asp:TextBox runat="server" ID="quantity_queyteow" ReadOnly="false" Width="100px" TextMode="Number"></asp:TextBox> <asp:Button  runat="server"  OnClick="additem_queyteow_Click" ID="additem_queyteow" Text="Add to Cart" /><br />
                           <asp:Label runat="server" ID="lbl_alert_queyteow" Font-Bold="True" Font-Size="13px" ForeColor="Red" ></asp:Label>
                            </div>
                        
                        <div style="text-align:center;">
                           <li class="itemsmenu" style="background-image:url(Images/chicken%20rice.jpg); background-size:cover;"></li>
                            <asp:Label ID="chicken_rice" Font-Bold="true" Text="Chicken Rice" runat="server"></asp:Label>&nbsp&nbsp&nbsp&nbsp <asp:Label ID="chickenrice_rm" Text="RM 9.50" Font-Size="15px" runat="server"></asp:Label> <br />
                           <asp:TextBox runat="server" ID="quantity_chickenrice" ReadOnly="false" TextMode="Number" Width="100px" ToolTip="Enter Quantity"></asp:TextBox> <asp:Button  runat="server" OnClick="additem_chickenrice_Click" ID="add_item_chickenrice" Text="Add to Cart" /><br />
                           <asp:Label runat="server" ID="lbl_alert_chickenrice" Font-Bold="True" Font-Size="13px" ForeColor="Red" ></asp:Label>
                        </div>


                        <div style="text-align:center;">
                           <li class="itemsmenu" style="background-image:url(Images/thosia.jpg); background-size:cover;"></li>
                            <asp:Label ID="thosai" Font-Bold="true" Text="Thosai" runat="server"></asp:Label> &nbsp&nbsp&nbsp&nbsp<asp:Label ID="thosia_rm" Text="RM 2.50" Font-Size="15px" runat="server"></asp:Label> <br />
                           <asp:TextBox runat="server" ID="quantity_thosai"  ReadOnly="false" Width="100px" ToolTip="Enter Quantity" TextMode="Number"></asp:TextBox> <asp:Button  runat="server"  OnClick="additem_thosai_Click" ID="additem_thosai" Text="Add to Cart"  /><br />
                            <asp:Label runat="server" ID="lbl_alert_thosai" Font-Bold="True" Font-Size="13px" ForeColor="Red" ></asp:Label>
                            </div>
                        
                        <div style="text-align:center;">
                           <li class="itemsmenu" style="background-image:url(Images/roti%20kosong.jpg); background-size:cover;"></li>
                            <asp:Label ID="roti0" Font-Bold="true" Text="Roti Canai" runat="server"></asp:Label>&nbsp&nbsp&nbsp&nbsp <asp:Label ID="roti0_rm" Text="RM 1.40" Font-Size="15px" runat="server"></asp:Label> <br />
                           <asp:TextBox runat="server" ID="quantity_roti0" ReadOnly="false" TextMode="Number" Width="100px" ToolTip="Enter Quantity"></asp:TextBox> <asp:Button  runat="server" OnClick="additem_roti0_Click" ID="additem_roti0" Text="Add to Cart" /><br />
                           <asp:Label runat="server" ID="lbl_alert_roti0" Font-Bold="True" Font-Size="13px" ForeColor="Red" ></asp:Label>
                        </div>

                        <div style="text-align:center;">
                           <li class="itemsmenu" style="background-image:url(Images/roti%20telur.jpg); background-size:cover;"></li>
                            <asp:Label ID="roti_egg" Font-Bold="true" Text="Roti Telur" runat="server"></asp:Label>&nbsp&nbsp&nbsp&nbsp <asp:Label ID="rotiegg_rm" Text="RM 2.50" Font-Size="15px" runat="server"></asp:Label> <br />
                           <asp:TextBox runat="server" ID="quantity_rotiegg" TextMode="Number" ReadOnly="false" ToolTip="Enter Quantity" Width="100px"></asp:TextBox> <asp:Button  runat="server" OnClick="additem_rotiegg_Click" ID="additem_rotiegg" Text="Add to Cart" /><br />
                           <asp:Label runat="server" ID="lbl_alert_rotiegg" Font-Bold="True" Font-Size="13px" ForeColor="Red" ></asp:Label>
                            </div>

                        <div style="text-align:center;">
                           <li class="itemsmenu" style="background-image:url(Images/roti%20banjir.jpg); background-size:cover;"></li>
                            <asp:Label ID="rotibanjir" Font-Bold="true" Text="Roti Banjir" runat="server"></asp:Label> &nbsp&nbsp&nbsp&nbsp<asp:Label ID="rotibanjir_rm" Text="RM 3.50" Font-Size="15px" runat="server"></asp:Label> <br />
                           <asp:TextBox runat="server" ID="quantity_rotibanjir" ReadOnly="false" Width="100px" ToolTip="Enter Quantity" TextMode="Number"></asp:TextBox> <asp:Button  runat="server" OnClientClick=""  OnClick="additem_rotibanjir_Click" ID="additem_roitbanjir" Text="Add to Cart" /><br />
                           <asp:Label runat="server" ID="lbl_alert_rotibanjir" Font-Bold="True" Font-Size="13px" ForeColor="Red" ></asp:Label>
                            </div>


                        <div style="text-align:center;">
                           <li class="itemsmenu" style="background-image:url(Images/poori.jpg); background-size:cover;"></li>
                            <asp:Label ID="poori" Font-Bold="true" Text="Poori" runat="server"></asp:Label> &nbsp&nbsp&nbsp&nbsp<asp:Label ID="poori_rm" Text="RM 2.80" Font-Size="15px" runat="server"></asp:Label> <br />
                           <asp:TextBox runat="server" ID="quantity_poori"  ReadOnly="false" Width="100px" ToolTip="Enter Quantity" TextMode="Number"></asp:TextBox> <asp:Button  runat="server"  OnClick="additem_poori_Click" ID="additem_poori" Text="Add to Cart" OnClientClick="false" /><br />
                            <asp:Label runat="server" ID="lbl_alert_poori" Font-Bold="True" Font-Size="13px" ForeColor="Red" ></asp:Label> <br /><br /><h3 id="westernfood_name">WESTERN FOOD</h3>
                            </div>

                        <div style="text-align:center;">
                           <li class="itemsmenu" style="background-image:url(Images/idli.jpg); background-size:cover;"></li>
                            <asp:Label ID="idli" Font-Bold="true" Text="Idli" runat="server"></asp:Label> &nbsp&nbsp&nbsp&nbsp<asp:Label ID="idli_rm" Text="RM 1.00" Font-Size="15px" runat="server"></asp:Label> <br />
                           <asp:TextBox runat="server" ID="quantity_idli"  ReadOnly="false" Width="100px" ToolTip="Enter Quantity" TextMode="Number"></asp:TextBox> <asp:Button  runat="server"  OnClick="additem_idli_Click" ID="additem_idli" Text="Add to Cart" OnClientClick="false" /><br />
                            <asp:Label runat="server" ID="lblalert_idli" Font-Bold="True" Font-Size="13px" ForeColor="Red" ></asp:Label>
                            </div>

                        <div style="text-align:center;">
                           <li class="itemsmenu" style="background-image:url(Images/chappati.jpg); background-size:cover;"></li>
                            <asp:Label ID="chappati" Font-Bold="true" Text="Chappati" runat="server"></asp:Label> &nbsp&nbsp&nbsp&nbsp<asp:Label ID="chappati_rm" Text="RM 2.60" Font-Size="15px" runat="server"></asp:Label> <br />
                           <asp:TextBox runat="server" ID="quantity_chappati"  ReadOnly="false" Width="100px" ToolTip="Enter Quantity" TextMode="Number"></asp:TextBox> <asp:Button  runat="server"  OnClick="additem_chappati_Click" ID="additem_chappati" Text="Add to Cart" OnClientClick="false" /><br />
                            <asp:Label runat="server" ID="lblalert_chappati" Font-Bold="True" Font-Size="13px" ForeColor="Red" ></asp:Label>
                            </div>

                        <div style="text-align:center;">
                             <li class="itemsmenu"style="background-color:floralwhite; " ></li>
                            </div>
                        
                        
                        <div style="text-align:center;">
                           <li class="itemsmenu" style="background-image:url(Images/chicken%20burger.jpg); background-size:cover;"></li>
                            <asp:Label ID="chick_burger" Font-Bold="true" Text="Burger Ayam" runat="server"></asp:Label>&nbsp&nbsp&nbsp&nbsp <asp:Label ID="chickburger_rm" Text="RM 3.90" Font-Size="15px" runat="server"></asp:Label> <br />
                           <asp:TextBox runat="server" ID="quantity_chickburger" ReadOnly="false" TextMode="Number" Width="100px" ToolTip="Enter Quantity"></asp:TextBox> <asp:Button  runat="server" OnClick="additem_chickburger_Click" ID="additem_chickburger" Text="Add to Cart" /><br />
                           <asp:Label runat="server" ID="lbl_alert_chickburger" Font-Bold="True" Font-Size="13px" ForeColor="Red" ></asp:Label>
                        </div>

                        <div style="text-align:center;">
                           <li class="itemsmenu" style="background-image:url(Images/chicken%20burger%20double.jpeg); background-size:cover;"></li>
                            <asp:Label ID="chickburgerx2" Font-Bold="true" Text="Ayam Double " runat="server"></asp:Label>&nbsp&nbsp&nbsp&nbsp <asp:Label ID="chickburgerx2_rm" Text="RM 5.00" Font-Size="15px" runat="server"></asp:Label> <br />
                           <asp:TextBox runat="server" ID="quantity_chickenburgerx2" TextMode="Number" ReadOnly="false" ToolTip="Enter Quantity" Width="100px"></asp:TextBox> <asp:Button  runat="server" OnClick="additem_chickenburgerx2_Click" ID="additem_chickburgerx2" Text="Add to Cart" /><br />
                           <asp:Label runat="server" ID="lbl_alert_chickenburgerx2" Font-Bold="True" Font-Size="13px" ForeColor="Red" ></asp:Label>
                            </div>

                        <div style="text-align:center;">
                           <li class="itemsmenu" style="background-image:url(Images/chicken%20wrap.jpg); background-size:cover;"></li>
                            <asp:Label ID="chickenwrap" Font-Bold="true" Text="Chicken Wrap" runat="server"></asp:Label> &nbsp&nbsp&nbsp&nbsp<asp:Label ID="chickenwrap_rm" Text="RM 5.00" Font-Size="15px" runat="server"></asp:Label> <br />
                           <asp:TextBox runat="server" ID="quantity_chickenwrap" ReadOnly="false" Width="100px" ToolTip="Enter Quantity" TextMode="Number"></asp:TextBox> <asp:Button  runat="server"  OnClick="additem_chickenwrap_Click" ID="additem_chickenwrap" Text="Add to Cart" /><br />
                           <asp:Label runat="server" ID="lbl_alert_chickenwrap" Font-Bold="True" Font-Size="13px" ForeColor="Red" ></asp:Label>
                            </div>
                        
                        <div style="text-align:center;">
                           <li class="itemsmenu" style="background-image:url(Images/french%20fries.jpg); background-size:cover;"></li>
                            <asp:Label ID="frenchfries" Font-Bold="true" Text="French Fries" runat="server"></asp:Label> &nbsp&nbsp&nbsp&nbsp<asp:Label ID="frenchfries_rm" Text="RM 3.50" Font-Size="15px" runat="server"></asp:Label> <br />
                           <asp:TextBox runat="server" ID="quantity_frenchfries" ReadOnly="false" Width="100px" ToolTip="Enter Quantity" TextMode="Number"></asp:TextBox> <asp:Button  runat="server"  OnClick="additem_frenchfries_Click" ID="additem_frenchfries" Text="Add to Cart" /><br />
                           <asp:Label runat="server" ID="lbl_alert_frenchfries" Font-Bold="True" Font-Size="13px" ForeColor="Red" ></asp:Label>
                            </div>


                        <div style="text-align:center;">
                           <li class="itemsmenu" style="background-image:url(Images/nuggets.jpg); background-size:cover;"></li>
                            <asp:Label ID="nuggets" Font-Bold="true" Text="Nuggets 4Pcs" runat="server"></asp:Label>&nbsp&nbsp&nbsp&nbsp <asp:Label ID="nuggets_rm" Text="RM 2.90" Font-Size="15px" runat="server"></asp:Label> <br />
                           <asp:TextBox runat="server" ID="quantity_nuggets" ReadOnly="false" TextMode="Number" Width="100px" ToolTip="Enter Quantity"></asp:TextBox> <asp:Button  runat="server" OnClick="additem_nuggets_Click" ID="additem_nuggets" Text="Add to Cart" /><br />
                           <asp:Label runat="server" ID="lbl_alert_nuggets" Font-Bold="True" Font-Size="13px" ForeColor="Red" ></asp:Label><br /><br /><h3 id="drinks">BEVERAGES&nbsp&nbsp&nbsp&nbsp</h3>
                        </div>

                        <div style="text-align:center;">
                           <li class="itemsmenu" style="background-image:url(Images/onion%20rings.jpg); background-size:cover;"></li>
                            <asp:Label ID="onionrings" Font-Bold="true" Text="Onion Rings" runat="server"></asp:Label>&nbsp&nbsp&nbsp&nbsp <asp:Label ID="onionrings_rm" Text="RM 2.00" Font-Size="15px" runat="server"></asp:Label> <br />
                           <asp:TextBox runat="server" ID="quantity_onionrings" TextMode="Number" ReadOnly="false" ToolTip="Enter Quantity" Width="100px"></asp:TextBox> <asp:Button  runat="server" OnClick="additem_onionrings_Click" ID="additem_onionrings" Text="Add to Cart" /><br />
                           <asp:Label runat="server" ID="lbl_alert_onionrings" Font-Bold="True" Font-Size="13px" ForeColor="Red" ></asp:Label>
                            </div>

                        <div style="text-align:center;">
                             <li class="itemsmenu"style="background-color:floralwhite;" ></li>
                            </div>

                        <div style="text-align:center;">
                             <li class="itemsmenu"style="background-color:floralwhite;" ></li>
                            </div>
                    
                          
                          <div style="text-align:center;">
                           <li class="itemsmenu" style="background-image:url(Images/teh%20o%20ice.jpg); background-size:cover;"></li>
                            <asp:Label ID="tehoice" Font-Bold="true" Text="Teh O Ice" runat="server"></asp:Label> &nbsp&nbsp&nbsp&nbsp<asp:Label ID="tehoice_rm" Text="RM 2.80" Font-Size="15px" runat="server"></asp:Label> <br />
                           <asp:TextBox runat="server" ID="quantity_tehoice"  ReadOnly="false" Width="100px" ToolTip="Enter Quantity" TextMode="Number"></asp:TextBox> <asp:Button  runat="server"  OnClick="additem_tehoice_Click" ID="additem_tehoice" Text="Add to Cart" OnClientClick="false" /><br />
                            <asp:Label runat="server" ID="lbl_alert_tehoice" Font-Bold="True" Font-Size="13px" ForeColor="Red" ></asp:Label> 
                            </div>

                        <div style="text-align:center;">
                           <li class="itemsmenu" style="background-image:url(Images/teh%20o%20ice%20limau.jpg); background-size:cover;"></li>
                            <asp:Label ID="teholimau" Font-Bold="true" Text="Teh O Limau" runat="server"></asp:Label> &nbsp&nbsp&nbsp&nbsp<asp:Label ID="teholimau_rm" Text="RM 1.00" Font-Size="15px" runat="server"></asp:Label> <br />
                           <asp:TextBox runat="server" ID="quantity_teholimau"  ReadOnly="false" Width="100px" ToolTip="Enter Quantity" TextMode="Number"></asp:TextBox> <asp:Button  runat="server"  OnClick="additem_teholimau_Click" ID="additem_teholimau" Text="Add to Cart" OnClientClick="false" /><br />
                            <asp:Label runat="server" ID="lbl_alert_teholimau" Font-Bold="True" Font-Size="13px" ForeColor="Red" ></asp:Label>
                            </div>

                        <div style="text-align:center;">
                           <li class="itemsmenu" style="background-image:url(Images/teh-o.jpg); background-size:cover;"></li>
                            <asp:Label ID="teho" Font-Bold="true" Text="Teh O" runat="server"></asp:Label> &nbsp&nbsp&nbsp&nbsp<asp:Label ID="teho_rm" Text="RM 2.60" Font-Size="15px" runat="server"></asp:Label> <br />
                           <asp:TextBox runat="server" ID="quantity_teho"  ReadOnly="false" Width="100px" ToolTip="Enter Quantity" TextMode="Number"></asp:TextBox> <asp:Button  runat="server"  OnClick="additem_teho_Click" ID="additem_teho" Text="Add to Cart" OnClientClick="false" /><br />
                            <asp:Label runat="server" ID="lbl_alert_teho" Font-Bold="True" Font-Size="13px" ForeColor="Red" ></asp:Label>
                            </div>

                         <div style="text-align:center;">
                           <li class="itemsmenu" style="background-image:url(Images/tehtarik.jpg); background-size:cover;"></li>
                            <asp:Label ID="tehtarik" Font-Bold="true" Text="Teh Tarik" runat="server"></asp:Label> &nbsp&nbsp&nbsp&nbsp<asp:Label ID="tehtarik_rm" Text="RM 2.60" Font-Size="15px" runat="server"></asp:Label> <br />
                           <asp:TextBox runat="server" ID="quantity_tehtarik"  ReadOnly="false" Width="100px" ToolTip="Enter Quantity" TextMode="Number"></asp:TextBox> <asp:Button  runat="server"  OnClick="additem_tehtarik_Click" ID="additem_tehtarik" Text="Add to Cart" OnClientClick="false" /><br />
                            <asp:Label runat="server" ID="lbl_alert_tehtarik" Font-Bold="True" Font-Size="13px" ForeColor="Red" ></asp:Label>
                            </div>

                         <div style="text-align:center;">
                           <li class="itemsmenu" style="background-image:url(Images/milo%20tarik.jpg); background-size:cover;"></li>
                            <asp:Label ID="milop" Font-Bold="true" Text="Milo Tarik" runat="server"></asp:Label> &nbsp&nbsp&nbsp&nbsp<asp:Label ID="milop_rm" Text="RM 2.80" Font-Size="15px" runat="server"></asp:Label> <br />
                           <asp:TextBox runat="server" ID="quantity_milop"  ReadOnly="false" Width="100px" ToolTip="Enter Quantity" TextMode="Number"></asp:TextBox> <asp:Button  runat="server"  OnClick="additem_milop_Click" ID="additem_milop" Text="Add to Cart" OnClientClick="false" /><br />
                            <asp:Label runat="server" ID="lbl_alert_milop" Font-Bold="True" Font-Size="13px" ForeColor="Red" ></asp:Label> 
                            </div>

                        <div style="text-align:center;">
                           <li class="itemsmenu" style="background-image:url(Images/milo.jpg); background-size:cover;"></li>
                            <asp:Label ID="miloice" Font-Bold="true" Text="Milo Ice" runat="server"></asp:Label> &nbsp&nbsp&nbsp&nbsp<asp:Label ID="miloice_rm" Text="RM 1.00" Font-Size="15px" runat="server"></asp:Label> <br />
                           <asp:TextBox runat="server" ID="quantity_miloice"  ReadOnly="false" Width="100px" ToolTip="Enter Quantity" TextMode="Number"></asp:TextBox> <asp:Button  runat="server"  OnClick="additem_miloice_Click" ID="additem_miloice" Text="Add to Cart" OnClientClick="false" /><br />
                            <asp:Label runat="server" ID="lbl_alert_miloice" Font-Bold="True" Font-Size="13px" ForeColor="Red" ></asp:Label>
                            </div>

                        <div style="text-align:center;">
                           <li class="itemsmenu" style="background-image:url(Images/limau%20ice.jpg); background-size:cover;"></li>
                            <asp:Label ID="limauice" Font-Bold="true" Text="Limau Ice" runat="server"></asp:Label> &nbsp&nbsp&nbsp&nbsp<asp:Label ID="limauice_rm" Text="RM 2.60" Font-Size="15px" runat="server"></asp:Label> <br />
                           <asp:TextBox runat="server" ID="quantity_limauice"  ReadOnly="false" Width="100px" ToolTip="Enter Quantity" TextMode="Number"></asp:TextBox> <asp:Button  runat="server"  OnClick="additem_limauice_Click" ID="additem_limauice" Text="Add to Cart" OnClientClick="false" /><br />
                            <asp:Label runat="server" ID="lbl_alert_limauice" Font-Bold="True" Font-Size="13px" ForeColor="Red" ></asp:Label>
                            </div>

                          <div style="text-align:center;">
                           <li class="itemsmenu" style="background-image:url(Images/coke.jpg); background-size:cover;"></li>
                            <asp:Label ID="coke" Font-Bold="true" Text="Coke" runat="server"></asp:Label> &nbsp&nbsp&nbsp&nbsp<asp:Label ID="coke_rm" Text="RM 2.60" Font-Size="15px" runat="server"></asp:Label> <br />
                           <asp:TextBox runat="server" ID="quantity_coke"  ReadOnly="false" Width="100px" ToolTip="Enter Quantity" TextMode="Number"></asp:TextBox> <asp:Button  runat="server"  OnClick="additem_coke_Click" ID="additem_coke" Text="Add to Cart" OnClientClick="false" /><br />
                            <asp:Label runat="server" ID="lbl_alert_coke" Font-Bold="True" Font-Size="13px" ForeColor="Red" ></asp:Label>
                            </div>

                          <div style="text-align:center;">
                           <li class="itemsmenu" style="background-image:url(Images/pepsi.png); background-color:floralwhite; background-size:cover;"></li>
                            <asp:Label ID="pepsi" Font-Bold="true" Text="Pepsi" runat="server"></asp:Label> &nbsp&nbsp&nbsp&nbsp<asp:Label ID="pepsi_rm" Text="RM 2.60" Font-Size="15px" runat="server"></asp:Label> <br />
                           <asp:TextBox runat="server" ID="quantity_pepsi"  ReadOnly="false" Width="100px" ToolTip="Enter Quantity" TextMode="Number"></asp:TextBox> <asp:Button  runat="server"  OnClick="additem_pepsi_Click" ID="additem_pepsi" Text="Add to Cart" OnClientClick="false" /><br />
                            <asp:Label runat="server" ID="lbl_alert_pepsi" Font-Bold="True" Font-Size="13px" ForeColor="Red" ></asp:Label>
                            </div>

                          <div style="text-align:center;">
                           <li class="itemsmenu" style="background-image:url(Images/7up.jpg); background-color:floralwhite; background-size:cover;"></li>
                            <asp:Label ID="sevenup" Font-Bold="true" Text="7 Up" runat="server"></asp:Label> &nbsp&nbsp&nbsp&nbsp<asp:Label ID="sevenup_rm" Text="RM 2.60" Font-Size="15px" runat="server"></asp:Label> <br />
                           <asp:TextBox runat="server" ID="quantity_sevenup"  ReadOnly="false" Width="100px" ToolTip="Enter Quantity" TextMode="Number"></asp:TextBox> <asp:Button  runat="server"  OnClick="additem_sevenup_Click" ID="additem_sevenup" Text="Add to Cart" OnClientClick="false" /><br />
                            <asp:Label runat="server" ID="lbl_alert_sevenup" Font-Bold="True" Font-Size="13px" ForeColor="Red" ></asp:Label>
                            </div>

                        
                        <div style="text-align:center;">
                             <li class="itemsmenu"style="background-color:floralwhite;" ></li>
                            </div>

                        
                        <div style="text-align:center;">
                             <li class="itemsmenu"style="background-color:floralwhite;" ></li>
                            </div>                  

                        

                    </ul>
                </div>
            </div>
            <div class="cart">
                <h2 style="text-align:center; padding-bottom:10px;">Cart Items</h2>      
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id"  BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" Font-Size="13px" ForeColor="Black" Height="100px" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit"   Width="290px" >
                    <Columns>
                        <asp:TemplateField HeaderText="Item Name" InsertVisible="False">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" ReadOnly="true" runat="server" Text='<%# Eval("item_name") %>' Width="50px"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("item_name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Quantity">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("item_quantity") %>' Width="30px"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("item_quantity") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Prize (RM)">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" ReadOnly="true" Text='<%# Eval("item_prize") %>' Width="50px"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("item_prize") %>'></asp:Label>
                            </ItemTemplate>                           
                        </asp:TemplateField>

                        <asp:TemplateField>
                             <ItemTemplate>
                                <asp:Button Text="Edit" ID="edit_btn" runat="server" CommandName="Edit" />
                            </ItemTemplate>
                            <EditItemTemplate>
                                 <asp:Button Text="Update" ID="update_btn" runat="server" CommandName="Update" />
                                 <asp:Button Text="Cancel" ID="cancel_btn" runat="server" CommandName="Cancel" />
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="Gray" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:Button ID="place_order" runat="server" Text="Confirm Order" Width="290px" Height="40px" OnClick="place_order_Click"/> 
            </div>
            </div>
    </form>
</body>
</html>
