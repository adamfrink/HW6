<%@ Page Language="VB" AutoEventWireup="false" CodeFile="gridview.aspx.vb" Inherits="gridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_reciepeDatabase %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Reciepe Name" HeaderText="Reciepe Name" SortExpression="Reciepe Name" />
                <asp:BoundField DataField="Submitted By" HeaderText="Submitted By" SortExpression="Submitted By" />
                <asp:BoundField DataField="Ingredient #1" HeaderText="Ingredient #1" SortExpression="Ingredient #1" />
                <asp:BoundField DataField="Ingredient #2" HeaderText="Ingredient #2" SortExpression="Ingredient #2" />
                <asp:BoundField DataField="Ingredient #3" HeaderText="Ingredient #3" SortExpression="Ingredient #3" />
                <asp:BoundField DataField="Ingredient #4" HeaderText="Ingredient #4" SortExpression="Ingredient #4" />
                <asp:BoundField DataField="Ingredient #5" HeaderText="Ingredient #5" SortExpression="Ingredient #5" />
                <asp:BoundField DataField="Preparation" HeaderText="Preparation" SortExpression="Preparation" />
                <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
