<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin Page.master" AutoEventWireup="true" CodeFile="AddLeptopsProduct.aspx.cs" Inherits="Admin_Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 14px;
        }
        .style2
        {
            height: 33px;
        }
        .style3
        {
            width: 14px;
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="con">
        <h2 style="text-align: center; font-family: Century;">
            Add Leptops Product</h2>
        <table width="100%" cellpadding="3px" style="font-family: Calibri">
            <tr>
                <td style="width:20%;">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td colspan="4" align="center">
                    <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td style="width:20%;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width:20%;">
                </td>
                <td>
                    Product Name
                </td>
                <td>
                    <asp:TextBox ID="txtprodname" runat="server"></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style1">
                </td>
                <td>
                    battery cell</td>
                <td style="color: #666666">
                    <asp:TextBox ID="txtbattterycell" runat="server" TabIndex="16"></asp:TextBox>
                </td>
                <td style="width:20%;">
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    Select Compney
                </td>
                <td>
                    <asp:DropDownList ID="ddlselectcompany" runat="server" 
                        DataSourceID="LinqDataSource1" DataTextField="comname" 
                        DataValueField="pkcomid" TabIndex="1">
                    </asp:DropDownList>
                    <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
                        ContextTypeName="dbhandlerDataContext" EntityTypeName="" 
                        TableName="tbl_companies">
                    </asp:LinqDataSource>
                </td>
                <td>
                </td>
                <td class="style1">
                </td>
                <td>
                    Hardware Interface</td>
                <td>
                    <asp:TextBox ID="txthardwareinterface" runat="server" TabIndex="17" 
                        Width="129px"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    Select Catagory</td>
                <td>
                    <asp:DropDownList ID="ddlcat" runat="server" 
                        onselectedindexchanged="ddlcat_SelectedIndexChanged" AutoPostBack="True" 
                        TabIndex="2">
                        <asp:ListItem>Mobile</asp:ListItem>
                        <asp:ListItem>Computer</asp:ListItem>
                        <asp:ListItem>Leptop</asp:ListItem>
                        <asp:ListItem>Accessories</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    System Architutecture</td>
                <td>
                    <asp:TextBox ID="txtsysarchite" runat="server" TabIndex="18"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    Select SubCatagory
                </td>
                <td>
                    <asp:DropDownList ID="ddlsubcat" runat="server" 
                        DataTextField="sname" DataValueField="pksid" TabIndex="3">
                    </asp:DropDownList>
                </td>
                <td>
                </td>
                <td class="style1">
                </td>
                <td>
                    Processer name</td>
                <td>
                    <asp:TextBox ID="txtprocessername" runat="server" TabIndex="19"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    Manufacture Date
                </td>
                <td>
                    <asp:TextBox ID="txtmanudate" runat="server" TabIndex="4"></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style1">
                </td>
                <td>
                    Harddisk</td>
                <td>
                    <asp:TextBox ID="txtharddisk" runat="server" TabIndex="20"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    Warranty Year
                </td>
                <td>
                    <asp:TextBox ID="txtwarryear" runat="server" TabIndex="5"></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style1">
                </td>
                <td>
                    Web Camera
                </td>
                <td>
                    <asp:TextBox ID="txtwebcamera" runat="server" TabIndex="21"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    Warranty Month
                </td>
                <td>
                    <asp:TextBox ID="txtwarrmonth" runat="server" TabIndex="6"></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style1">
                </td>
                <td>
                    Speakers</td>
                <td>
                    <asp:TextBox ID="txtspeakers" runat="server" TabIndex="22"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    Warranty Day
                </td>
                <td>
                    <asp:TextBox ID="txtwarrday" runat="server" TabIndex="7"></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style1">
                </td>
                <td>
                    Bettery Call
                </td>
                <td>
                    <asp:TextBox ID="txtbetterycell" runat="server" TabIndex="23"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td class="style2">
                </td>
                <td class="style2">
                    Stock
                </td>
                <td class="style2">
                    <asp:TextBox ID="txtstock" runat="server" TabIndex="8"></asp:TextBox>
                </td>
                <td class="style2">
                </td>
                <td class="style3">
                </td>
                <td>
                    Lock Port</td>
                <td>
                    <asp:TextBox ID="txtlockport" runat="server" TabIndex="24"></asp:TextBox>
                </td>
                <td class="style2">
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    Prize
                </td>
                <td>
                    <asp:TextBox ID="txtprize" runat="server" TabIndex="9"></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style1">
                </td>
                <td>
                    OS</td>
                <td>
                    <asp:TextBox ID="txtos" runat="server" TabIndex="25" Width="168px"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    Front Image
                </td>
                <td class="style2">
                    <asp:FileUpload ID="filefrontimage" runat="server" TabIndex="10" />
                </td>
                <td>
                </td>
                <td class="style1">
                </td>
                <td>
                    Ram</td>
                <td>
                    <asp:TextBox ID="txtram" runat="server" TabIndex="26"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    Ports</td>
                <td class="style2">
                    <asp:TextBox ID="txtport" runat="server" TabIndex="11"></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style1">
                </td>
                <td>
                    Weight</td>
                <td>
                    <asp:TextBox ID="txtweight" runat="server" TabIndex="27"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    Model ID
                </td>
                <td>
                    <asp:TextBox ID="txtmodelid" runat="server" TabIndex="12"></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style1">
                </td>
                <td>
                    GraphicProcesser</td>
                <td>
                    <asp:TextBox ID="txtgraphicprocesser" runat="server" TabIndex="28"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    Model Name
                </td>
                <td>
                    <asp:TextBox ID="txtmodelname" runat="server" TabIndex="13"></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style1">
                </td>
                <td>
                    MaxResolution</td>
                <td>
                    <asp:TextBox ID="txtmaxresolution" runat="server" TabIndex="29"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    color
                </td>
                <td>
                    <asp:TextBox ID="txtcolor" runat="server" TabIndex="14"></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style1">
                </td>
                <td>
                    Bluethooth</td>
                <td>
                    <asp:DropDownList ID="ddlbluethooth" runat="server" TabIndex="30">
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
                <td>
                    Life Style</td>
                <td>
                    <asp:TextBox ID="txtlifestyle" runat="server" TabIndex="15"></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style1">
                </td>
                <td>
                    Wifi</td>
                <td>
                    <asp:DropDownList ID="ddlwifi" runat="server" TabIndex="31">
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
                <td>
                    &nbsp;</td>
                <td style="color: #666666">
                    &nbsp;</td>
                <td>
                </td>
                <td class="style1">
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
            <td colspan="8" class="style1">
            </td>
            </tr>
            <tr>
            <td colspan="8" align="center">
                <asp:Button ID="btnsave" runat="server" Text="Save" Width="100px" Height="40px" 
                    TabIndex="32" onclick="btnsave_Click" />
            </td>
            </tr>
        </table>
</asp:Content>

