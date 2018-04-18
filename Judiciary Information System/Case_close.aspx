<%@ Page Title="" Language="C#" MasterPageFile="~/main1.Master" AutoEventWireup="true" CodeBehind="Case_close.aspx.cs" Inherits="Judiciary_Information_System.Case_close" %>

<asp:Content ID="CloseCase" ContentPlaceHolderID="Main_CPH1" runat="server">
    <div> 
        <h2>
            <asp:Label ID="Title_Label" runat="server" Text="Close Case"></asp:Label>
        </h2>
        <asp:Label ID="CIN_Label" runat="server" Text="Case Id Number"></asp:Label>
        &nbsp;<asp:TextBox ID="CIN_TextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Summary_Label" runat="server" Text="Summary"></asp:Label>
        &nbsp;<asp:TextBox ID="Summary_TextBox" runat="server" TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button" runat="server" Text="Close Case" />
        <br />
        <br />
    </div>

</asp:Content>
