<%@ Page Title="" Language="C#" MasterPageFile="~/NoteShareMaster.master" AutoEventWireup="true" CodeFile="CreateAccount.aspx.cs" Inherits="CreateAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div data-role="main" class="ui-content">

        
            <div data-role="header">
                <h2>Create Account</h2>
            </div>

        <form id="CreateAccForm" runat="server">


            <asp:Label ID="NameLabel" runat="server" Text="Name:" Font-Size="16pt" EnableTheming="True"></asp:Label>
            <asp:TextBox ID="NameTextBox" runat="server" Font-Size="16pt" Width="100%"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="EmailLabel" runat="server" Text="Email:" Font-Size="16pt"></asp:Label>
            <asp:TextBox ID="EmailTextBox" runat="server" Font-Size="16pt" ValidateRequestMode="Inherit" Width="100%"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="PassLabel" runat="server" Text="Password:" Font-Size="16pt"></asp:Label>
            <asp:TextBox ID="PassTextBox" runat="server" Width="100%" Font-Size="16pt"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="ConfPassLabel" runat="server" Text="Confirm Password:" Font-Size="16pt"></asp:Label>
            <asp:TextBox ID="ConfPassTextBox" runat="server" Font-Size="16pt" Width="100%"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="CreateAccButton" runat="server" Text="Create Account" Width="100%" BackColor="White" BorderStyle="None" Font-Size="14pt" ForeColor="#7CCBF2" />
        </form>
    </div>


</asp:Content>

