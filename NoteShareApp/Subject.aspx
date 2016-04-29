<%@ Page Title="" Language="C#" MasterPageFile="~/NoteShareMaster.master" AutoEventWireup="true" CodeFile="Subject.aspx.cs" Inherits="Subject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

         <div data-role="main" class="ui-content">

        
            <div data-role="header">
                <h2>Select Subject</h2>
            </div>

            <form id="UploadForm" runat="server">
                <br />
                <br />
                <asp:DropDownList ID="DropDownList1" runat="server" BackColor="White" ForeColor="#7CCBF2" Width="100%" Font-Size="20pt">
                    <asp:ListItem>Accounting</asp:ListItem>
                    <asp:ListItem>Economics</asp:ListItem>
                    <asp:ListItem>Finance</asp:ListItem>
                    <asp:ListItem>Marketing</asp:ListItem>
                    <asp:ListItem>MSIS</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />                <br />
                <br />                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:Button ID="NextButton" runat="server" Text="Next" ForeColor="#7CCBF2" Font-Size="20pt" BorderStyle="None" BackColor="White" Width="100%" UseSubmitBehavior="True" Font-Bold="True" OnClick="NextButton_Click" CausesValidation="False" />
                <asp:SqlDataSource ID="NotesUpload" runat="server" ConnectionString="<%$ ConnectionStrings:noteSHAREdb %>" InsertCommand="Insert into [Notes] (Subjects) values (@subject)" SelectCommand="SELECT NotesID FROM [Notes]">
                    <InsertParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="subject" PropertyName="SelectedValue" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </form>
    </div>

</asp:Content>

