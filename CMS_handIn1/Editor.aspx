<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Editor.aspx.cs" Inherits="CMS_handIn1.CreateReadDelete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <br />
            <asp:Label ID="Label1" runat="server" Text="Admin editor page"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Update or Delete item:"></asp:Label>
            <div class="auto-style1">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="itemID" DataSourceID="SqlDataSource1" Width="1110px" AllowPaging="True" HorizontalAlign="Center">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="itemID" HeaderText="itemID" ReadOnly="True" SortExpression="itemID" />
                    <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                    <asp:BoundField DataField="headline" HeaderText="headline" SortExpression="headline" />
                    <asp:BoundField DataField="picture" HeaderText="picture" SortExpression="picture" />
                    <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                </Columns>
            </asp:GridView>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CMSConnectionString %>" DeleteCommand="DELETE FROM [Items] WHERE [itemID] = @itemID" InsertCommand="INSERT INTO [Items] ([itemID], [category], [headline], [picture], [description]) VALUES (@itemID, @category, @headline, @picture, @description)" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [Items]" UpdateCommand="UPDATE [Items] SET [category] = @category, [headline] = @headline, [picture] = @picture, [description] = @description WHERE [itemID] = @itemID">
                <DeleteParameters>
                    <asp:Parameter Name="itemID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="itemID" Type="Int32" />
                    <asp:Parameter Name="category" Type="String" />
                    <asp:Parameter Name="headline" Type="String" />
                    <asp:Parameter Name="picture" Type="String" />
                    <asp:Parameter Name="description" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="category" Type="String" />
                    <asp:Parameter Name="headline" Type="String" />
                    <asp:Parameter Name="picture" Type="String" />
                    <asp:Parameter Name="description" Type="String" />
                    <asp:Parameter Name="itemID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Insert new item:"></asp:Label>
            <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="384px" HorizontalAlign="Center">
                <Fields>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Update or Delete jokes:"></asp:Label>
            <br />
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="jokeID" DataSourceID="SqlDataSource2" Width="412px" HorizontalAlign="Center">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="jokeID" HeaderText="jokeID" ReadOnly="True" SortExpression="jokeID" />
                    <asp:BoundField DataField="caption" HeaderText="caption" SortExpression="caption" />
                    <asp:BoundField DataField="fileLink" HeaderText="fileLink" SortExpression="fileLink" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Insert new joke:"></asp:Label>
            <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="jokeID" DataSourceID="SqlDataSource2" DefaultMode="Insert" Height="50px" Width="221px" HorizontalAlign="Center">
                <Fields>
                    <asp:BoundField DataField="jokeID" HeaderText="jokeID" ReadOnly="True" SortExpression="jokeID" />
                    <asp:BoundField DataField="caption" HeaderText="caption" SortExpression="caption" />
                    <asp:BoundField DataField="fileLink" HeaderText="fileLink" SortExpression="fileLink" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CMSConnectionString2 %>" DeleteCommand="DELETE FROM [Jokes] WHERE [jokeID] = @jokeID" InsertCommand="INSERT INTO [Jokes] ([jokeID], [caption], [fileLink]) VALUES (@jokeID, @caption, @fileLink)" SelectCommand="SELECT * FROM [Jokes]" UpdateCommand="UPDATE [Jokes] SET [caption] = @caption, [fileLink] = @fileLink WHERE [jokeID] = @jokeID">
                <DeleteParameters>
                    <asp:Parameter Name="jokeID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="jokeID" Type="Int32" />
                    <asp:Parameter Name="caption" Type="String" />
                    <asp:Parameter Name="fileLink" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="caption" Type="String" />
                    <asp:Parameter Name="fileLink" Type="String" />
                    <asp:Parameter Name="jokeID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Update or Delete Company/Organization: "></asp:Label>
            <br />
            <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource3" Width="446px" HorizontalAlign="Center">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="logo" HeaderText="logo" SortExpression="logo" />
                    <asp:BoundField DataField="headline" HeaderText="headline" SortExpression="headline" />
                    <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CMSConnectionString %>" DeleteCommand="DELETE FROM [MasterTable] WHERE [ID] = @ID" InsertCommand="INSERT INTO [MasterTable] ([ID], [logo], [headline], [author]) VALUES (@ID, @logo, @headline, @author)" SelectCommand="SELECT * FROM [MasterTable]" UpdateCommand="UPDATE [MasterTable] SET [logo] = @logo, [headline] = @headline, [author] = @author WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                    <asp:Parameter Name="logo" Type="String" />
                    <asp:Parameter Name="headline" Type="String" />
                    <asp:Parameter Name="author" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="logo" Type="String" />
                    <asp:Parameter Name="headline" Type="String" />
                    <asp:Parameter Name="author" Type="String" />
                    <asp:Parameter Name="ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Label ID="Label7" runat="server" Text="Insert new Company/Organization:"></asp:Label>
            <br />
            <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource3" DefaultMode="Insert" Height="50px" Width="125px" HorizontalAlign="Center">
                <Fields>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="logo" HeaderText="logo" SortExpression="logo" />
                    <asp:BoundField DataField="headline" HeaderText="headline" SortExpression="headline" />
                    <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
