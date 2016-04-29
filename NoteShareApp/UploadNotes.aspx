<%@ Page Title="" Language="C#" MasterPageFile="~/NoteShareMaster.master" AutoEventWireup="true" CodeFile="UploadNotes.aspx.cs" Inherits="UploadNotes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <script type="text/javascript">
        function popupFunction() {
            $('popup').bPopup({
                easing: 'easeOutBack', //uses jQuery easing plugin
                speed: 450,
                transition: 'slideDown'
            });
        };
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
        <div data-role="main" class="ui-content">

        
            <div data-role="header">
                <h2>Upload Notes</h2>
            </div>

        <form id="UploadForm" data-ajax="False" runat="server">
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
            <asp:Button ID="UploadButton" runat="server" Text="Upload File" ForeColor="#7CCBF2" Font-Size="16pt" BorderStyle="None" BackColor="White" Width="100%" UseSubmitBehavior="True" Font-Bold="True" OnClick="UploadButton_Click" />
            <br />
            <br />
            <asp:Label ID="PopUpLabel" runat="server" Width="100%" ForeColor="Green"></asp:Label>

            <asp:SqlDataSource ID="SetFileNameDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:noteSHAREdb %>" SelectCommand="SELECT * FROM [Notes]" UpdateCommand="Update [Notes] set Title=@title, Price=@price, UserID=@user where NotesID=@note">
                <UpdateParameters>
                    <asp:ControlParameter ControlID="FileUploader" Name="title" PropertyName="FileName" />
                    <asp:Parameter DefaultValue="10" Name="price" />
                    <asp:Parameter DefaultValue="Session(&quot;NoteID&quot;)" Name="note" />
                    <asp:Parameter DefaultValue="Session(&quot;UserID&quot;)" Name="user" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </form>
    </div>
</asp:Content>

