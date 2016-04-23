<%@ Page Title="" Language="C#" MasterPageFile="~/NoteShareMaster.master" AutoEventWireup="true" CodeFile="AccountSettings.aspx.cs" Inherits="AccountSettings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
        <div data-role="main" class="ui-content">

        
            <div data-role="header">
                <h2>Your Account</h2>
            </div>

        <form id="AccountForm" runat="server">


            <asp:Label ID="NameLabel" runat="server" Text="" Font-Size="16pt" EnableTheming="True"></asp:Label>
            <br />
            <br />
            <asp:Label ID="EmailLabel" runat="server" Text="" Font-Size="16pt"></asp:Label>
            <br />
            <br />
            <asp:Label ID="PassLabel" runat="server" Text="" Font-Size="16pt"></asp:Label>
            <br />
            <br />
            <asp:Button ID="ChangePassButton" runat="server" Text="Change Password" Width="100%" BackColor="White" BorderStyle="None" Font-Size="16pt" ForeColor="#7CCBF2" />
        </form>
    </div>

</asp:Content>

