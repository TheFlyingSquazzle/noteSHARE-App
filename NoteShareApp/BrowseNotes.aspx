<%@ Page Title="" Language="C#" MasterPageFile="~/NoteShareMaster.master" AutoEventWireup="true" CodeFile="BrowseNotes.aspx.cs" Inherits="BrowseNotes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

    <div data-role="main" class="ui-content">

        
            <div data-role="header">
                <h2>Browse Notes</h2>
            </div>
        <div data-role="main" class="ui-content">

            <form id="BrowseForm" data-ajax="False" runat="server">
            <asp:GridView ID="NotesGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="GridViewDataSource" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" onselectedindexchanged="NotesGridView_SelectedIndexChanged" DataKeyNames="Title">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Subjects" HeaderText="Subjects" SortExpression="Subjects" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="GridViewDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:noteSHAREdb %>" SelectCommand="SELECT [Subjects], [Title] FROM [Notes]"></asp:SqlDataSource>
                <br />
                <br />
                <asp:Button ID="DownloadButton" runat="server" Text="Download" Width="100%" ForeColor="#7CCBF2" Font-Strikeout="False" BackColor="White" BorderStyle="None" OnClick="DownloadButton_Click" Font-Bold="True"></asp:Button>
            </form>
        </div>
    </div>
</asp:Content>

