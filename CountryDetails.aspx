<%@ Page Title="" Language="VB" MasterPageFile="~/Countries.master" AutoEventWireup="false" CodeFile="CountryDetails.aspx.vb" Inherits="CountryDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Countries in the World - View Country Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" SelectCommand="SELECT * FROM [fang_HW7] WHERE ([CountryID] = @CountryID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="CountryID" QueryStringField="CountryID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <br />
    <br />



</asp:Content>

