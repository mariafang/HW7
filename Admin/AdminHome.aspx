<%@ Page Title="" Language="VB" MasterPageFile="~/Countries.master" AutoEventWireup="false" CodeFile="AdminHome.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Countries in the World - Home Page</title>
    <link rel="stylesheet" type="text/css" href="../CSS/Admin_Style.css" />
</asp:Content>

<asp:Content ID="hl_manageUsers" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />
    
    <asp:HyperLink ID="hl_AdminHome" runat="server" NavigateUrl="~/Admin/AdminHome.aspx" style="color:white">Admin Home</asp:HyperLink>
    &nbsp;&nbsp;|&nbsp;
    <asp:HyperLink ID="hl_EditCountries" runat="server" NavigateUrl="~/Admin/ViewAllCountries.aspx" style="color:white">Edit Countries</asp:HyperLink>
    &nbsp;&nbsp;|&nbsp;
    <asp:HyperLink ID="h1_InsertNew" runat="server" NavigateUrl="~/Admin/NewCountry.aspx" style="color:white">Insert a New Country</asp:HyperLink>
    &nbsp;&nbsp;|&nbsp;
    <asp:HyperLink ID="hl_ManageUser" runat="server" NavigateUrl="~/site_mgr/UserMgmt.aspx" style="color:white">Manage Users</asp:HyperLink>
    &nbsp;&nbsp;|&nbsp;
    <asp:HyperLink ID="hl_ManageRoles" runat="server" NavigateUrl="~/site_mgr/RoleMgmt.aspx" style="color:white">Manage Roles</asp:HyperLink>

    <br />

    <asp:Image ID="img_WorldMap" runat="server" ImageUrl="~/Images/WorldMap.gif" />
</asp:Content>

