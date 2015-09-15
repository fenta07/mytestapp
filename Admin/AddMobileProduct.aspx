<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin Page.master" AutoEventWireup="true"
    CodeFile="AddMobileProduct.aspx.cs" Inherits="Admin_AddMobileProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            height: 30px;
        }
        .style2
        {
            background-color: #FFFFFF;
        }
        .style3
        {
            width: 132px;
        }
        .style4
        {
            width: 116px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="con">
        <h2 style="text-align: center; font-family: Century;">
            Add Mobile Product</h2>
        <table width="100%" cellpadding="3px" style="font-family: Calibri">
            <tr>
                <td style="width: 20%;">
                    &nbsp;
                </td>
                <td class="style3">
                    &nbsp;
                </td>
                <td>
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;
                </td>
                <td class="style4">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
                <td style="width: 20%;">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 20%;">
                </td>
                <td class="style3">
                    Product Name
                </td>
                <td>
                    <asp:TextBox ID="txtprodname" runat="server"></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style4">
                    CPU
                </td>
                <td>
                    <asp:TextBox ID="txtcpu" runat="server" TabIndex="18"></asp:TextBox>
                </td>
                <td style="width: 20%;">
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td class="style3">
                    Select Compney
                </td>
                <td>
                    <asp:DropDownList ID="ddlselectcompany" runat="server" DataSourceID="LinqDataSource1"
                        DataTextField="comname" DataValueField="pkcomid" TabIndex="1">
                    </asp:DropDownList>
                    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="dbhandlerDataContext"
                        EntityTypeName="" TableName="tbl_companies">
                    </asp:LinqDataSource>
                </td>
                <td>
                </td>
                <td class="style4">
                    OS Version
                </td>
                <td>
                    <asp:TextBox ID="txtos" runat="server" TabIndex="19"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td class="style1">
                    Categries Name
                </td>
                <td>
                    <asp:DropDownList ID="ddlcat" runat="server" AutoPostBack="True" 
                        OnSelectedIndexChanged="ddlcat_SelectedIndexChanged" TabIndex="2">
                        <asp:ListItem>Computer</asp:ListItem>
                        <asp:ListItem>Leptop</asp:ListItem>
                        <asp:ListItem>Mobile</asp:ListItem>
                        <asp:ListItem>Asscerise</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                </td>
                <td class="style4">
                    RAM
                </td>
                <td>
                    <asp:TextBox ID="txtram" runat="server" TabIndex="20"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td class="style3">
                    Select SubCatagory
                </td>
                <td>
                    <asp:DropDownList ID="ddlsubcat" runat="server" DataTextField="sname" 
                        DataValueField="pksid" TabIndex="3">
                    </asp:DropDownList>
                </td>
                <td>
                </td>
                <td class="style4">
                    JAVA</td>
                <td>
                    <asp:DropDownList ID="ddljava" runat="server" TabIndex="21">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td class="style3">
                    Manufacture Date
                </td>
                <td>
                    <asp:TextBox ID="txtmanudate" runat="server" TabIndex="4"></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style4">
                    &nbsp;Processer</td>
                <td>
                    <asp:TextBox ID="txtprocesser" runat="server" TabIndex="22"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td class="style3">
                    Warranty Year
                </td>
                <td>
                    <asp:TextBox ID="txtwarryear" runat="server" TabIndex="5"></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style4">
                    Front Camera
                </td>
                <td>
                    <asp:TextBox ID="txtfrontcamera" runat="server" TabIndex="23"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td class="style3">
                    Warranty Month
                </td>
                <td>
                    <asp:TextBox ID="txtwarrmonth" runat="server" TabIndex="6"></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style4">
                    Back Camera</td>
                <td>
                    <asp:TextBox ID="txtbackcamera" runat="server" TabIndex="24"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td class="style3">
                    Warranty Day
                </td>
                <td>
                    <asp:TextBox ID="txtwarrday" runat="server" TabIndex="7"></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style4">
                    Bluthooth
                </td>
                <td>
                    <asp:DropDownList ID="ddlbluethooth" runat="server" TabIndex="25">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td class="style3">
                    Stock
                </td>
                <td>
                    <asp:TextBox ID="txtstock" runat="server" TabIndex="8"></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style4">
                    WiFi</td>
                <td>
                    <asp:DropDownList ID="ddlwifi" runat="server" TabIndex="26">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td class="style3">
                    Prize
                </td>
                <td>
                    <asp:TextBox ID="txtprize" runat="server" TabIndex="9"></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style4">
                    &nbsp;3G
                </td>
                <td>
                    <asp:DropDownList ID="ddl3g" runat="server" TabIndex="27">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td class="style3">
                    Front Image
                </td>
                <td class="style2">
                    <asp:FileUpload ID="filefrontimage" runat="server" TabIndex="10" />
                </td>
                <td>
                </td>
                <td class="style4">
                    2G&nbsp;&nbsp;</td>
                <td>
                    <asp:DropDownList ID="ddl2g" runat="server" TabIndex="28">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td class="style3">
                    Back Image
                </td>
                <td class="style2">
                    <asp:FileUpload ID="filebackimage" runat="server" TabIndex="11" />
                </td>
                <td>
                </td>
                <td class="style4">
                    GPRS
                </td>
                <td>
                    <asp:DropDownList ID="ddlgprs" runat="server" TabIndex="29">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td class="style3">
                    Model ID
                </td>
                <td>
                    <asp:TextBox ID="txtmodelid" runat="server" TabIndex="12"></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style4">
                    Internal Memory
                </td>
                <td>
                    <asp:TextBox ID="txtinternalmemory" runat="server" TabIndex="30"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td class="style3">
                    Model Name
                </td>
                <td>
                    <asp:TextBox ID="txtmodelname" runat="server" TabIndex="13"></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style4">
                    Extrnal Memory
                </td>
                <td>
                    <asp:TextBox ID="txtextrnalmemory" runat="server" TabIndex="31"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td class="style3">
                    color
                </td>
                <td>
                    <asp:TextBox ID="txtcolor" runat="server" TabIndex="14"></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style4">
                    Weight
                </td>
                <td>
                    <asp:TextBox ID="txtweight" runat="server" TabIndex="32"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td class="style3">
                    Touch Screen
                </td>
                <td>
                    <asp:DropDownList ID="ddltouch" runat="server" TabIndex="15">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                </td>
                <td class="style4">
                    Bettry Types
                </td>
                <td>
                    <asp:TextBox ID="txtbattry" runat="server" TabIndex="33"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td class="style3">
                    SIM Tyep
                </td>
                <td style="color: #666666">
                    <asp:TextBox ID="txtsim" runat="server" TabIndex="16"></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style4">
                    Call Features
                </td>
                <td>
                    <asp:TextBox ID="txtcallfeat" runat="server" TabIndex="34"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td class="style3">
                    Display Size
                </td>
                <td>
                    <asp:TextBox ID="txtdsize" runat="server" TabIndex="17"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                </td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="7" class="style1">
                </td>
            </tr>
            <tr>
                <td colspan="7" align="center">
                    <asp:Button ID="btnsave" runat="server" Text="Save" Width="100px" Height="40px" TabIndex="35"
                        OnClick="btnsave_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
