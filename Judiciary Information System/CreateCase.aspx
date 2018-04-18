<%@ Page Title="" Language="C#" MasterPageFile="~/main1.Master" AutoEventWireup="true" CodeBehind="CreateCase.aspx.cs" Inherits="Judiciary_Information_System.CreateCase" %>

<asp:Content ID="Create_case" ContentPlaceHolderID="Main_CPH1" runat="server">
    <div>
       <h2>
           <asp:Label ID="Label1" runat="server" Text="Create New Case"></asp:Label>
       </h2>
        <br />
        <asp:Label ID="DefendantName_Label" runat="server" Text="Defendant Name:"></asp:Label>
        &nbsp;<asp:TextBox ID="DefendantName_TextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="DefendantAddress_Label" runat="server" Text="Defendant Address:"></asp:Label>
        &nbsp;<asp:TextBox ID="DefendantAddress_TextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="CrimeType_Label" runat="server" Text="Crime Type:"></asp:Label>
        &nbsp;<asp:TextBox ID="CrimeType_TextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="DateOfCrime_Label" runat="server" Text="Date of Crime"></asp:Label>
        <asp:Calendar ID="DateOfCrime_Calendar" runat="server"></asp:Calendar>
        <br />
        <asp:Label ID="LocationOfCrime_Label" runat="server" Text="Location of Crime:"></asp:Label>
        &nbsp;<asp:TextBox ID="LocationOfCrime_TextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="NameOfInvOff_Label" runat="server" Text="Name of the Investigating Officer:"></asp:Label>
        &nbsp;<asp:TextBox ID="NameOfInvOff_TextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="DateOfArrest_Label" runat="server" Text="Date of Arrest"></asp:Label>
        <asp:Calendar ID="DateOfArrest_Calendar" runat="server"></asp:Calendar>
        <br />
        <asp:Label ID="DateToSchedule_Label" runat="server" Text="Date to Schedule"></asp:Label>
        <asp:Calendar ID="DateToSchedule_Calendar" runat="server"></asp:Calendar>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        <br />
        <br />
        <br />
    </div>
</asp:Content>
