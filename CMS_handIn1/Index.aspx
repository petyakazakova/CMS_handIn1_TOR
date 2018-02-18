<%@ Page Theme="ThemeIndex" Title="Template page with items description" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CMS_handIn1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- MAIN ITEM -->
    <div id="main-wrap">
        <asp:Repeater ID="RepeaterMainItem" runat="server">
            <HeaderTemplate>
                <table class=" mainTable">
                    <tr>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <td class="container mainTable">
                    <div class="auto-style2">
                        <asp:Label ID="LabelMainHeadline" runat="server" Text="" SkinID="LabelMainHeadline" CssClass="LabelMainHeadline"><%# Eval("headline") %><br /></asp:Label>
                    </div>
                    <div class="auto-style2">
                        <asp:Label ID="LabelMainCategory" runat="server" Text=""  SkinID="LabelMainCategory" CssClass="LabelMainCategory">- <%# Eval("category") %>-<br /></asp:Label>
                    </div>
                    <div class="auto-style2">
                        <img src="Pictures/<%# Eval("picture") %>" alt="" width="250px" height="250px" /><br />
                    </div>
                    <div class="auto-style2">
                        <asp:Label ID="LabelMainDesc" skinId="LabelMainDesc" runat="server" Text=""><%# Eval("description") %><br /></asp:Label></div>
                </td>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>    
         </asp:Repeater>    
        <br />
        <asp:SqlDataSource ID="SqlDataSourceItem" runat="server" ConnectionString="<%$ ConnectionStrings:CMSConnectionString %>" SelectCommand="SELECT * FROM [Items]">
        </asp:SqlDataSource>
        </div>
   
    <br />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <!-- SECOND ITEM -->
        <asp:Repeater ID="RepeaterSecond" runat="server">
            <HeaderTemplate>
                <table class="mytable">
                    <tr>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <td class="auto-style2">
                    <div class="auto-style2"><asp:Label ID="LabelSecHeadline" CssClass="LabelSecHeadline" SkinId="LabelSecHeadline" runat="server" Text=""><%# Eval("headline") %><br /></asp:Label></div>
                    <br />
                    <div class="auto-style2"><asp:Label ID="LabelSecCategory" CssClass="LabelSecCategory" SkinId="LabelSecCategory" runat="server" Text=""><%# Eval("category") %><br /></asp:Label></div>
                    <div class="auto-style2"><img src="Pictures/<%# Eval("picture") %>" alt=""  width="150px" height="150px"/><br /></div>
                    <div class="auto-style2"><asp:Label ID="LabelSecDesc" SkinId="LabelSecDesc" runat="server" Text=""><%# Eval("description") %><br /></asp:Label></div>
                </td>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater> 
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CMSConnectionString %>" SelectCommand="SELECT * FROM [Items]"></asp:SqlDataSource>
    <br />
</asp:Content>

<asp:Content ID="Content10" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
        <!-- THIRD ITEM -->
        <asp:Repeater ID="RepeaterThird" runat="server">
                <HeaderTemplate>
                    <table class="mytable">
                        <tr>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <td class="auto-style2">
                        <div class="auto-style2"><asp:Label ID="LabelSecHeadline" SkinID="LabelSecHeadline" runat="server" Text=""><%# Eval("headline") %><br /></asp:Label></div>
                        <br />
                        <div class="auto-style2"><asp:Label ID="LabelSecCategory" SkinId="LabelSecCategory" runat="server" Text=""><%# Eval("category") %><br /></asp:Label></div>
                        <div class="auto-style2"><img src="Pictures/<%# Eval("picture") %>"  alt="" width="150px" height="150px"/><br /></div>
                        <div class="auto-style2"><asp:Label ID="LabelSecDesc" skinId="LabelSecDesc" runat="server" Text=""><%# Eval("description") %><br /></asp:Label></div>
                    </td>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater> 
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CMSConnectionString %>" SelectCommand="SELECT * FROM [Items]"></asp:SqlDataSource>
        <br />
</asp:Content>

<asp:Content ID="Content14" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
        <!-- JOKE -->
        <asp:Repeater ID="RepeaterJoke" runat="server">
            <HeaderTemplate>
                <table class="mytable tableJoke">
                    <tr>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <td class="auto-style2">
                    <div class="auto-style2"><asp:Label ID="LabelCaption" SkinId="LabelCaption" runat="server" Text=""><%# Eval("caption") %><br /></asp:Label></div>
                    <br />
                    <div class="auto-style2">
                        <asp:Label ID="LabelJokes" SkinId="LabelJokes" runat="server" Text="Jokes"></asp:Label><br /><br /></div>
                    <div class="auto-style2"><img src="Jokes/<%# Eval("fileLink") %>" alt="" max-width="500px" /><br /></div>
                </td>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater> 
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CMSConnectionString %>" SelectCommand="SELECT * FROM [Jokes]"></asp:SqlDataSource>
        <br />
    <br />
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="footer" runat="server">
    <!-- FOOTER -->
    <div class="auto-style2" > 
        <br />
            <asp:Label ID="LabelFooter" SkinID="LabelFooter" runat="server" Text="Cphbusiness Student Project 2018 @ Petya Kazakova" ></asp:Label>
        <br />
        <br />
    </div>
</asp:Content>
