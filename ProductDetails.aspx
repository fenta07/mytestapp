<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="ProductDetails.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            width: 16px;
        }
        .style2
        {
            width: 46px;
        }
        .style3
        {
            width: 51px;
        }
        .style4
        {
            width: 52px;
        }
        .style7
        {
            width: 6%;
        }
        .style8
        {
        }
        .style9
        {
        }
        .style10
        {
            width: 19%;
        }
        .style11
        {
            width: 12%;
        }
        .style13
        {
            width: 6%;
            height: 31px;
        }
        .style14
        {
            width: 18%;
            height: 31px;
        }
        .style15
        {
            height: 31px;
        }
        .style16
        {
            width: 13%;
            height: 31px;
        }
        .style17
        {
            width: 19%;
            height: 31px;
        }
        .style19
        {
            width: 79px;
        }
        .style20
        {
            width: 14%;
        }
        .style23
        {
            width: 153px;
        }
        .style24
        {
            width: 37%;
        }
        .style25
        {
            width: 145px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="pnlMobile" runat="server">
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" Height="50px"
            Width="125px" DataKeyNames="pkprodid" Style="margin-right: 66px">
            <Fields>
                <asp:TemplateField>
                    <ItemTemplate>
                        <table width="100%" cellpadding="3px" style="font-family: Calibri; width: 139%; margin-right: 158px;">
                            <tr>
                                <td class="style7">
                                    &nbsp;
                                </td>
                                <td class="style8" colspan="4" align="center">
                                    &nbsp;
                                </td>
                                <td class="style9">
                                    &nbsp;
                                </td>
                                <td class="style10">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                </td>
                                <td class="style14">
                                </td>
                                <td align="center" class="style15" colspan="3">
                                </td>
                                <td class="style16">
                                </td>
                                <td class="style17">
                                </td>
                            </tr>
                            <tr>
                                <td class="style7" rowspan="4">
                                    &nbsp;
                                </td>
                                <td class="style8" rowspan="4">
                                    <asp:Image ID="img" runat="server" Height="280px" Width="150px" ImageUrl='<%# String.Format("img/" + Eval("frontimage")) %>' />
                                </td>
                                <td class="style9" colspan="3" align="center">
                                    &nbsp; &nbsp;
                                    <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text='<%# bind("prodname") %>'></asp:Label>
                                </td>
                                <td class="style9" rowspan="4">
                                    &nbsp;
                                </td>
                                <td class="style10" rowspan="4">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="style19">
                                    &nbsp;
                                </td>
                                <td class="style11">
                                    &nbsp;
                                </td>
                                <td class="style20">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="style9" colspan="3" align="center">
                                    <asp:Button ID="btnorder" runat="server" Height="35" Width="120" Text="ORDER NOW" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style19">
                                    &nbsp;
                                </td>
                                <td class="style11">
                                    &nbsp;
                                </td>
                                <td class="style20">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                </td>
                                <td class="style8">
                                    &nbsp;
                                </td>
                                <td class="style19">
                                    &nbsp;
                                </td>
                                <td class="style11">
                                </td>
                                <td class="style20">
                                    CPU
                                </td>
                                <td class="style9">
                                    <asp:Label ID="Label19" runat="server" Text='<%# bind("cpu") %>'></asp:Label>
                                </td>
                                <td class="style10">
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                </td>
                                <td class="style8">
                                    Select Compney
                                </td>
                                <td class="style19">
                                    <asp:Label ID="Label2" runat="server" Text='<%# bind("comname") %>'></asp:Label>
                                </td>
                                <td class="style11">
                                </td>
                                <td class="style20">
                                    OS Version
                                </td>
                                <td class="style9">
                                    <asp:Label ID="Label20" runat="server" Text='<%# bind("os") %>'></asp:Label>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                </td>
                                <td class="style8">
                                    Categries Name
                                </td>
                                <td class="style19">
                                    <asp:Label ID="Label3" runat="server" Text='<%# bind("cname") %>'></asp:Label>
                                </td>
                                <td class="style11">
                                </td>
                                <td class="style20">
                                    RAM
                                </td>
                                <td class="style9">
                                    <asp:Label ID="Label21" runat="server" Text='<%# bind("ram") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                </td>
                                <td class="style8">
                                    Select SubCatagory
                                </td>
                                <td class="style19">
                                    <asp:Label ID="Label4" runat="server" Text='<%# bind("sname") %>'></asp:Label>
                                </td>
                                <td class="style11">
                                </td>
                                <td class="style20">
                                    JAVA
                                </td>
                                <td class="style9">
                                    <asp:Label ID="Label22" runat="server" Text='<%# bind("java") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                </td>
                                <td class="style8">
                                    Manufacture Date
                                </td>
                                <td class="style19">
                                    <asp:Label ID="Label5" runat="server" Text='<%# bind("mandate") %>'></asp:Label>
                                </td>
                                <td class="style11">
                                </td>
                                <td class="style20">
                                    &nbsp;Processer
                                </td>
                                <td class="style9">
                                    <asp:Label ID="Label23" runat="server" Text='<%# bind("processer") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                </td>
                                <td class="style8">
                                    Warranty Year
                                </td>
                                <td class="style19">
                                    <asp:Label ID="Label6" runat="server" Text='<%# bind("warryear") %>'></asp:Label>
                                </td>
                                <td class="style11">
                                </td>
                                <td class="style20">
                                    Front Camera
                                </td>
                                <td class="style9">
                                    <asp:Label ID="Label24" runat="server" Text='<%# bind("frontcamera") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                </td>
                                <td class="style8">
                                    Warranty Month
                                </td>
                                <td class="style19">
                                    <asp:Label ID="Label7" runat="server" Text='<%# bind("warrmonth") %>'></asp:Label>
                                </td>
                                <td class="style11">
                                </td>
                                <td class="style20">
                                    Back Camera
                                </td>
                                <td class="style9">
                                    <asp:Label ID="Label25" runat="server" Text='<%# bind("backcamera") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                </td>
                                <td class="style8">
                                    Warranty Day
                                </td>
                                <td class="style19">
                                    <asp:Label ID="Label8" runat="server" Text='<%# bind("warrday") %>'></asp:Label>
                                </td>
                                <td class="style11">
                                </td>
                                <td class="style20">
                                    Bluthooth
                                </td>
                                <td class="style9">
                                    <asp:Label ID="Label26" runat="server" Text='<%# bind("bluethooth") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                </td>
                                <td class="style8">
                                    Stock
                                </td>
                                <td class="style19">
                                    <asp:Label ID="Label9" runat="server" Text='<%# bind("stock") %>'></asp:Label>
                                </td>
                                <td class="style11">
                                </td>
                                <td class="style20">
                                    WiFi
                                </td>
                                <td class="style9">
                                    <asp:Label ID="Label27" runat="server" Text='<%# bind("wifi") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                </td>
                                <td class="style8">
                                    Prize
                                </td>
                                <td class="style19">
                                    <asp:Label ID="Label10" runat="server" Text='<%# bind("prize") %>'></asp:Label>
                                </td>
                                <td class="style11">
                                </td>
                                <td class="style20">
                                    &nbsp;3G
                                </td>
                                <td class="style9">
                                    <asp:Label ID="Label28" runat="server" Text='<%# bind("_3g") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                </td>
                                <td class="style8">
                                    &nbsp;
                                </td>
                                <td class="style19">
                                    &nbsp;
                                </td>
                                <td class="style11">
                                </td>
                                <td class="style20">
                                    2G&nbsp;&nbsp;
                                </td>
                                <td class="style9">
                                    <asp:Label ID="Label29" runat="server" Text='<%# bind("_2g") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                </td>
                                <td class="style8">
                                    &nbsp;
                                </td>
                                <td class="style19">
                                    &nbsp;
                                </td>
                                <td class="style11">
                                </td>
                                <td class="style20">
                                    GPRS
                                </td>
                                <td class="style9">
                                    <asp:Label ID="Label30" runat="server" Text='<%# bind("gprs") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                </td>
                                <td class="style8">
                                    Model ID
                                </td>
                                <td class="style19">
                                    <asp:Label ID="Label13" runat="server" Text='<%# bind("modalid") %>'></asp:Label>
                                </td>
                                <td class="style11">
                                </td>
                                <td class="style20">
                                    Internal Memory
                                </td>
                                <td class="style9">
                                    <asp:Label ID="Label31" runat="server" Text='<%# bind("internalmemory") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                </td>
                                <td class="style8">
                                    Model Name
                                </td>
                                <td class="style19">
                                    <asp:Label ID="Label14" runat="server" Text='<%# bind("modalname") %>'></asp:Label>
                                </td>
                                <td class="style11">
                                </td>
                                <td class="style20">
                                    Extrnal Memory
                                </td>
                                <td class="style9">
                                    <asp:Label ID="Label32" runat="server" Text='<%# bind("externalmemory") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                </td>
                                <td class="style8">
                                    color
                                </td>
                                <td class="style19">
                                    <asp:Label ID="Label15" runat="server" Text='<%# bind("color") %>'></asp:Label>
                                </td>
                                <td class="style11">
                                </td>
                                <td class="style20">
                                    Weight
                                </td>
                                <td class="style9">
                                    <asp:Label ID="Label33" runat="server" Text='<%# bind("weight") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                </td>
                                <td class="style8">
                                    Touch Screen
                                </td>
                                <td class="style19">
                                    <asp:Label ID="Label16" runat="server" Text='<%# bind("touch") %>'></asp:Label>
                                </td>
                                <td class="style11">
                                </td>
                                <td class="style20">
                                    Bettry Types
                                </td>
                                <td class="style9">
                                    <asp:Label ID="Label34" runat="server" Text='<%# bind("batterytype") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                </td>
                                <td class="style8">
                                    SIM Tyep
                                </td>
                                <td style="color: #666666" class="style19">
                                    <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
                                </td>
                                <td class="style11">
                                </td>
                                <td class="style20">
                                    Call Features
                                </td>
                                <td class="style9">
                                    <asp:Label ID="Label35" runat="server" Text='<%# bind("callfeature") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                    &nbsp;
                                </td>
                                <td class="style8">
                                    Display Size
                                </td>
                                <td class="style19">
                                    <asp:Label ID="Label18" runat="server" Text='<%# bind("displaysize") %>'></asp:Label>
                                </td>
                                <td class="style11">
                                    &nbsp;
                                </td>
                                <td class="style20">
                                    &nbsp;
                                </td>
                                <td class="style9">
                                    &nbsp;
                                </td>
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
                                    &nbsp;
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:TemplateField>
            </Fields>
        </asp:DetailsView>
    </asp:Panel>
    <asp:Panel ID="pnlComputer" runat="server">
        <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" Height="50px"
            Width="125px" DataKeyNames="pkprodid">
            <Fields>
                <asp:TemplateField>
                    <AlternatingItemTemplate>
                        <table cellpadding="3px" style="font-family: Calibri" width="100%">
                            <tr>
                                <td rowspan="4" style="width: 20%;">
                                    &nbsp;
                                </td>
                                <td rowspan="4">
                                    <img id="DetailsView2_img" Src="" style="height:280px;width:150px;" />
                                </td>
                                <td align="center" colspan="5">
                                    <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" 
                                        Text='<%# bind("prodname") %>'></asp:Label>
&nbsp;</td>
                                <td rowspan="4" style="width: 20%;">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    &nbsp;
                                </td>
                                <td align="center" colspan="2">
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="5">
                                    <input type="submit" name="DetailsView2$btnorder" value="ORDER NOW" 
                                        id="DetailsView2_btnorder" style="height:35px;width:120px;" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    &nbsp;
                                </td>
                                <td align="center" colspan="2">
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 20%;">
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td align="center" colspan="4">
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
                                <td>
                                    Product Name
                                </td>
                                <td>
                                    <span ID="DetailsView2_Label36">Databound</span>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    Weight
                                </td>
                                <td>
                                    <span ID="DetailsView2_Label59">Databound</span>
                                </td>
                                <td style="width: 20%;">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                    Select Compney
                                </td>
                                <td>
                                    <span ID="DetailsView2_Label37">Databound</span>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    RAM
                                </td>
                                <td>
                                    <span ID="DetailsView2_Label58">Databound</span>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    Select Catagory
                                </td>
                                <td>
                                    <span ID="DetailsView2_Label38">Databound</span>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td class="style1">
                                    &nbsp;
                                </td>
                                <td>
                                    Maximun Resolution
                                </td>
                                <td>
                                    <span ID="DetailsView2_Label57">Databound</span>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                    Select SubCatagory
                                </td>
                                <td>
                                    <span ID="DetailsView2_Label39">Databound</span>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    OS
                                </td>
                                <td>
                                    <span ID="DetailsView2_Label56">Databound</span>
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
                                    <span ID="DetailsView2_Label40">Databound</span>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    Optical Drive
                                </td>
                                <td>
                                    <span ID="DetailsView2_Label55">Databound</span>
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
                                    <span ID="DetailsView2_Label41">Databound</span>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    Gaphic Proeccer
                                </td>
                                <td>
                                    <span ID="DetailsView2_Label54">Databound</span>
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
                                    <span ID="DetailsView2_Label42">Databound</span>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    Keybord
                                </td>
                                <td>
                                    <span ID="DetailsView2_Label53">Databound</span>
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
                                    <span ID="DetailsView2_Label43">Databound</span>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
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
                                    <span ID="DetailsView2_Label44">Databound</span>
                                </td>
                                <td class="style2">
                                </td>
                                <td class="style3">
                                </td>
                                <td class="style2">
                                    &nbsp;
                                </td>
                                <td class="style2">
                                    &nbsp;
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
                                    <span ID="DetailsView2_Label45">Databound</span>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td class="style2">
                                    &nbsp;
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                    Ports
                                </td>
                                <td class="style2">
                                    <span ID="DetailsView2_Label47">Databound</span>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
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
                                    <span ID="DetailsView2_Label48">Databound</span>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
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
                                    <span ID="DetailsView2_Label49">Databound</span>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
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
                                    <span ID="DetailsView2_Label50">Databound</span>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                    ProeccerName
                                </td>
                                <td>
                                    <span ID="DetailsView2_Label51">Databound</span>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                    Hard Disk Capacity
                                </td>
                                <td style="color: #666666">
                                    <span ID="DetailsView2_Label52">Databound</span>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td class="style1">
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="style1" colspan="8">
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="8">
                                    <input type="submit" name="DetailsView2$btnsave" value="Save" 
                                        id="DetailsView2_btnsave" tabindex="32" style="height:40px;width:100px;" />
                                </td>
                            </tr>
                        </table>
                    </AlternatingItemTemplate>
                    <ItemTemplate>
                        <table width="100%" cellpadding="3px" style="font-family: Calibri">
                            <tr>
                                <td style="width: 20%;" rowspan="4">
                                    &nbsp;
                                </td>
                                <td rowspan="4">
                                    <asp:Image ID="img" runat="server" Height="280px" Width="150px" ImageUrl='<%# String.Format("img/" + Eval("frontimage")) %>' />
                                </td>
                                <td colspan="5" align="center">
                                    <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text='<%# bind("prodname") %>'></asp:Label>
                                </td>
                                <td style="width: 20%;" rowspan="4">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    &nbsp;
                                </td>
                                <td align="center" colspan="2">
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="5">
                                    <asp:Button ID="btnorder" runat="server" Height="35" Text="ORDER NOW" Width="120" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    &nbsp;
                                </td>
                                <td align="center" colspan="2">
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 20%;">
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td align="center" colspan="4">
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
                                <td>
                                    Product Name
                                </td>
                                <td>
                                    <asp:Label ID="Label36" runat="server" Text='<%# bind("prodname") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    Weight
                                </td>
                                <td>
                                    <asp:Label ID="Label59" runat="server" Text='<%# bind("weight") %>'></asp:Label>
                                </td>
                                <td style="width: 20%;">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                    Select Compney
                                </td>
                                <td>
                                    <asp:Label ID="Label37" runat="server" Text='<%# bind("comname") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    RAM
                                </td>
                                <td>
                                    <asp:Label ID="Label58" runat="server" Text='<%# bind("ram") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    Select Catagory
                                </td>
                                <td>
                                    <asp:Label ID="Label38" runat="server" Text='<%# bind("cname") %>'></asp:Label>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td class="style1">
                                    &nbsp;
                                </td>
                                <td>
                                    Maximun Resolution
                                </td>
                                <td>
                                    <asp:Label ID="Label57" runat="server" Text='<%# bind("maxresoulution") %>'></asp:Label>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                    Select SubCatagory
                                </td>
                                <td>
                                    <asp:Label ID="Label39" runat="server" Text='<%# bind("sname") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    OS
                                </td>
                                <td>
                                    <asp:Label ID="Label56" runat="server" Text='<%# bind("os") %>'></asp:Label>
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
                                    <asp:Label ID="Label40" runat="server" Text='<%# bind("mandate") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    Optical Drive
                                </td>
                                <td>
                                    <asp:Label ID="Label55" runat="server" Text='<%# bind("opticaldrive") %>'></asp:Label>
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
                                    <asp:Label ID="Label41" runat="server" Text='<%# bind("warryear") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    Gaphic Proeccer
                                </td>
                                <td>
                                    <asp:Label ID="Label54" runat="server" Text='<%# bind("graphicprocess") %>'></asp:Label>
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
                                    <asp:Label ID="Label42" runat="server" Text='<%# bind("warrmonth") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    Keybord
                                </td>
                                <td>
                                    <asp:Label ID="Label53" runat="server" Text='<%# bind("keybord") %>'></asp:Label>
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
                                    <asp:Label ID="Label43" runat="server" Text='<%# bind("warrday") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
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
                                    <asp:Label ID="Label44" runat="server" Text='<%# bind("stock") %>'></asp:Label>
                                </td>
                                <td class="style2">
                                </td>
                                <td class="style3">
                                </td>
                                <td class="style2">
                                    &nbsp;
                                </td>
                                <td class="style2">
                                    &nbsp;
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
                                    <asp:Label ID="Label45" runat="server" Text='<%# bind("prize") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td class="style2">
                                    &nbsp;
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                    Ports
                                </td>
                                <td class="style2">
                                    <asp:Label ID="Label47" runat="server" Text='<%# bind("port") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
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
                                    <asp:Label ID="Label48" runat="server" Text='<%# bind("modalid") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
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
                                    <asp:Label ID="Label49" runat="server" Text='<%# bind("modalname") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
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
                                    <asp:Label ID="Label50" runat="server" Text='<%# bind("color") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                    ProeccerName
                                </td>
                                <td>
                                    <asp:Label ID="Label51" runat="server" Text='<%# bind("processer") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                    Hard Disk Capacity
                                </td>
                                <td style="color: #666666">
                                    <asp:Label ID="Label52" runat="server" Text='<%# bind("harddisk") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td class="style1">
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td colspan="8" class="style1">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="8" align="center">
                                    <asp:Button ID="btnsave" runat="server" Text="Save" Width="100px" Height="40px" TabIndex="32" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:TemplateField>
            </Fields>
        </asp:DetailsView>
    </asp:Panel>
    <asp:Panel ID="pnlLeptop" runat="server">
        <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" Height="50px"
            Width="125px" DataKeyNames="pkprodid">
            <Fields>
                <asp:TemplateField>
                    <ItemTemplate>
                        <table width="100%" cellpadding="3px" style="font-family: Calibri">
                            <tr>
                                <td style="width: 20%;">
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                    <asp:Image ID="img" runat="server" Height="280px" 
                                        ImageUrl='<%# String.Format("img/" + Eval("frontimage")) %>' Width="150px" />
                                </td>
                                <td colspan="5" align="center" style="font-size: x-large;">
                                    &nbsp; &nbsp;
                                    <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" 
                                        Text='<%# bind("prodname") %>'></asp:Label>
                                </td>
                                <td style="width: 20%;">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="4" style="font-size: x-large;">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center" colspan="5" style="font-size: x-large;">
                                    <input type="submit" name="DetailsView2$btnorder0" value="ORDER NOW" 
                                        id="DetailsView2_btnorder0" style="height:35px;width:120px;" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="4" style="font-size: x-large;">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 20%;">
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td align="center" colspan="4">
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
                                <td>
                                    Product Name
                                </td>
                                <td>
                                    <asp:Label ID="Label60" runat="server" Text='<%# bind("prodname") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    Hardware Interface
                                </td>
                                <td>
                                    <asp:Label ID="Label92" runat="server" Text='<%# bind("hardwareinterface") %>'></asp:Label>
                                </td>
                                <td style="width: 20%;">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                    Select Compney
                                </td>
                                <td>
                                    <asp:Label ID="Label61" runat="server" Text='<%# bind("comname") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    System Architutecture
                                </td>
                                <td>
                                    <asp:Label ID="Label91" runat="server" Text='<%# bind("systemarchitutecture") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    Select Catagory
                                </td>
                                <td>
                                    <asp:Label ID="Label62" runat="server" Text='<%# bind("cname") %>'></asp:Label>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td class="style1">
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                    Select SubCatagory
                                </td>
                                <td>
                                    <asp:Label ID="Label63" runat="server" Text='<%# bind("sname") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    Processer name
                                </td>
                                <td>
                                    <asp:Label ID="Label89" runat="server" Text='<%# bind("processer") %>'></asp:Label>
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
                                    <asp:Label ID="Label64" runat="server" Text='<%# bind("mandate") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    Harddisk
                                </td>
                                <td>
                                    <asp:Label ID="Label88" runat="server" Text='<%# bind("harddisk") %>'></asp:Label>
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
                                    <asp:Label ID="Label65" runat="server" Text='<%# bind("warryear") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    Web Camera
                                </td>
                                <td>
                                    <asp:Label ID="Label87" runat="server" Text='<%# bind("frontcamera") %>'></asp:Label>
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
                                    <asp:Label ID="Label66" runat="server" Text='<%# bind("warrmonth") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    Speakers
                                </td>
                                <td>
                                    <asp:Label ID="Label86" runat="server" Text='<%# bind("speaker") %>'></asp:Label>
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
                                    <asp:Label ID="Label67" runat="server" Text='<%# bind("warrday") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
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
                                    <asp:Label ID="Label68" runat="server" Text='<%# bind("stock") %>'></asp:Label>
                                </td>
                                <td class="style2">
                                </td>
                                <td class="style3">
                                </td>
                                <td class="style2">
                                    &nbsp;
                                </td>
                                <td class="style2">
                                    &nbsp;
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
                                    <asp:Label ID="Label69" runat="server" Text='<%# bind("prize") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    Lock Port
                                </td>
                                <td>
                                    <asp:Label ID="Label83" runat="server" Text='<%# bind("lockport") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td class="style2">
                                    &nbsp;
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    OS
                                </td>
                                <td>
                                    <asp:Label ID="Label82" runat="server" Text='<%# bind("os") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                    Ports
                                </td>
                                <td class="style2">
                                    <asp:Label ID="Label70" runat="server" Text='<%# bind("port") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    Ram
                                </td>
                                <td>
                                    <asp:Label ID="Label81" runat="server" Text='<%# bind("ram") %>'></asp:Label>
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
                                    <asp:Label ID="Label71" runat="server" Text='<%# bind("modalid") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    Weight
                                </td>
                                <td>
                                    <asp:Label ID="Label80" runat="server" Text='<%# bind("weight") %>'></asp:Label>
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
                                    <asp:Label ID="Label72" runat="server" Text='<%# bind("modalname") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    GraphicProcesser
                                </td>
                                <td>
                                    <asp:Label ID="Label79" runat="server" Text='<%# bind("graphicprocess") %>'></asp:Label>
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
                                    <asp:Label ID="Label73" runat="server" Text='<%# bind("color") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    MaxResolution
                                </td>
                                <td>
                                    <asp:Label ID="Label78" runat="server" Text='<%# bind("maxresoulution") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                    Life Style
                                </td>
                                <td>
                                    <asp:Label ID="Label74" runat="server" Text='<%# bind("lifestyle") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    Bluethooth
                                </td>
                                <td>
                                    <asp:Label ID="Label77" runat="server" Text='<%# bind("bluethooth") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                    battery cell
                                </td>
                                <td style="color: #666666">
                                    <asp:Label ID="Label75" runat="server" Text='<%# bind("batterycell") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style1">
                                </td>
                                <td>
                                    Wifi
                                </td>
                                <td>
                                    <asp:Label ID="Label76" runat="server" Text='<%# bind("wifi") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td class="style1">
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td colspan="8" class="style1">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="8" align="center">
                                    <asp:Button ID="btnsave" runat="server" Text="Save" Width="100px" Height="40px" TabIndex="32"
                                        OnClick="btnsave_Click" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:TemplateField>
            </Fields>
        </asp:DetailsView>
    </asp:Panel>
    <asp:Panel ID="pnlAccesseries" runat="server">
        <asp:DetailsView ID="DetailsView4" runat="server" AutoGenerateRows="False" Height="50px"
            Width="125px" DataKeyNames="pkprodid">
            <Fields>
                <asp:TemplateField>
                    <ItemTemplate>
                        <table width="100%" cellpadding="3px" style="font-family: Calibri; margin-right: 118px;">
                            <tr>
                                <td style="width: 20%;" rowspan="4">
                                    &nbsp;
                                </td>
                                <td class="style3" rowspan="4">
                                    <asp:Image ID="img" runat="server" Height="280px" ImageUrl='<%# String.Format("img/" + Eval("frontimage")) %>'
                                        Width="150px" />
                                </td>
                                <td colspan="4" align="center" style="font-size: x-large">
                                    <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text='<%# bind("prodname") %>'></asp:Label>
                                </td>
                                <td class="style24" rowspan="4">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="3" style="font-size: x-large">
                                    &nbsp;
                                </td>
                                <td class="style23">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="4" style="font-size: x-large">
                                    <asp:Button ID="btnorder" runat="server" Height="35" Text="ORDER NOW" Width="120" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="3" style="font-size: x-large">
                                    &nbsp;
                                </td>
                                <td class="style23">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 20%;">
                                    &nbsp;
                                </td>
                                <td class="style3">
                                    &nbsp;
                                </td>
                                <td class="style25">
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td class="style4">
                                    &nbsp;
                                </td>
                                <td class="style23">
                                    &nbsp;
                                </td>
                                <td class="style24">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 20%;">
                                </td>
                                <td class="style3">
                                    &nbsp;
                                </td>
                                <td class="style25">
                                    &nbsp;
                                </td>
                                <td>
                                </td>
                                <td class="style4">
                                    Internal Memory
                                </td>
                                <td class="style23">
                                    <asp:Label ID="Label109" runat="server" Text='<%# bind("internalmemory") %>'></asp:Label>
                                </td>
                                <td class="style24">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td class="style3">
                                    Select Compney
                                </td>
                                <td class="style25">
                                    <asp:Label ID="Label94" runat="server" Text='<%# bind("comname") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style4">
                                    Extrnal Memory
                                </td>
                                <td class="style23">
                                    <asp:Label ID="Label108" runat="server" Text='<%# bind("externalmemory") %>'></asp:Label>
                                </td>
                                <td class="style24">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td class="style1">
                                    Categries Name
                                </td>
                                <td class="style25">
                                    <asp:Label ID="Label95" runat="server" Text='<%# bind("cname") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style4">
                                    Weight
                                </td>
                                <td class="style23">
                                    <asp:Label ID="Label107" runat="server" Text='<%# bind("weight") %>'></asp:Label>
                                </td>
                                <td class="style24">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td class="style3">
                                    Select SubCatagory
                                </td>
                                <td class="style25">
                                    <asp:Label ID="Label96" runat="server" Text='<%# bind("sname") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style4">
                                    Bettry Types
                                </td>
                                <td class="style23">
                                    <asp:Label ID="Label106" runat="server" Text='<%# bind("batterytype") %>'></asp:Label>
                                </td>
                                <td class="style24">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td class="style3">
                                    Manufacture Date
                                </td>
                                <td class="style25">
                                    <asp:Label ID="Label97" runat="server" Text='<%# bind("mandate") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style4">
                                    BettryCell
                                </td>
                                <td class="style23">
                                    <asp:Label ID="Label105" runat="server" Text='<%# bind("batterycell") %>'></asp:Label>
                                </td>
                                <td class="style24">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td class="style3">
                                    Warranty Year
                                </td>
                                <td class="style25">
                                    <asp:Label ID="Label98" runat="server" Text='<%# bind("warryear") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style4">
                                    Front Camera
                                </td>
                                <td class="style23">
                                    <asp:Label ID="Label104" runat="server" Text='<%# bind("frontcamera") %>'></asp:Label>
                                </td>
                                <td class="style24">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td class="style3">
                                    Warranty Month
                                </td>
                                <td class="style25">
                                    <asp:Label ID="Label99" runat="server" Text='<%# bind("warrmonth") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style3">
                                    Display Size
                                </td>
                                <td class="style23">
                                    <asp:Label ID="Label103" runat="server" Text='<%# bind("displaysize") %>'></asp:Label>
                                </td>
                                <td class="style24">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td class="style3">
                                    Warranty Day
                                </td>
                                <td class="style25">
                                    <asp:Label ID="Label100" runat="server" Text='<%# bind("warrday") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style3">
                                    &nbsp;
                                </td>
                                <td class="style23">
                                    &nbsp;
                                </td>
                                <td class="style24">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td class="style3">
                                    Stock
                                </td>
                                <td class="style25">
                                    <asp:Label ID="Label101" runat="server" Text='<%# bind("stock") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style4">
                                    &nbsp;
                                </td>
                                <td class="style23">
                                </td>
                                <td class="style24">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td class="style3">
                                    Prize
                                </td>
                                <td class="style25">
                                    <asp:Label ID="Label102" runat="server" Text='<%# bind("prize") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style4">
                                    &nbsp;
                                </td>
                                <td class="style23">
                                    &nbsp;
                                </td>
                                <td class="style24">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td class="style3">
                                    &nbsp;
                                </td>
                                <td class="style25">
                                    &nbsp;
                                </td>
                                <td>
                                </td>
                                <td class="style4">
                                    &nbsp;&nbsp;
                                </td>
                                <td class="style23">
                                    &nbsp;
                                </td>
                                <td class="style24">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td class="style3">
                                    &nbsp;
                                </td>
                                <td class="style25">
                                    &nbsp;
                                </td>
                                <td>
                                </td>
                                <td class="style4">
                                    &nbsp;
                                </td>
                                <td class="style23">
                                    &nbsp;
                                </td>
                                <td class="style24">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td class="style3">
                                    Model ID
                                </td>
                                <td class="style25">
                                    <asp:Label ID="Label110" runat="server" Text='<%# bind("modalid") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style4">
                                    &nbsp;
                                </td>
                                <td class="style23">
                                    &nbsp;
                                </td>
                                <td class="style24">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td class="style3">
                                    Model Name
                                </td>
                                <td class="style25">
                                    <asp:Label ID="Label111" runat="server" Text='<%# bind("modalname") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style4">
                                    &nbsp;
                                </td>
                                <td class="style23">
                                    &nbsp;
                                </td>
                                <td class="style24">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td class="style3">
                                    color
                                </td>
                                <td class="style25">
                                    <asp:Label ID="Label112" runat="server" Text='<%# bind("color") %>'></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td class="style4">
                                    &nbsp;
                                </td>
                                <td class="style23">
                                    &nbsp;
                                </td>
                                <td class="style24">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td class="style3">
                                    &nbsp;
                                </td>
                                <td class="style25">
                                    &nbsp;
                                </td>
                                <td>
                                </td>
                                <td class="style4">
                                    &nbsp;
                                </td>
                                <td class="style23">
                                    &nbsp;
                                </td>
                                <td class="style24">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td class="style3">
                                    &nbsp;
                                </td>
                                <td style="color: #666666" class="style25">
                                    &nbsp;
                                </td>
                                <td>
                                </td>
                                <td class="style4">
                                    &nbsp;
                                </td>
                                <td class="style23">
                                    &nbsp;
                                </td>
                                <td class="style24">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td class="style3">
                                    &nbsp;
                                </td>
                                <td class="style25">
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td class="style4">
                                    &nbsp;
                                </td>
                                <td class="style23">
                                    &nbsp;
                                </td>
                                <td class="style24">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td colspan="7" class="style1">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="7" align="center">
                                    <asp:Button ID="btnsave" runat="server" Text="Save" Width="100px" Height="38px" TabIndex="32"
                                        OnClick="btnsave_Click" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:TemplateField>
            </Fields>
        </asp:DetailsView>
    </asp:Panel>
</asp:Content>
