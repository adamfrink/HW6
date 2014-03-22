<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewReciepe.aspx.vb" Inherits="detailsview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:cs_reciepeDatabase %>" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @original_Id AND [Reciepe Name] = @original_Reciepe_Name AND [Submitted By] = @original_Submitted_By AND [Ingredient #1] = @original_column1 AND (([Ingredient #2] = @original_column2) OR ([Ingredient #2] IS NULL AND @original_column2 IS NULL)) AND (([Ingredient #3] = @original_column3) OR ([Ingredient #3] IS NULL AND @original_column3 IS NULL)) AND (([Ingredient #4] = @original_column4) OR ([Ingredient #4] IS NULL AND @original_column4 IS NULL)) AND (([Ingredient #5] = @original_column5) OR ([Ingredient #5] IS NULL AND @original_column5 IS NULL)) AND [Preparation] = @original_Preparation AND (([Notes] = @original_Notes) OR ([Notes] IS NULL AND @original_Notes IS NULL))" InsertCommand="INSERT INTO [Table] ([Reciepe Name], [Submitted By], [Ingredient #1], [Ingredient #2], [Ingredient #3], [Ingredient #4], [Ingredient #5], [Preparation], [Notes]) VALUES (@Reciepe_Name, @Submitted_By, @column1, @column2, @column3, @column4, @column5, @Preparation, @Notes)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Table] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Table] SET [Reciepe Name] = @Reciepe_Name, [Submitted By] = @Submitted_By, [Ingredient #1] = @column1, [Ingredient #2] = @column2, [Ingredient #3] = @column3, [Ingredient #4] = @column4, [Ingredient #5] = @column5, [Preparation] = @Preparation, [Notes] = @Notes WHERE [Id] = @original_Id AND [Reciepe Name] = @original_Reciepe_Name AND [Submitted By] = @original_Submitted_By AND [Ingredient #1] = @original_column1 AND (([Ingredient #2] = @original_column2) OR ([Ingredient #2] IS NULL AND @original_column2 IS NULL)) AND (([Ingredient #3] = @original_column3) OR ([Ingredient #3] IS NULL AND @original_column3 IS NULL)) AND (([Ingredient #4] = @original_column4) OR ([Ingredient #4] IS NULL AND @original_column4 IS NULL)) AND (([Ingredient #5] = @original_column5) OR ([Ingredient #5] IS NULL AND @original_column5 IS NULL)) AND [Preparation] = @original_Preparation AND (([Notes] = @original_Notes) OR ([Notes] IS NULL AND @original_Notes IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Reciepe_Name" Type="String" />
                <asp:Parameter Name="original_Submitted_By" Type="String" />
                <asp:Parameter Name="original_column1" Type="String" />
                <asp:Parameter Name="original_column2" Type="String" />
                <asp:Parameter Name="original_column3" Type="String" />
                <asp:Parameter Name="original_column4" Type="String" />
                <asp:Parameter Name="original_column5" Type="String" />
                <asp:Parameter Name="original_Preparation" Type="String" />
                <asp:Parameter Name="original_Notes" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Reciepe_Name" Type="String" />
                <asp:Parameter Name="Submitted_By" Type="String" />
                <asp:Parameter Name="column1" Type="String" />
                <asp:Parameter Name="column2" Type="String" />
                <asp:Parameter Name="column3" Type="String" />
                <asp:Parameter Name="column4" Type="String" />
                <asp:Parameter Name="column5" Type="String" />
                <asp:Parameter Name="Preparation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Reciepe_Name" Type="String" />
                <asp:Parameter Name="Submitted_By" Type="String" />
                <asp:Parameter Name="column1" Type="String" />
                <asp:Parameter Name="column2" Type="String" />
                <asp:Parameter Name="column3" Type="String" />
                <asp:Parameter Name="column4" Type="String" />
                <asp:Parameter Name="column5" Type="String" />
                <asp:Parameter Name="Preparation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Reciepe_Name" Type="String" />
                <asp:Parameter Name="original_Submitted_By" Type="String" />
                <asp:Parameter Name="original_column1" Type="String" />
                <asp:Parameter Name="original_column2" Type="String" />
                <asp:Parameter Name="original_column3" Type="String" />
                <asp:Parameter Name="original_column4" Type="String" />
                <asp:Parameter Name="original_column5" Type="String" />
                <asp:Parameter Name="original_Preparation" Type="String" />
                <asp:Parameter Name="original_Notes" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="50px" Width="347px" DefaultMode="Insert">
            <Fields>
                <asp:BoundField DataField="Reciepe Name" HeaderText="Reciepe Name" SortExpression="Reciepe Name" />
                <asp:BoundField DataField="Submitted By" HeaderText="Submitted By" SortExpression="Submitted By" />
                <asp:BoundField DataField="Ingredient #1" HeaderText="Ingredient #1" SortExpression="Ingredient #1" />
                <asp:BoundField DataField="Ingredient #2" HeaderText="Ingredient #2" SortExpression="Ingredient #2" />
                <asp:BoundField DataField="Ingredient #3" HeaderText="Ingredient #3" SortExpression="Ingredient #3" />
                <asp:BoundField DataField="Ingredient #4" HeaderText="Ingredient #4" SortExpression="Ingredient #4" />
                <asp:BoundField DataField="Ingredient #5" HeaderText="Ingredient #5" SortExpression="Ingredient #5" />
                <asp:BoundField DataField="Preparation" HeaderText="Preparation" SortExpression="Preparation" />
                <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    
    </div>
    </form>
</body>
</html>
