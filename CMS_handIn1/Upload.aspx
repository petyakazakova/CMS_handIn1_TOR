<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="CMS_handIn1.Upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Upload page</title>
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
            <br />
            <asp:Label ID="LabelChoose" runat="server" Text="Choose a picture to upload "></asp:Label>
            <br />
            <br />
            <asp:FileUpload ID="FileUpload" runat="server" Width="455px" />
            <br />
            <br />
            <asp:Label ID="LabelNewName" runat="server" Text="New file name + File extension"></asp:Label>
            <br />
            <asp:TextBox ID="TextBoxNewName" runat="server" Width="340px"></asp:TextBox>
&nbsp;<br />
            <br />
            <asp:Button ID="ButtonUploadPicture" runat="server" OnClick="ButtonUploadPicture_Click" Text="Upload to Pictures" Width="181px" />
&nbsp;<asp:Button ID="ButtonUploadJoke" runat="server" OnClick="ButtonUploadJoke_Click" Text="Upload to Jokes" Width="181px" />
            <br />
            <br />
            <asp:Label ID="LabelMessage" runat="server"></asp:Label>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
