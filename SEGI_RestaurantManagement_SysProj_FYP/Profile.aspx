<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="SEGI_RestaurantManagement_SysProj_FYP.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile.aspx</title>
    <link rel="stylesheet" href="Profile.css"/>
</head>
<body>
    <form id="form1" runat="server">
        
        <div class="container">       <h2 style="color:white">User credentials</h2>    
            <div class="img" style="color:white">                
                <asp:Label runat="server">Name</asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:Label runat="server" id="displayname" Visible="true"></asp:Label><asp:TextBox runat="server" id="editname" ReadOnly="true" Text="" Visible="false"></asp:TextBox>&nbsp&nbsp<asp:Button runat="server" id="editbtn"  style="height: 20px" OnClick="editbtn_Click" Text="EDIT" />&nbsp<asp:Button runat="server" id="updatename"  style="height: 20px" OnClick="nameupdatebtn_Click" Visible="false" Text="UPDATE" /><br /><br />
                 <asp:Label runat="server">Username</asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp<asp:Label runat="server" id="displayusername" Visible="true"></asp:Label><br /><br />
                 <asp:Label id="lblemail" runat="server">Email</asp:Label>&nbsp&nbsp&nbsp<asp:Label runat="server" id="displayemail" Visible="true"></asp:Label><asp:TextBox runat="server" id="edit_email" ReadOnly="true" Text="" Visible="false" TextMode="Email"></asp:TextBox>&nbsp&nbsp<asp:Button runat="server" id="edit_email_btn"  style="height: 20px" OnClick="edit_email_btn_Click" Text="Edit" />&nbsp<asp:Button runat="server" id="emailupdatebtn"  style="height: 20px" OnClick="emailupdatebtn_Click" Visible="false" Text="UPDATE" /><br /><br />
                  <asp:Label runat="server">Mobile</asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:Label runat="server" id="displaymobile" Visible="true"></asp:Label><asp:TextBox runat="server" id="edit_mobile" ReadOnly="true" Text="" Visible="false" TextMode="Number" MaxLength="11"></asp:TextBox>&nbsp&nbsp<asp:Button runat="server" id="edit_mobilebtn"  style="height: 20px" OnClick="edit_mobilebtn_Click" Text="Edit" />&nbsp<asp:Button runat="server" id="mobileupdatebtn"  style="height: 20px" OnClick="mobileupdatebtn_Click" Visible="false" Text="UPDATE" /><br /><br />
                  <asp:Label runat="server">Password</asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:Label runat="server" id="displaypw" Visible="true"></asp:Label><asp:TextBox runat="server" id="edit_pw" ReadOnly="true" Text="" Visible="false"></asp:TextBox>&nbsp&nbsp<asp:Button runat="server" id="edit_pwbtn"  style="height: 20px" OnClick="edit_pwbtn_Click" Text="Edit" />&nbsp<asp:Button runat="server" id="pwupdatebtn"  style="height: 20px" OnClick="pwupdatebtn_Click" Visible="false" Text="UPDATE" /><br /><br />
                <asp:Button runat="server" id="update_btn"  style="height: 20px" Width="100px"  Text="Update" OnClick="update_btn_Click" />
            </div>
    </form>
</body>
</html>
