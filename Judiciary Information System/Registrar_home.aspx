<%@ Page Title="" Language="C#" MasterPageFile="~/main1.Master" AutoEventWireup="true" CodeBehind="Registrar_home.aspx.cs" Inherits="Judiciary_Information_System.Registrar_home" %>

<asp:Content ID="Rgstar_home" ContentPlaceHolderID="Main_CPH1" runat="server">
    <h2>
        <asp:Label ID="Title_Label" runat="server" Text="Registrar Home Page"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="login_main.aspx?logout=1">Logout</a>
    </h2>
        <asp:Button ID="RegNewUser_Button" runat="server" Text="Register New User" OnClick="RegNewUser_Button_Click" Width="160px" Height="100px" />
        &nbsp;<asp:Button ID="Adjourn_Button" runat="server" Text="Adjourn Case" Width="160px" Height="100px" OnClick="Adjourn_Button_Click" />
        <br />
        <asp:Button ID="NewCase_Button" runat="server" Text="Create Case" OnClick="NewCase_Button_Click" Width="160px" Height="100px" />
        &nbsp;<asp:Button ID="Search_Button" runat="server" Text="Search Case" Width="160px" Height="100px" />
        <br />
        <asp:Button ID="NewDetails_Button" runat="server" Text="Add Details to Case" Width="160px" Height="100px" OnClick="NewDetails_Button_Click" />
        &nbsp;<asp:Button ID="Close_Button" runat="server" Text="Close Case" OnClick="Close_Button_Click" Width="160px" Height="100px" />
    <br />
    <br />
</asp:Content>
