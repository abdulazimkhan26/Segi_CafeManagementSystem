<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="SEGI_RestaurantManagement_SysProj_FYP.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SIGNUP.aspx</title>
    <link rel="stylesheet" href="Signup.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">           
            <div class="img">                
                <ul class="listitems">
                    <li><h1 style="margin-right:80px; margin-bottom:-30px">SIGN UP</h1></li><br />
                     <li><b>Name</b>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <asp:TextBox  runat="server" Width="230px" ID="name" Height="20px"></asp:TextBox>&nbsp <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Enabled="true" runat="server" ControlToValidate="name" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator></li>                    
                    <li><b>Username</b>&nbsp&nbsp&nbsp <asp:TextBox  runat="server" Width="230px" ID="username" Height="20px"></asp:TextBox>&nbsp <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Enabled="true" runat="server" ControlToValidate="username" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator></li>                    
                    <li><b>Email</b>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <asp:TextBox runat="server" Width="230px" ID="email" Height="20px" TextMode="Email"></asp:TextBox>&nbsp <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Enabled="true" runat="server" ControlToValidate="email" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator></li>
                    <li><b>Tel.No</b>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <asp:TextBox  runat="server"  TextMode="Number" Hint="+6" MinLength="10" MaxLength="11"  Width="230px" ID="telno" Height="20px"></asp:TextBox>&nbsp <asp:RequiredFieldValidator ID="usernameval" Enabled="true" runat="server" ControlToValidate="telno" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator></li>                    
                    <li><b>Password</b>&nbsp&nbsp&nbsp&nbsp&nbsp <asp:TextBox runat="server" Width="230px" TextMode="Password" ID="pw" Height="20px"></asp:TextBox>&nbsp <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Enabled="true" runat="server" ControlToValidate="pw" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator></li>
                    <li><b>Confim Pw</b>&nbsp&nbsp <asp:TextBox runat="server" Width="230px" ID="confirmpw" TextMode="Password" Height="20px"></asp:TextBox>&nbsp <asp:CompareValidator runat="server" ErrorMessage="Password Mismatch!" ControlToCompare="pw" ForeColor="Red" ControlToValidate="confirmpw"></asp:CompareValidator></li>
                                        <li style="margin-right:90px">                        
                         <asp:Button runat="server" ID="backto_btn" Text="Sign Up" Font-Bold="True" Width="150px" Height="30px" BackColor="" Font-Size="15px" OnClientClick="signubtn_click" OnClick="signup_Click" /></li>
                    </li>
                 </ul>

            </div>
    </form>
</body>
</html>
