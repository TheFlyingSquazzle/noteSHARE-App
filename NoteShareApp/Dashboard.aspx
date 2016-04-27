<%@ Page Title="" Language="C#" MasterPageFile="~/NoteShareMaster.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<asp:Content ID="DashboardContent" ContentPlaceHolderID="MainContent" Runat="Server">

    <img id="dashLogo" src="Images/noteLogo.png" />
    <asp:Label ID="NameLabel" runat="server"></asp:Label>
    <a id="accSettingLink" href="AccountSettings.aspx">Accounts Settings</a>
    
    <div id="boxes">
        <div class="box">
            <p>Notes Uploaded: <br />
              <asp:Label ID="NotesUploadedLabel" runat="server"></asp:Label>
            </p>
        </div>
        <div class="box">
            <p>Notes Downloaded: <br />
               <asp:Label ID="NotesDownloadedLabel" runat="server"></asp:Label>
            </p>
        </div>
        <div class="box">
            <p>SHAREpoints: <br />
             <asp:Label ID="SharePointsLabel" runat="server"></asp:Label>
            </p>
        </div>
    </div>

    <form id="DashboardForm" runat="server">

    <asp:Button ID="BrowseNotesButton" runat="server" Text="Browse Shared Notes" ForeColor="#7CCBF2" Font-Underline="False" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Size="16pt" Width="100%" />
    <br />
    <br />
    <asp:Button ID="UploadNotesButton" runat="server" Text="Upload Notes" ForeColor="#7CCBF2" BackColor="White" BorderStyle="None" Font-Bold="True" Width="100%" Visible="True" onclick="UploadNotesButton_Click" Font-Size="16pt" />
    <asp:SqlDataSource ID="GetUseridDataSource" runat="server"></asp:SqlDataSource>
    </form>

</asp:Content>

