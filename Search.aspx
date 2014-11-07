<%@ Page Title="" Language="VB" MasterPageFile="~/Countries.master" AutoEventWireup="false" CodeFile="Search.aspx.vb" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Countries in the World - Search Page</title>
    <link rel="stylesheet" type="text/css" href="./CSS/Style.css" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" SelectCommand="SELECT * FROM [fang_HW7]"></asp:SqlDataSource>

    <br />
    <br />

    <span id="lightcolor">Search for a country by name:</span> <asp:TextBox ID="tb_search" runat="server"></asp:TextBox>
    
    <br />
    <br />
    <br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CountryID" DataSourceID="SqlDataSource1" CssClass="cssgridview" Width="959px">
        <Columns>
            <asp:BoundField DataField="CountryName" HeaderText="Country Name" SortExpression="CountryName" />
            <asp:BoundField DataField="IndependDate" HeaderText="Independence Date" SortExpression="IndependDate" />
            <asp:BoundField DataField="CapitalCity" HeaderText="Capital City" SortExpression="CapitalCity" />
            <asp:BoundField DataField="NationalFlower" HeaderText="National Flower" SortExpression="NationalFlower" />
            <asp:BoundField DataField="NationalSong" HeaderText="National Song" SortExpression="NationalSong" />
            <asp:BoundField DataField="OfficialLanguages" HeaderText="Official Language" SortExpression="OfficialLanguages" />
        </Columns>
    </asp:GridView>

</asp:Content>

