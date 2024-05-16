<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="order_invoice.aspx.cs" Inherits="SEGI_RestaurantManagement_SysProj_FYP.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="order_invoice.css" />
</head>
<body>
    <form id="form1" runat="server">
         <script language="javascript">
             function printpage() {
                window.print()
            }
         </script>
        <div id="container"  ><h1 style="text-align:center; padding-top:20px;">Invoice</h1><br />
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="100px" Width="700px" ShowFooter="True"  >
            <Columns>
                <asp:BoundField DataField="column1" HeaderText="Date" SortExpression="column1" />
                <asp:BoundField DataField="item_name" HeaderText="Name" SortExpression="item_name" />
                <asp:TemplateField HeaderText="item_img" SortExpression="Image">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("item_img") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" GenerateEmptyAlternateText="True" Height="70px" ImageUrl='<%# Eval("item_img") %>' Width="100px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="item_quantity" HeaderText="Quantity" SortExpression="item_quantity" />
                <asp:BoundField DataField="item_prize" HeaderText="Price" SortExpression="item_prize" />
            </Columns>
                 <EmptyDataTemplate>
                     <asp:Image ID="Image1" runat="server" Height="98px" ImageUrl='<%# Eval("item_img") %>' Width="108px" />
                 </EmptyDataTemplate>
                 <HeaderStyle BackColor="Lime" />
                 <RowStyle BorderStyle="None" />
        </asp:GridView>
           
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:restaurant_managementConnectionString %>" SelectCommand="SELECT [item_name], [item_quantity], [item_prize], [item_img], [date&amp;Time] AS column1 FROM [Orders__temp]"></asp:SqlDataSource>
        </div>
        <asp:Button ID="print_btn" runat="server" Text="PRINT INVOICE" OnClientClick="printpage()" OnClick="print_btn_Click" /> <asp:Button ID="back_btn" runat="server" Text="BACK" OnClick="back_btn_Click" />
    </form>
</body>
</html>
