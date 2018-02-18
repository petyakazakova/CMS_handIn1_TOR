<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Select.aspx.cs" Inherits="CMS_handIn1.Admin" %>

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
            <div class="auto-style1">
            <asp:Label ID="LabelHeadline" runat="server" Text="Select items to publish:"></asp:Label>
&nbsp;<br />
            <br />
            <asp:Label ID="LabelSelections" runat="server" Text="Present selections"></asp:Label>
            <br />
            </div>
            <asp:DetailsView ID="DetailsViewSelections" runat="server" AutoGenerateRows="False" DataKeyNames="selectionID" DataSourceID="SqlDataSource1" Height="50px" Width="217px" AllowPaging="True" HorizontalAlign="Center">
                <Fields>
                    <asp:BoundField DataField="selectionID" HeaderText="selectionID" ReadOnly="True" SortExpression="selectionID" />
                    <asp:BoundField DataField="mainItem" HeaderText="mainItem" SortExpression="mainItem" />
                    <asp:BoundField DataField="secondItem" HeaderText="secondItem" SortExpression="secondItem" />
                    <asp:BoundField DataField="thirdItem" HeaderText="thirdItem" SortExpression="thirdItem" />
                    <asp:BoundField DataField="jokeID" HeaderText="jokeID" SortExpression="jokeID" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CMSConnectionString %>" DeleteCommand="DELETE FROM [Selection] WHERE [selectionID] = @selectionID" InsertCommand="INSERT INTO [Selection] ([selectionID], [mainItem], [secondItem], [thirdItem], [jokeID]) VALUES (@selectionID, @mainItem, @secondItem, @thirdItem, @jokeID)" SelectCommand="SELECT * FROM [Selection]" UpdateCommand="UPDATE [Selection] SET [mainItem] = @mainItem, [secondItem] = @secondItem, [thirdItem] = @thirdItem, [jokeID] = @jokeID WHERE [selectionID] = @selectionID">
                <DeleteParameters>
                    <asp:Parameter Name="selectionID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="selectionID" Type="Int32" />
                    <asp:Parameter Name="mainItem" Type="Int32" />
                    <asp:Parameter Name="secondItem" Type="Int32" />
                    <asp:Parameter Name="thirdItem" Type="Int32" />
                    <asp:Parameter Name="jokeID" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="mainItem" Type="Int32" />
                    <asp:Parameter Name="secondItem" Type="Int32" />
                    <asp:Parameter Name="thirdItem" Type="Int32" />
                    <asp:Parameter Name="jokeID" Type="Int32" />
                    <asp:Parameter Name="selectionID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <div class="auto-style1">
            <br />
            <asp:Label ID="LabelMainItem" runat="server" Text="Available main item"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownListMainItem" runat="server" DataSourceID="SqlDataSource3" DataTextField="headline" DataValueField="itemID" Width="214px" >
            </asp:DropDownList>
            </div>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CMSConnectionString %>" DeleteCommand="DELETE FROM [Items] WHERE [itemID] = @itemID" InsertCommand="INSERT INTO [Items] ([itemID], [category], [headline], [picture], [description]) VALUES (@itemID, @category, @headline, @picture, @description)" SelectCommand="SELECT * FROM [Items]" UpdateCommand="UPDATE [Items] SET [category] = @category, [headline] = @headline, [picture] = @picture, [description] = @description WHERE [itemID] = @itemID">
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
            <div class="auto-style1">
            <br />
            <br />
            <asp:Label ID="LabelSecondItem" runat="server" Text="Available second item"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownListSecondItem" runat="server" DataSourceID="SqlDataSource3" DataTextField="headline" DataValueField="itemID" Width="214px">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="LabelThirdItem" runat="server" Text="Available third item "></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownListThirdItem" runat="server" DataSourceID="SqlDataSource3" DataTextField="headline" DataValueField="itemID" Width="214px">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="LabelJoke" runat="server" Text="Available jokes"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownListJoke" runat="server" DataSourceID="SqlDataSourceJoke" DataTextField="caption" DataValueField="jokeID" Width="214px">
            </asp:DropDownList>
            </div>
            <asp:SqlDataSource ID="SqlDataSourceJoke" runat="server" ConnectionString="<%$ ConnectionStrings:CMSConnectionString %>" DeleteCommand="DELETE FROM [Jokes] WHERE [jokeID] = @jokeID" InsertCommand="INSERT INTO [Jokes] ([jokeID], [caption], [fileLink]) VALUES (@jokeID, @caption, @fileLink)" SelectCommand="SELECT * FROM [Jokes]" UpdateCommand="UPDATE [Jokes] SET [caption] = @caption, [fileLink] = @fileLink WHERE [jokeID] = @jokeID">
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
            <div class="auto-style1">
            <br />
            <br />
            <asp:Button ID="ButtonChoose" runat="server" Text="Choose new selection" OnClick="ButtonChoose_Click" />
            <br />
            <br />
            <br />
            <asp:Label ID="LabelMessage" runat="server" ForeColor="Green"></asp:Label>
            <br />
            </div>
        </div>
    </form>
</body>
</html>
