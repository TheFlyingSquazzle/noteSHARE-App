<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log In</title>
    <link rel="stylesheet" href="Content/NoteShareMain.css" />
</head>
<body>
    <div>
        <div id="header">
            <h2>Log In</h2>
        </div>

        <img src="Images/noteLogo.png" />
        <h1 id="mainLabel">noteSHARE</h1>

    </div>


    <form id="LogInForm" runat="server">
        <br />
            <asp:Label ID="Email_Login_Label" runat="server" Text="Email:" Font-Size="24pt" Height="37px"></asp:Label>
        <br />
        <br />
        <br />
            <asp:TextBox ID="Email_Login_Button" runat="server" Height="73px" Width="848px" Font-Size="24pt"></asp:TextBox>
        <br />
    </form>
</body>
</html>
