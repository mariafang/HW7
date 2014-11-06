<%@ Page Title="" Language="VB" MasterPageFile="~/Countries.master" AutoEventWireup="false" CodeFile="ViewAllCountries.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Countries in the World - View All Countries
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />
    <br />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" SelectCommand="SELECT * FROM [fang_HW7]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="cssgridview" DataKeyNames="CountryID">
        <Columns>
            <asp:BoundField DataField="CountryName" HeaderText="Country Name" SortExpression="CountryName" />
            <asp:BoundField DataField="IndependDate" HeaderText="Independence Date" SortExpression="IndependDate" />
            <asp:BoundField DataField="CapitalCity" HeaderText="Capital City" SortExpression="CapitalCity" />
            <asp:HyperLinkField DataNavigateUrlFields="CountryID" DataNavigateUrlFormatString="CountryDetails.aspx?CountryID={0}" Text="Select" />
        </Columns>
    </asp:GridView>


</asp:Content>

