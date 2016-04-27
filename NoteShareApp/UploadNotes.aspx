<%@ Page Title="" Language="C#" MasterPageFile="~/NoteShareMaster.master" AutoEventWireup="true" CodeFile="UploadNotes.aspx.cs" Inherits="UploadNotes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
        <div data-role="main" class="ui-content">

        
            <div data-role="header">
                <h2>Upload Notes</h2>
            </div>

        <form id="UploadForm" runat="server">
            <br />
            <br />
            <asp:Label ID="FileNameLabel" runat="server" Text="File:" Font-Size="12pt"></asp:Label>
            <br />
            <asp:FileUpload ID="FileUploader" runat="server" BackColor="White" BorderStyle="None" ForeColor="#7CCBF2" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="UploadButton" runat="server" Text="Upload File" ForeColor="#7CCBF2" Font-Size="16pt" BorderStyle="None" BackColor="White" Width="100%" UseSubmitBehavior="True" Font-Bold="True" />

        </form>
    </div>
</asp:Content>

