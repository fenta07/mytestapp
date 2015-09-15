<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin Page.master" AutoEventWireup="true" CodeFile="AddAccessoriesProduct.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 20%;
            height: 56px;
        }
        .style2
        {
            height: 56px;
        }
        .style3
        {
            font-family: Calibri;
            color: #FFFFFF;
        }
        .style4
        {
            color: #FFFFFF;
           
        }
        .style5
        {
            width: 20%;
            height: 56px;
            color: #FFFFFF;
        }
        .style6
        {
            height: 56px;
            color: #FFFFFF;
        }
        .lab
        {
             color:Red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <h2 style="text-align: center; color: #FFFF66;" class="style3">
            &nbsp;</h2>
    <h2 style="text-align: center; color: #FFFF66;" class="style3">
            &nbsp;</h2>
    <h2 style="text-align: center; color: #FFFF66;" class="style3">
            Add Accessories product</h2>
<table width="100%" cellpadding="3px" style="font-family: Calibri">
            <tr>
                <td style="width: 20%;">
                    &nbsp;
                </td>
                <td class="style3">
                    &nbsp;
                </td>
                <td>
                    <asp:Label ID="lblmsg" runat="server" CssClass=" lab"></asp:Label>
                </td>
                <td class="style4">
                    &nbsp;
                </td>
                <td class="style4">
                    &nbsp;
                </td>
                <td class="style4">
                    &nbsp;
                </td>
                <td style="width: 20%;">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style1">
                </td>
                <td class="style6">
                    Product Name
                </td>
                <td class="style2">
                    <asp:TextBox ID="txtprodname" runat="server" CssClass="style3"></asp:TextBox>
                </td>
                <td class="style2">
                </td>
                <td class="style6">
                    Internal Memory
                </td>
                <td class="style2">
                    <asp:TextBox ID="txtinternalmemory" runat="server" TabIndex="15" 
                        CssClass="style3"></asp:TextBox>
                </td>
                <td class="style1">
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td class="style3">
                    Select Compney
                </td>
                <td>
                    <asp:DropDownList ID="ddlselectcompany" runat="server" 
                        DataSourceID="LinqDataSource2" DataTextField="comname" 
                        DataValueField="pkcomid" TabIndex="1" CssClass="style3">
                    </asp:DropDownList>
                    <asp:LinqDataSource ID="LinqDataSource2" runat="server" 
                        ContextTypeName="dbhandlerDataContext" EntityTypeName="" 
                        TableName="tbl_companies">
                    </asp:LinqDataSource>
                </td>
                <td>
                </td>
                <td class="style4">
                    Extrnal Memory
                </td>
                <td>
                    <asp:TextBox ID="txtextrnalmemory" runat="server" TabIndex="16" 
                        CssClass="style3"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td class="style5">
                    Categries Name
                </td>
                <td>
                    <asp:DropDownList ID="ddlcat" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="ddlcat_SelectedIndexChanged" TabIndex="2" 
                        CssClass="style3">
                        <asp:ListItem>Computer</asp:ListItem>
                        <asp:ListItem>Leptop</asp:ListItem>
                        <asp:ListItem>Mobile</asp:ListItem>
                        <asp:ListItem>Accessories</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                </td>
                <td class="style4">
                    Weight
                </td>
                <td>
                    <asp:TextBox ID="txtweight" runat="server" TabIndex="17" CssClass="style3"></asp:TextBox>
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
                        DataValueField="pksid" TabIndex="3" CssClass="style3">
                    </asp:DropDownList>
                </td>
                <td>
                </td>
                <td class="style4">
                    Bettry Types
                </td>
                <td>
                    <asp:TextBox ID="txtbattry" runat="server" TabIndex="18" CssClass="style3"></asp:TextBox>
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
                    <asp:TextBox ID="txtmanudate" runat="server" TabIndex="4" CssClass="style3"></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style4">
                    BettryCell</td>
                <td>
                    <asp:TextBox ID="txtbattrycell" runat="server" TabIndex="19" CssClass="style3"></asp:TextBox>
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
                    <asp:TextBox ID="txtwarryear" runat="server" TabIndex="5" CssClass="style3"></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style4">
                    Front Camera
                </td>
                <td>
                    <asp:TextBox ID="txtfrontcamera" runat="server" TabIndex="20" CssClass="style3"></asp:TextBox>
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
                    <asp:TextBox ID="txtwarrmonth" runat="server" TabIndex="6" CssClass="style3"></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style3">
                    Display Size
                </td>
                <td>
                    <asp:TextBox ID="txtdsize" runat="server" Width="158px" TabIndex="21" 
                        CssClass="style3"></asp:TextBox>
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
                    <asp:TextBox ID="txtwarrday" runat="server" TabIndex="7" CssClass="style3"></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
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
                    <asp:TextBox ID="txtstock" runat="server" TabIndex="8" CssClass="style3"></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style4">
                    &nbsp;</td>
                <td>
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
                    <asp:TextBox ID="txtprize" runat="server" TabIndex="9" CssClass="style3"></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
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
                    <asp:FileUpload ID="filefrontimage" runat="server" TabIndex="10" 
                        CssClass="style3" />
                </td>
                <td>
                </td>
                <td class="style4">
                    &nbsp;&nbsp;</td>
                <td>
                    &nbsp;</td>
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
                    <asp:FileUpload ID="filebackimage" runat="server" TabIndex="11" 
                        CssClass="style3" />
                </td>
                <td>
                </td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
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
                    <asp:TextBox ID="txtmodelid" runat="server" TabIndex="12" CssClass="style3"></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
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
                    <asp:TextBox ID="txtmodelname" runat="server" TabIndex="13" CssClass="style3"></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
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
                    <asp:TextBox ID="txtcolor" runat="server" TabIndex="14" CssClass="style3"></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                </td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td class="style3">
                    &nbsp;</td>
                <td style="color: #666666">
                    &nbsp;</td>
                <td>
                </td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
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
                    <asp:Button ID="btnsave" runat="server" Text="Save" Width="100px" Height="38px" TabIndex="22"
                        OnClick="btnsave_Click" CssClass="style3"  BackColor="Blue"/>
                </td>
            </tr>
        </table>
</asp:Content>

