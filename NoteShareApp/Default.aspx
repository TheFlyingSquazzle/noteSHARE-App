<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log In</title>
    <link rel="stylesheet" href="Content/NoteShareMain.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
    <script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
    <link href='https://fonts.googleapis.com/css?family=Droid+Sans' rel='stylesheet' type='text/css' />
</head>

<body>
    <div data-role="page">
            <div id="header" data-role="header">
                <h2>Log In</h2>
            </div>

            <div data-role="main" class="ui-content">

                <img src="Images/noteLogo.png" />
                <h1 id="mainLabel">noteSHARE</h1>


            <form id="LogInForm" data-ajax="False" runat="server">
                <br />
                <br />
                    <asp:Label ID="Email_Login_Label" runat="server" Text="Email:" Font-Size="16pt" ></asp:Label>
                    <asp:TextBox ID="Email_Login_TextBox" runat="server" Font-Size="16pt" Width="100%" TextMode="Email" PlaceHolder="example@okstate.edu"></asp:TextBox><asp:RegularExpressionValidator ID="EmailValidator" runat="server" ErrorMessage="Invalid Email" ControlToValidate="Email_Login_Textbox" ValidationExpression="^[a-z0-9](\.?[a-z0-9]){5,}@okstate\.edu$" ForeColor="Red"></asp:RegularExpressionValidator>
                <br />
                    <asp:Label ID="Password_Login_Label" runat="server" Text="Password:" Font-Size="16pt"></asp:Label>
                    <asp:TextBox ID="Password_Login_TextBox" runat="server" Font-Size="16pt" Width="100%" TextMode="Password"></asp:TextBox>

                <br />
                <br />
                <br />
                <br />

                <asp:Button ID="LoginButton" runat="server" Text="Login" BackColor="White" Width="100%" Height="20%" BorderStyle="None" Font-Bold="True" Font-Size="14pt" ForeColor="#7CCBF2" OnClick="LoginButton_Click" />
                <asp:SqlDataSource ID="LoginDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:noteSHAREdb %>" SelectCommand="SELECT * FROM [UserAccount] WHERE (([Email] = @Email) AND ([Password] = @Password))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Email_Login_TextBox" Name="Email" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="Password_Login_TextBox" Name="Password" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <br />
                <asp:Button ID="CreateAccountButton" runat="server" Text="Create Account" Font-Size="14" BackColor="White" BorderStyle="None" Width="100%" Font-Bold="True" ForeColor="#7CCBF2" OnClick="CreateAccountButton_Click"/>
            </form>

            </div>

        </div>

</body>
</html>
