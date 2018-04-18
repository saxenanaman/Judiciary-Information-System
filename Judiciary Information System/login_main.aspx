<%@ Page Language="C#" MasterPageFile="~/main1.Master" AutoEventWireup="true" CodeBehind="login_main.aspx.cs" Inherits="Judiciary_Information_System.login_main" %>

<asp:Content ID="login_m" ContentPlaceHolderID="Main_CPH1" runat="server">
        <h2>
            <asp:Label ID="LoginLabel" runat="server" Text="Login Page"></asp:Label>
        </h2>
        
        <asp:Label ID="Username_Label" runat="server" Text="Username:"></asp:Label>
        &nbsp
        <asp:TextBox ID="Username_TextBox" runat="server" Width="130px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="UsernameValidator" runat="server" ControlToValidate="Username_TextBox" ErrorMessage="Username is Required" ForeColor="Red" EnableClientScript="False" />
        <br />
        <br />
        <asp:Label ID="Password_Label" runat="server" Text="Password:"></asp:Label>
        &nbsp
        <asp:TextBox ID="Password_TextBox" TextMode="Password" runat="server" Width="130px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" ControlToValidate="Password_TextBox" ErrorMessage="Password is Required" ForeColor="Red" EnableClientScript="False" />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="InvalidMessage" runat="server" ForeColor="Red"></asp:Label>
        <br />
        <asp:Button ID="Login_Button" TextMode="Password" runat="server" Text="Login" Width="211px" OnClick="Login_Button_Click" />
        <br />
        <br />
        <br /><br />
</asp:Content>