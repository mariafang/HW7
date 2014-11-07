<%@ Page Title="" Language="VB" MasterPageFile="~/Countries.master" AutoEventWireup="false" CodeFile="NewCountry.aspx.vb" Inherits="Admin_NewCountry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Countries in the World - Add New Country
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" SelectCommand="SELECT * FROM [fang_HW7]"></asp:SqlDataSource>

    <br />
    <br />

    <asp:FormView ID="FormView1" runat="server" DataKeyNames="CountryID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <EditItemTemplate>
        </EditItemTemplate>
        <InsertItemTemplate>

                   <table style="">
                        <tr>
                            <td id="tb_left">
                                Country Name:
                            </td>
                            <td id="tb_right">                       
                                <asp:TextBox ID="CountryNameTextBox" runat="server" Text='<%# Bind("CountryName") %>' />                           
                            </td>
                            <td id="rfv">
                                <asp:RequiredFieldValidator ID="rfv_CountryName" runat="server" ErrorMessage="Please enter the country's name!" ControlToValidate="CountryNameTextBox"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <tr>
                            <td id="tb_left">
                                Independence Date:
                            </td>
                            <td id="tb_right">
                                <asp:TextBox ID="IndependDateTextBox" runat="server" Text='<%# Bind("IndependDate") %>' />
                            </td>
                            <td id="rfv">
                                <asp:RequiredFieldValidator ID="rfv_indenpDate" runat="server" ErrorMessage="Please enter the country's independence date!" ControlToValidate="IndependDateTextBox"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <tr>
                            <td id="tb_left">
                                Capital City:
                            </td>
                            <td id="tb_right">
                                <asp:TextBox ID="CapitalCityTextBox" runat="server" Text='<%# Bind("CapitalCity") %>' />
                            </td>
                            <td id="rfv">                   
                                <asp:RequiredFieldValidator runat="server" ErrorMessage="Please enter the country's capital city!" ID="rfv_CapitalCity" ControlToValidate="CapitalCityTextBox"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <tr>
                            <td id="tb_left">
                                National Flower:
                            </td>
                            <td id="tb_right">
                                <asp:TextBox ID="NationalFlowerTextBox" runat="server" Text='<%# Bind("NationalFlower") %>' />
                            </td>
                        </tr>

                        <tr>
                            <td id="tb_left">
                                National Song:
                            </td>
                            <td id="tb_right">
                                <asp:TextBox ID="NationalSongTextBox" runat="server" Text='<%# Bind("NationalSong") %>' />
                            </td>
                        </tr>

                        <tr>
                            <td id="tb_left">
                                Official Language:
                            </td>
                            <td id="tb_right">
                                <asp:TextBox ID="OfficialLanguagesTextBox" runat="server" Text='<%# Bind("OfficialLanguages") %>' />
                            </td>
                        </tr>
                      
                        <tr id="tb_bottom" style="text-align:left">
                            <td>
                                
                            </td>
                            <td>
                                <asp:Button ID="btn_Insert" runat="server" CausesValidation="True" CommandName="Insert" Text="Save" />
                            </td>
                        </tr>

                    </table>

        </InsertItemTemplate>
        <ItemTemplate>
        </ItemTemplate>
    </asp:FormView>

</asp:Content>

