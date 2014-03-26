<%@ Page Language="VB" AutoEventWireup="false" CodeFile="gridview.aspx.vb" Inherits="gridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="StyleSheet" type="text/css" href="./StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
   
        
      <div id="header">  
    <h2 class="textCenter"> Wicked Easy Reciepes </h2>
        
    <h3 class="textCenter"> Using 5 Ingredients or Less </h3>
        
        </div>
        
        <div id="nav">
	<ul>
		<li> <a href="gridview.aspx">Home</a>  </li> 
		<li> <a href="NewReciepe.aspx">New Reciepe</a> </li> 
        <li> <a href="about.aspx">About</a> </li> 
		<li> <a href="contactUs.aspx">Contact Us</a> </li>
	</ul>
        </div>
       
         <div id="center">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_reciepeDatabase %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" Class="coral" DataSourceID="SqlDataSource1">
            <AlternatingRowStyle CssClass ="alt" BorderStyle="None" />
            <Columns>
                <asp:BoundField DataField="Reciepe Name" HeaderText="Reciepe Name" SortExpression="Reciepe Name" />
                <asp:BoundField DataField="Submitted By" HeaderText="Submitted By" SortExpression="Submitted By" />
                <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="detailsview.aspx?Id={0}" Text="View Details" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
