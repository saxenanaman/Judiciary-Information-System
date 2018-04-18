<%@ Page Title="" Language="C#" MasterPageFile="~/main1.Master" AutoEventWireup="true" CodeBehind="Add_details.aspx.cs" Inherits="Judiciary_Information_System.Add_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Main_CPH1" runat="server">
    <h2>
        <asp:Label ID="Label1" runat="server" Text="Add Case Details"></asp:Label>
    </h2>
        <asp:Label ID="CIN_Label" runat="server" Text="Case ID Number"></asp:Label>
        <asp:TextBox ID="CIN_TextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="NameOfJudge_Label" runat="server" Text="Name of Judge"></asp:Label>
        <asp:TextBox ID="NameOfJudge_TextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="NameOfProsecutor_Label" runat="server" Text="Name of prosecutor"></asp:Label>
        <asp:TextBox ID="NameOfProsecutor_TextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="StartingDate_Label" runat="server" Text="Starting date"></asp:Label>
        <asp:Calendar ID="StartingDate_Calendar" runat="server"></asp:Calendar>
        <br />
        <br />
        <asp:Label ID="DateOfCompletion_Label" runat="server" Text="Estimated date of completion"></asp:Label>
        <asp:Calendar ID="DateOfCompletion_Calendar" runat="server"></asp:Calendar>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" />
</asp:Content>