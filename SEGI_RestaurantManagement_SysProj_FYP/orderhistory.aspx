<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="orderhistory.aspx.cs" Inherits="SEGI_RestaurantManagement_SysProj_FYP.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ORDER HISTORY</title>
    <link rel="stylesheet" href="orderhistory.css" />
</head>
<body>
    <form id="form1" runat="server">
       
         <div id="container" ><h1 style="text-align:center; padding-top:20px;">ORDER HISTORY</h1><br />
            </div>
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="100px" Width="700px">
             <Columns>
                 <asp:BoundField DataField="item_name" HeaderText="Name" SortExpression="item_name" />
                 <asp:BoundField DataField="item_quantity" HeaderText="Quantity" SortExpression="item_quantity" />
                 <asp:BoundField DataField="item_prize" HeaderText="Price" SortExpression="item_prize" />
                 <asp:TemplateField HeaderText="Item Img" SortExpression="item_img">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("item_img") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Image ID="Image1" runat="server" Height="98px" ImageUrl='<%# Eval("item_img") %>' Width="108px" />
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:BoundField DataField="column1" HeaderText="Date" SortExpression="column1" />
             </Columns>
             <HeaderStyle BackColor="#66FF33" />
         </asp:GridView>        
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:restaurant_managementConnectionString %>" SelectCommand="SELECT [item_name], [item_quantity], [item_prize], [item_img], [date&amp;Time] AS column1 FROM [Orders_invoice] WHERE ([cust_id] = @cust_id) ORDER BY column1 Desc">
             <SelectParameters>
                 <asp:SessionParameter DefaultValue="0" Name="cust_id" SessionField="name" Type="String" />
             </SelectParameters>
         </asp:SqlDataSource>
       <asp:Button ID="backbtn" runat="server" Text="BACK" OnClick="back_btn_Click" />
    </form>
</body>
</html>
