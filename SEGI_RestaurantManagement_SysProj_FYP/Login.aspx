<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SEGI_RestaurantManagement_SysProj_FYP.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="login.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">           
            <div class="img">                
                <ul class="listitems">
                    <li><h1 style="margin-right:80px">Login</h1></li><br />
                    <li><b>Username</b>&nbsp&nbsp&nbsp <asp:TextBox  runat="server" Width="230px" ID="username_in" Height="20px"></asp:TextBox>&nbsp <asp:RequiredFieldValidator ID="usernameval" Enabled="true" runat="server" ControlToValidate="username_in" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator></li>                    
                    <li><b>Password</b>&nbsp&nbsp&nbsp&nbsp <asp:TextBox runat="server" Width="230px" ID="pw_in" Height="20px" TextMode="Password"></asp:TextBox>&nbsp <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Enabled="true" runat="server" ControlToValidate="pw_in" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator></li>
                    <li style="margin-right:90px">
                        <asp:Button runat="server" ID="submit_btn"  Text="Log In" Font-Bold="True" Width="150px" Height="30px" BackColor="" Font-Size="15px"  OnClientClick="submitbtn_click" OnClick="submit_btn_Click" />
                         <asp:Button runat="server" ID="signup_btn" Text="Sign Up" Font-Bold="True" Width="150px" Height="30px" BackColor="" Font-Size="15px"  OnClientClick="signubtn_click" OnClick="signup_btn_Click" /></li>
                    </li>
                 </ul>

            </div>
            </div>
            
    </form>
</body>
</html>
