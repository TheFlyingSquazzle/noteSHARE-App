<%@ Page Title="" Language="C#" MasterPageFile="~/NoteShareMaster.master" AutoEventWireup="true" CodeFile="CreateAccount.aspx.cs" Inherits="CreateAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div data-role="main" class="ui-content">

        
            <div data-role="header">
                <h2>Create Account</h2>
            </div>

        <form id="CreateAccForm" runat="server">


            <asp:Label ID="FirstNameLabel" runat="server" Text="First Name:" Font-Size="16pt" EnableTheming="True"></asp:Label>
            <asp:TextBox ID="FirstNameTextBox" runat="server" Font-Size="16pt" Width="100%"></asp:TextBox><asp:RequiredFieldValidator ID="FirstNameValidator" runat="server" ErrorMessage="Enter First Name" ControlToValidate="FirstNameTextBox"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="LastNameLabel" runat="server" Text="Last Name:" Font-Size="16pt" EnableTheming="True" ClientIDMode="Inherit"></asp:Label>
            <asp:TextBox ID="LastNameTextBox" runat="server" Font-Size="16pt" Width="100%"></asp:TextBox><asp:RequiredFieldValidator ID="LastNameValidator" runat="server" ErrorMessage="Enter Last Name" ControlToValidate="LastNameTextBox"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="EmailLabel" runat="server" Text="Email:" Font-Size="16pt"></asp:Label>
            <asp:TextBox ID="EmailTextBox" runat="server" Font-Size="16pt" Width="100%"></asp:TextBox><asp:RegularExpressionValidator ID="EmailValidator" runat="server" ErrorMessage="Invalid Email" ValidationExpression="^[a-z0-9](\.?[a-z0-9]){5,}@okstate\.edu$" ControlToValidate="EmailTextBox"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Label ID="PassLabel" runat="server" Text="Password:" Font-Size="16pt"></asp:Label>
            <asp:TextBox ID="PassTextBox" runat="server" Width="100%" Font-Size="16pt" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="PassValidator" runat="server" ErrorMessage="Enter a Password" ControlToValidate="PassTextBox"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="ConfPassLabel" runat="server" Text="Confirm Password:" Font-Size="16pt"></asp:Label>
            <asp:TextBox ID="ConfPassTextBox" runat="server" Font-Size="16pt" Width="100%" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="ConfPassValidator" runat="server" ErrorMessage="Enter Password Again" ControlToValidate="ConfPassTextBox"></asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="CreateAccountButton" runat="server" Text="Create Account" Width="100%" BackColor="White" ForeColor="#7CCBF2" BorderStyle="None" Font-Bold="True" Font-Size="14pt" OnClick="CreateAccountButton_Click" />
            <asp:SqlDataSource ID="CreateAccountDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:noteSHAREdb %>" InsertCommand="Insert into [UserAccount] (Password,Email,FirstName,LastName,SharePoints,Downloaded,Uploaded) values (@password, @email, @first, @last, @points, @down, @up)" SelectCommand="SELECT * FROM [UserAccount]">
                <InsertParameters>
                    <asp:ControlParameter ControlID="FirstNameTextBox" Name="first" PropertyName="Text" />
                    <asp:ControlParameter ControlID="LastNameTextBox" Name="last" PropertyName="Text" />
                    <asp:ControlParameter ControlID="EmailTextBox" Name="email" PropertyName="Text" />
                    <asp:ControlParameter ControlID="PassTextBox" Name="password" PropertyName="Text" />
                    <asp:Parameter DefaultValue="10" Name="points" />
                    <asp:Parameter DefaultValue="0" Name="up" />
                    <asp:Parameter DefaultValue="0" Name="down" />
                </InsertParameters>
            </asp:SqlDataSource>
        </form>
    </div>


</asp:Content>

