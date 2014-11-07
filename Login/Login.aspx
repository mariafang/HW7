<%@ Page Title="" Language="VB" MasterPageFile="~/Countries.master" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Countries in the World - Login Page</title>
    <link rel="stylesheet" type="text/css" href="../CSS/Style.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />
    <br />

    <asp:Login ID="Login1" runat="server" BackColor="#E3EAEB" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" TextLayout="TextOnTop">
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <LoginButtonStyle BackColor="White" BorderColor="#C5BBAF" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#1C5E55" />
        <TextBoxStyle Font-Size="0.8em" />
        <TitleTextStyle BackColor="#1C5E55" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
    </asp:Login>

</asp:Content>

