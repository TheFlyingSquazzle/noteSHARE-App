<%@ Page Title="" Language="C#" MasterPageFile="~/NoteShareMaster.master" AutoEventWireup="true" CodeFile="BrowseNotes.aspx.cs" Inherits="BrowseNotes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

    <div data-role="main" class="ui-content">

        
            <div data-role="header">
                <h2>Browse Notes</h2>
            </div>
        <div data-role="main" class="ui-content">
            <form id="BrowseForm" runat="server">
               <asp:Repeater ID="NoteRepeater" runat="server" DataSourceID="RepeaterDataSource" OnItemDataBound="NoteRepeater_ItemDataBound"></asp:Repeater>
                <asp:SqlDataSource ID="RepeaterDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:noteSHAREdb %>" SelectCommand="SELECT * FROM [Notes]"></asp:SqlDataSource>
                
                <HeaderTemplate>
                    <h1>
                        <asp:Label ID="FileNameLabel" runat="server" Text='<%# Eval("Title") %>'></asp:Label>
                    </h1>
                </HeaderTemplate>
                <ItemTemplate>
                <asp:Label ID="SubjectLabel" runat="server" Text="Subject:"></asp:Label><%# Eval("Subject") %>
                <br />
                <br />
                <asp:SqlDataSource ID="GetFileNameDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:noteSHAREdb %>" SelectCommand="SELECT [Title] FROM [Notes]"></asp:SqlDataSource>
                <asp:Button ID="DownloadButton" runat="server" Text="Download" Width="60%" ForeColor="#7CCBF2" Font-Strikeout="False" BackColor="White" BorderStyle="None" OnClick="DownloadButton_Click"></asp:Button>


                </ItemTemplate>
            </form>
        </div>
    </div>
</asp:Content>

