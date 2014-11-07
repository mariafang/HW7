<%@ Page Title="" Language="VB" MasterPageFile="~/Countries.master" AutoEventWireup="false" CodeFile="ContactUs.aspx.vb" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Countries in the World - Contact Us</title>
    <link rel="stylesheet" type="text/css" href="./CSS/Style.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <br />
        <br />

        <div style="margin-left :auto; margin-right :auto;">
            <!-- Check to see if you are in postback.  If not, display the contact form. -->
        <% If Not IsPostBack Then%>

        <span id="lightcolor">Your email address:</span>
        <br />
        <asp:TextBox ID="senderAddress" runat="server"></asp:TextBox>
        <br />
        <br />
       
        <span id="lightcolor">Your message:</span><br /> 
        <!-- to make your box bigger add rows, columns, and textmode -->
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine"></asp:TextBox>
        
        <br />
        <br />
        <span style="text-align:center"><asp:Button ID="sendMail" runat="server" Text="Send Message" /></span>

        <!-- If you are in postback, display the confirmation label. -->
        <%Else%>

        <span id="lightcolor"><asp:Label ID="confirmSent" runat="server" Text=""></asp:Label></span>

        <!-- End your 'If' statement. -->
        <%End If%>
        </div>

</asp:Content>

