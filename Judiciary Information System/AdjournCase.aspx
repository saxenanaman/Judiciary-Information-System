<%@ Page Title="" Language="C#" MasterPageFile="~/main1.Master" AutoEventWireup="true" CodeBehind="AdjournCase.aspx.cs" Inherits="Judiciary_Information_System.AdjournCase" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Main_CPH1" runat="server">
    <h2>
        <asp:Label ID="AdjournCase_Label" runat="server" Text="Adjourn Case"></asp:Label>
    </h2>
        <br />
        <br />
        <asp:Label ID="CIN_Label" runat="server" Text="Case ID Number"></asp:Label>
        <asp:TextBox ID="CIN_TextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Reason_Label" runat="server" Text="Reason for adjournment"></asp:Label>
        <asp:TextBox ID="Reason_TextBox" runat="server" TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="NewHearingDate_Label" runat="server" Text="New hearing date"></asp:Label>
        <asp:Calendar ID="NewDate_Calendar" runat="server"></asp:Calendar>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Adjourn Case" />
</asp:Content>
