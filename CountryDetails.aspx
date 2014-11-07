<%@ Page Title="" Language="VB" MasterPageFile="~/Countries.master" AutoEventWireup="false" CodeFile="CountryDetails.aspx.vb" Inherits="CountryDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Countries in the World - Country Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" SelectCommand="SELECT * FROM [fang_HW7] WHERE ([CountryID] = @CountryID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="CountryID" QueryStringField="CountryID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <br />
    <br />

    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="408px" AutoGenerateRows="False" DataKeyNames="CountryID" DataSourceID="SqlDataSource1" CssClass="cssgridview" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="CountryName" HeaderText="Country Name" SortExpression="CountryName" />
            <asp:BoundField DataField="IndependDate" HeaderText="Independence Date" SortExpression="IndependDate" />
            <asp:BoundField DataField="CapitalCity" HeaderText="Capital City" SortExpression="CapitalCity" />
            <asp:BoundField DataField="NationalFlower" HeaderText="National Flower" SortExpression="NationalFlower" />
            <asp:BoundField DataField="NationalSong" HeaderText="National Song" SortExpression="NationalSong" />
            <asp:BoundField DataField="OfficialLanguages" HeaderText="Official Language" SortExpression="OfficialLanguages" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>

</asp:Content>

