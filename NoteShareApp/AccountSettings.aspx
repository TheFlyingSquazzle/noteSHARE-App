<%@ Page Title="" Language="C#" MasterPageFile="~/NoteShareMaster.master" AutoEventWireup="true" CodeFile="AccountSettings.aspx.cs" Inherits="AccountSettings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
        <div data-role="main" class="ui-content">

        
            <div data-role="header">
                <h2>Your Account</h2>
            </div>
             <div data-role="main" class="ui-content">
                <form id="AccountForm" runat="server">

                    <asp:SqlDataSource ID="AccountSettingsDataSource" runat="server" DataSourceMode="DataReader" OnSelecting="AccountSettingsDataSource_Selecting" ConnectionString="<%$ ConnectionStrings:noteSHAREdb %>" SelectCommand="SELECT [FirstName], [LastName], [Email], [Password] FROM [UserAccount] WHERE ([Email] = ?)">
                        <SelectParameters>
                            <asp:Parameter Name="Email" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
                    <br />
                    <asp:Label ID="NameLabel" runat="server" Text="" Font-Size="16pt" EnableTheming="True"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Email:"></asp:Label>
                    <br />
                    <asp:Label ID="EmailLabel" runat="server" Text="" Font-Size="16pt"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Password:"></asp:Label>
                    <br />
                    <asp:Label ID="PassLabel" runat="server" Text="" Font-Size="16pt"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="New Password:"></asp:Label>
                    <br />
                    <asp:TextBox ID="PassTextBox" runat="server" BackColor="White" BorderStyle="None" Font-Size="16pt" TextMode="Password" Width="100%"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="ChangePassButton" runat="server" Text="Change Password" Width="100%" BackColor="White" BorderStyle="None" Font-Size="16pt" ForeColor="#7CCBF2" OnClick="ChangePassButton_Click" />
                    <asp:SqlDataSource ID="ChangePassDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:noteSHAREdb %>" SelectCommand="SELECT Password FROM [UserAccount]" UpdateCommand="Update [UserAccount] set Password=@pass where Email=@email">
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="PassTextBox" Name="pass" PropertyName="Text" />
                            <asp:ControlParameter ControlID="EmailLabel" Name="email" PropertyName="Text" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </form>
             </div>
    </div>

</asp:Content>

