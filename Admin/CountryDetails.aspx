<%@ Page Title="" Language="VB" MasterPageFile="~/Countries.master" AutoEventWireup="false" CodeFile="CountryDetails.aspx.vb" Inherits="CountryDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Countries in the World - Country Details</title>
    <link rel="stylesheet" type="text/css" href="../CSS/Admin_Style.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" SelectCommand="SELECT * FROM [fang_HW7] WHERE ([CountryID] = @CountryID)" DeleteCommand="DELETE FROM [fang_HW7] WHERE [CountryID] = @CountryID" InsertCommand="INSERT INTO [fang_HW7] ([CountryName], [IndependDate], [CapitalCity], [NationalFlower], [NationalSong], [OfficialLanguages]) VALUES (@CountryName, @IndependDate, @CapitalCity, @NationalFlower, @NationalSong, @OfficialLanguages)" UpdateCommand="UPDATE [fang_HW7] SET [CountryName] = @CountryName, [IndependDate] = @IndependDate, [CapitalCity] = @CapitalCity, [NationalFlower] = @NationalFlower, [NationalSong] = @NationalSong, [OfficialLanguages] = @OfficialLanguages WHERE [CountryID] = @CountryID">
        <DeleteParameters>
            <asp:Parameter Name="CountryID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CountryName" Type="String" />
            <asp:Parameter Name="IndependDate" Type="String" />
            <asp:Parameter Name="CapitalCity" Type="String" />
            <asp:Parameter Name="NationalFlower" Type="String" />
            <asp:Parameter Name="NationalSong" Type="String" />
            <asp:Parameter Name="OfficialLanguages" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="CountryID" QueryStringField="CountryID" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="CountryName" Type="String" />
            <asp:Parameter Name="IndependDate" Type="String" />
            <asp:Parameter Name="CapitalCity" Type="String" />
            <asp:Parameter Name="NationalFlower" Type="String" />
            <asp:Parameter Name="NationalSong" Type="String" />
            <asp:Parameter Name="OfficialLanguages" Type="String" />
            <asp:Parameter Name="CountryID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <span id="lightcolor"><asp:Label ID="lbl_deleted" runat="server"></asp:Label></span>
    <br />
    <span id="lightcolor"><span id="star">*</span> indicates required fields</span>
    <br />

    <asp:FormView ID="FormView1" runat="server" DataKeyNames="CountryID" DataSourceID="SqlDataSource1">
        <EditItemTemplate>

                 <table>
                        <tr>
                            <td id="tb_left">
                                Country Name: <span id="star">*</span>
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
                                Independence Date: <span id="star">*</span>
                            </td>
                            <td id="tb_right">
                                <asp:TextBox ID="IndependDateTextBox" runat="server" Text='<%# Bind("IndependDate") %>' />
                            </td>
                            <td id="rfv">
                                <asp:RequiredFieldValidator ID="rfv_IndependDate" runat="server" ErrorMessage="Please enter the country's independence date!" ControlToValidate="IndependDateTextBox"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <tr>
                            <td id="tb_left">
                                Capital City: <span id="star">*</span>
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

                        <tr id="tb_bottom">
                            <td style="text-align:right">
                                <asp:Button ID="btn_Save" runat="server" CausesValidation="True" CommandName="Update" Text="Save" />
                            </td>
                            <td>
                                <asp:Button ID="btn_Cancel" runat="server" CausesValidation="false" CommandName="Cancel" Text="Cancel" />
                            </td>
                        </tr>

                    </table>
          
        </EditItemTemplate>
        <InsertItemTemplate>
           
        </InsertItemTemplate>
        <ItemTemplate>
            
                <table>
                        <tr>
                            <td id="tb_left">
                                Country Name:
                            </td>
                            <td id="tb_right">
                                <asp:Label ID="CountryNameLabel" runat="server" Text='<%# Bind("CountryName") %>' />
                            </td>
                        </tr>

                        <tr>
                            <td id="tb_left">
                                Independence Date:
                            </td>
                            <td id="tb_right">
                                <asp:Label ID="IndependDateLabel" runat="server" Text='<%# Bind("IndependDate") %>' />
                            </td>
                        </tr>

                        <tr>
                            <td id="tb_left">
                                Capital City:
                            </td>
                            <td id="tb_right">
                                <asp:Label ID="CapitalCityLabel" runat="server" Text='<%# Bind("CapitalCity") %>' />
                            </td>
                        </tr>

                        <tr>
                            <td id="tb_left">
                                National Flower:
                            </td>
                            <td id="tb_right">
                                <asp:Label ID="NationalFlowerLabel" runat="server" Text='<%# Bind("NationalFlower") %>' />
                            </td>
                        </tr>

                        <tr>
                            <td id="tb_left">
                                National Song:
                            </td>
                            <td id="tb_right">
                                <asp:Label ID="NationalSongLabel" runat="server" Text='<%# Bind("NationalSong") %>' />
                            </td>
                        </tr>

                        <tr>
                            <td id="tb_left">
                                Official Language:
                            </td>
                            <td id="tb_right">
                                <asp:Label ID="OfficialLanguagesLabel" runat="server" Text='<%# Bind("OfficialLanguages") %>' />
                            </td>
                        </tr>

                        <tr id="tb_bottom">
                            <td>
                                <asp:Button ID="btn_Edit" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                            </td>
                            <td>
                                <asp:Button ID="btn_Delete" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                            </td>
                        </tr>

                    </table>
           
        </ItemTemplate>
    </asp:FormView>

    <br />

    </asp:Content>

