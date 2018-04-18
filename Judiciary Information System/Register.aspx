<%@ Page Title="" Language="C#" MasterPageFile="~/main1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Judiciary_Information_System.Register" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Main_CPH1" runat="server">
    <div>
        <h2>
            <asp:Label ID="CreateCaseLabel" runat="server" Text="Create Case"></asp:Label>
        </h2>
        Select a Type:<asp:RadioButtonList ID="UserTypeRadioButtonList" runat="server">
            <asp:ListItem>Judge</asp:ListItem>
            <asp:ListItem>Lawyer</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
        &nbsp;<asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Email:"></asp:Label>
        &nbsp;<asp:TextBox ID="emailTextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Phone Number:"></asp:Label>
        &nbsp;<asp:TextBox ID="PhoneTextBox3" runat="server" TextMode="Phone"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Date Of Birth"></asp:Label>
        <asp:Calendar ID="DOBCalendar" runat="server"></asp:Calendar>
       
        <br />
        <asp:Label ID="Label4" runat="server" Text="Password:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Password1TextBox" TextMode="Password" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Retype Password:"></asp:Label>
        &nbsp;<asp:TextBox ID="Password2TextBox" TextMode="Password" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="SubmitButton" runat="server" TextMode="Password" Text="Submit" OnClick="SubmitButton_Click" />
   
        <br />
        <br />
        <br />
   
    </div>
</asp:Content>
