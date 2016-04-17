<%@ Page Title="" Language="C#" MasterPageFile="~/NoteShareMaster.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<asp:Content ID="DashboardContent" ContentPlaceHolderID="MainContent" Runat="Server">

    <img id="dashLogo" src="Images/noteLogo.png" />
     <!--Pull account name from database here... OR make a page that pulls all information needed from the database and store in application and seesion variables -->
    <a id="accSettingLink" href="About.aspx">Accounts Settings</a>

    <div id="boxes">
        <div class="box">
            <p>Notes Uploaded: </p>
        </div>
        <div class="box">
            <p>Notes Downloaded: </p>
        </div>
        <div class="box">
            <p>SHAREpoints: </p>
        </div>
    </div>

    <button id="browseNotes">
        <p class="buttonText">Browse Shared Notes</p>
    </button>

    <button id="uploadNotes">
        <p class="buttonText">Upload Notes</p>
    </button>

</asp:Content>

