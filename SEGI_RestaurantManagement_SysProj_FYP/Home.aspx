<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SEGI_RestaurantManagement_SysProj_FYP.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HOME</title>
    <link rel="stylesheet" href="Home.css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">

</head>
<body>
    <form id="form1" runat="server">
       <div class="container">           
           <div class="navbar">
               <ul class="navlist">
                   <a href="Home.aspx"><li class="nav_items">HOME</li></a>                 
                   <a href="Login.aspx"><li class="nav_items">LOG OUT</li></a>
                   <a href="Profile.aspx"><li class="nav_items"><i class="fa fa-user" aria-hidden="true" ></i></li></a>
               </ul>
           </div>
           <div class="pageItems">
               <div class="slider">                  
                   <div class="slides">                      

                       <input type="radio" name="radio_btn" id="radio1"/>
                       <input type="radio" name="radio_btn" id="radio2"/>
                       <input type="radio" name="radio_btn" id="radio3"/>
                       <input type="radio" name="radio_btn" id="radio4"/>

                       <div class="slide first">
                           <img style="background-image:url(Images/jason-leung-poI7DelFiVA-unsplash.jpg);background-size:cover;
                                                                                                       background-repeat:no-repeat;
                                                                                                       background-blend-mode:multiply;
                                                                                                       background-color:rgb(58, 57, 57);" /> 
                        <h1 id="slidettxt" style="color:ghostwhite; margin-top:-400px; text-align:center; font-size:70px;"> WELCOME,&nbsp
                        <asp:Label ID="name_wel" Font-Bold="true"  runat="server"  Visible="true"   ></asp:Label>

                        </h1>
                           
                              

                       </div>
                       <div class="slide">
                           <img style="background-image:url(Images/chad-montano-MqT0asuoIcU-unsplash.jpg);
                                                                                                       background-size:cover;
                                                                                                       background-repeat:no-repeat;
                                                                                                       background-blend-mode:multiply;
                                                                                                       background-color:rgb(58, 57, 57);" />  
                       </div>
                       <div class="slide">
                           <img style="background-image:url(Images/dan-gold-4_jhDO54BYg-unsplash.jpg);
                                                                                                       background-size:cover;
                                                                                                       background-repeat:no-repeat;
                                                                                                       background-blend-mode:multiply;
                                                                                                       background-color:rgb(58, 57, 57);
                                                                                                       border:none;" />  
                       </div>
                       <div class="slide">
                           <img style="background-image:url(Images/wu-yi-3lJMJ3g37IE-unsplash.jpg);
                                                                                                       background-size:cover;
                                                                                                       background-repeat:no-repeat;
                                                                                                       background-blend-mode:multiply;
                                                                                                       background-color:rgb(58, 57, 57);" />  
                       </div>
                 
                       <div class="navigation-auto">
                           <div class="auto_btn1"></div>
                           <div class="auto_btn2"></div>
                           <div class="auto_btn3"></div>
                           <div class="auto_btn4"></div>
                       </div>

                   </div>
                   
                   <div class="navigation-manual"> 
                       <label for="radio1" class="manual_btn"></label>
                       <label for="radio2" class="manual_btn"></label>
                       <label for="radio3" class="manual_btn"></label>
                       <label for="radio4" class="manual_btn"></label>
                   </div>
               </div>
           </div>

           <div class="tonavigatio_cards">
               <ul class="card_list">
                   <a href="menu.aspx" style="color:floralwhite; text-decoration:none "> <li class="card" style="background-image:url(Images/louis-hansel-lXLct9D-ARE-unsplash.jpg); background-repeat:no-repeat;background-blend-mode:multiply;
 background-color:rgb(135, 134, 134); background-size:cover;"><h3>MENU</h3><p>Click here to view menu.</p></li></a>
                    <a href="orderhistory.aspx" style="color:floralwhite; text-decoration:none;"><li class="card" style="background-image:url(Images/history.jpg); background-repeat:no-repeat;background-blend-mode:multiply;
 background-color:rgb(135, 134, 134); background-size:cover;"><h3>ORDER HISTORY</h3><p>View your previous orders</p></li></a>
               </ul>
           </div>
           </div>

    </form>
</body>
</html>
