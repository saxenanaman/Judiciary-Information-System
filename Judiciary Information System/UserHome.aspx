<%@ Page Title="" Language="C#" MasterPageFile="~/main1.Master" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="Judiciary_Information_System.UserHome" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Main_CPH1" runat="server">
    <h2>
        <asp:Label ID="Label1" runat="server" Text="Hello Mr. "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="UserHome.aspx?logout=1">Logout</a>
    </h2>
    
    <asp:TextBox ID="SearchTextBox" runat="server" Width="368px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" ControlToValidate="SearchTextBox" ErrorMessage="Field is Required" ForeColor="Red" EnableClientScript="False" />
    <br />
    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Display All" Width="136px" />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Search by CIN" OnClick="Button1_Click" Width="137px" />
        &nbsp;<br />
    <asp:Button ID="Button2" runat="server" Text="Search by Type" OnClick="Button2_Click" />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="sql1" runat="server" ConnectionString="Initial Catalog" SelectCommand=""></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="cin" HeaderText="CIN" />
                <asp:BoundField DataField="name_of_defendant" HeaderText="Defendant Name" />
                <asp:BoundField DataField="address_of_defendant" HeaderText="Defendant Address" />
                <asp:BoundField DataField="crime_type" HeaderText="Crime Type" />
                <asp:BoundField DataField="date_committed" HeaderText="Date Committed" />
                <asp:BoundField DataField="location" HeaderText="Location" />
                <asp:BoundField DataField="name_of_arresting_officer" HeaderText="Arresting Officer Name" />
                <asp:BoundField DataField="date_of_arrest" HeaderText="Arrest Date" />
                <asp:BoundField DataField="estimated_completion_date" HeaderText="Est Completion Date" />
                <asp:BoundField DataField="starting_date" HeaderText="Case Start Date" />
                <asp:BoundField DataField="name_of_public_prosecutor" HeaderText="Prosecutor Name" />
                <asp:BoundField DataField="name_of_presiding_judge" HeaderText="Judge Name" />
                <asp:BoundField DataField="summary_of_judgement" HeaderText="Judgement summary" />
                <asp:BoundField DataField="summary_of_proceedings" HeaderText="Proceedings Summary" />
                <asp:BoundField DataField="reason_of_adjournment" HeaderText="Adjournment Reason" />
            </Columns>
        </asp:GridView>
</asp:Content>
