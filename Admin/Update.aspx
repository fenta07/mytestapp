<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin Page.master" AutoEventWireup="true"
    CodeFile="Update.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
     
    
    <asp:Panel ID="pnlMobile" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" Height="50px"
        Width="125px" DataKeyNames="pkprodid">        
        <Fields>
            <asp:TemplateField>
                <ItemTemplate>
                    <table width="100%" cellpadding="3px" style="font-family: Calibri">
            <tr>
                <td style="width: 20%;">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td colspan="3" align="center">
                    Mobile Product Details</td>
                <td>
                    &nbsp;</td>
                <td style="width: 20%;">
                    &nbsp;</td>
            </tr>
                        <tr>
                            <td style="width: 20%;">
                                &nbsp;
                            </td>
                            <td class="style3">
                                &nbsp;
                            </td>
                            <td>
                                <asp:Label ID="lblmsgmobile" runat="server" Text="Label"></asp:Label>
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
                    <asp:TextBox ID="txtprodname" runat="server" Text='<%# bind("prodname") %>'></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style4">
                    CPU
                </td>
                <td>
                    <asp:TextBox ID="txtcpu" runat="server" TabIndex="16" Text='<%# bind("cpu") %>'></asp:TextBox>
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
                        DataTextField="comname" DataValueField="pkcomid">
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
                    <asp:TextBox ID="txtos" runat="server" TabIndex="17" Text='<%# bind("os") %>'></asp:TextBox>
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
                    <asp:DropDownList ID="ddlcat" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlcat_SelectedIndexChanged">
                        <asp:ListItem>Computer</asp:ListItem>
                        <asp:ListItem>Leptop</asp:ListItem>
                        <asp:ListItem>Mobile</asp:ListItem>
                        <asp:ListItem>Accessories</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                </td>
                <td class="style4">
                    RAM
                </td>
                <td>
                    <asp:TextBox ID="txtram" runat="server" TabIndex="18" Text='<%# bind("ram") %>'></asp:TextBox>
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
                    <asp:DropDownList ID="ddlsubcat" runat="server" DataTextField="sname" DataValueField="pksid">
                    </asp:DropDownList>
                </td>
                <td>
                </td>
                <td class="style4">
                    JAVA</td>
                <td>
                    <asp:DropDownList ID="ddljava" runat="server">
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
                    <asp:TextBox ID="txtmanudate" runat="server" Text='<%# bind("mandate") %>'></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style4">
                    &nbsp;Processer</td>
                <td>
                    <asp:TextBox ID="txtprocesser" runat="server" TabIndex="20" 
                        Text='<%# bind("processer") %>'></asp:TextBox>
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
                    <asp:TextBox ID="txtwarryear" runat="server" TabIndex="4" 
                        Text='<%# bind("warryear") %>'></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style4">
                    Front Camera
                </td>
                <td>
                    <asp:TextBox ID="txtfrontcamera" runat="server" TabIndex="21" 
                        Text='<%# bind("frontcamera") %>'></asp:TextBox>
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
                    <asp:TextBox ID="txtwarrmonth" runat="server" TabIndex="5" 
                        Text='<%# bind("warrmonth") %>'></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style4">
                    Back Camera</td>
                <td>
                    <asp:TextBox ID="txtbackcamera" runat="server" TabIndex="22" 
                        Text='<%# bind("backcamera") %>'></asp:TextBox>
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
                    <asp:TextBox ID="txtwarrday" runat="server" TabIndex="6" 
                        Text='<%# bind("warrday") %>'></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style4">
                    Bluthooth
                </td>
                <td>
                    <asp:DropDownList ID="ddlbluethooth" runat="server">
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
                    <asp:TextBox ID="txtstock" runat="server" TabIndex="7" 
                        Text='<%# bind("stock") %>'></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style4">
                    WiFi</td>
                <td>
                    <asp:DropDownList ID="ddlwifi" runat="server">
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
                    <asp:TextBox ID="txtprize" runat="server" TabIndex="8" 
                        Text='<%# bind("prize") %>'></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style4">
                    &nbsp;3G
                </td>
                <td>
                    <asp:DropDownList ID="ddl3g" runat="server">
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
                    <asp:FileUpload ID="filefrontimage" runat="server" />
                </td>
                <td>
                </td>
                <td class="style4">
                    2G&nbsp;&nbsp;</td>
                <td>
                    <asp:DropDownList ID="ddl2g" runat="server">
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
                    <asp:FileUpload ID="filebackimage" runat="server" />
                </td>
                <td>
                </td>
                <td class="style4">
                    GPRS
                </td>
                <td>
                    <asp:DropDownList ID="ddlgprs" runat="server">
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
                    <asp:TextBox ID="txtmodelid" runat="server" TabIndex="11" 
                        Text='<%# bind("modalid") %>'></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style4">
                    Internal Memory
                </td>
                <td>
                    <asp:TextBox ID="txtinternalmemory" runat="server" TabIndex="27" 
                        Text='<%# bind("internalmemory") %>'></asp:TextBox>
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
                    <asp:TextBox ID="txtmodelname" runat="server" TabIndex="12" 
                        Text='<%# bind("modalname") %>'></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style4">
                    Extrnal Memory
                </td>
                <td>
                    <asp:TextBox ID="txtextrnalmemory" runat="server" TabIndex="28" 
                        Text='<%# bind("externalmemory") %>'></asp:TextBox>
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
                    <asp:TextBox ID="txtcolor" runat="server" TabIndex="13" 
                        Text='<%# bind("color") %>'></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style4">
                    Weight
                </td>
                <td>
                    <asp:TextBox ID="txtweight" runat="server" TabIndex="29" 
                        Text='<%# bind("weight") %>'></asp:TextBox>
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
                    <asp:DropDownList ID="ddltouch" runat="server">
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
                    <asp:TextBox ID="txtbattry" runat="server" TabIndex="30" 
                        Text='<%# bind("batterycell") %>'></asp:TextBox>
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
                    <asp:TextBox ID="txtsim" runat="server" TabIndex="15" 
                        Text='<%# bind("simtype") %>'></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style4">
                    Call Features
                </td>
                <td>
                    <asp:TextBox ID="txtcallfeat" runat="server" TabIndex="31" 
                        Text='<%# bind("callfeature") %>'></asp:TextBox>
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
                    <asp:TextBox ID="txtdsize" runat="server" Text='<%# bind("displaysize") %>'></asp:TextBox>
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
    <asp:Panel ID="pnlComputer" runat="server">
        <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" Height="50px"
        Width="125px" DataKeyNames="pkprodid">        
        <Fields>
            <asp:TemplateField>
                <ItemTemplate>
                    <table width="100%" cellpadding="3px" style="font-family: Calibri">
            <tr>
                <td style="width:20%;">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td colspan="4" align="center">
                    Computer Product Details</td>
                <td>
                    &nbsp;</td>
                <td style="width:20%;">
                    &nbsp;</td>
            </tr>
                        <tr>
                            <td style="width:20%;">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td align="center" colspan="4">
                                &nbsp;</td>
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
                    <asp:TextBox ID="txtprodname" runat="server" Text='<%# bind("prodname") %>'></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style1">
                </td>
                <td>
                    Weight</td>
                <td>
                    <asp:TextBox ID="txtweight" runat="server" TabIndex="16" 
                        Text='<%# bind("weight") %>'></asp:TextBox>
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
                        DataSourceID="LinqDataSource1" DataTextField="comname" DataValueField="pkcomid">
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
                    RAM</td>
                <td>
                    <asp:TextBox ID="txtram" runat="server" TabIndex="17" Text='<%# bind("ram") %>'></asp:TextBox>
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
                    <asp:DropDownList ID="ddlcats" runat="server"  AutoPostBack="True" 
                        onselectedindexchanged="ddlcats_SelectedIndexChanged">
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
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
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
                    <asp:DropDownList ID="ddlsubcats" runat="server" 
                        DataTextField="sname" DataValueField="pksid">
                    </asp:DropDownList>
                </td>
                <td>
                </td>
                <td class="style1">
                </td>
                <td>
                    OS</td>
                <td>
                    <asp:TextBox ID="txtos" runat="server" TabIndex="18" Text='<%# bind("os") %>'></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                </td>
                <td class="style1">
                </td>
                <td>
                    Optical Drive
                </td>
                <td>
                    <asp:TextBox ID="txtopticaldrive" runat="server" TabIndex="19" 
                        Text='<%# bind("opticaldrive") %>'></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                </td>
                <td class="style1">
                </td>
                <td>
                    Gaphic Proeccer
                </td>
                <td>
                    <asp:TextBox ID="txtgraphicsprocesser" runat="server" TabIndex="20" 
                        Text='<%# bind("graphicprocess") %>'></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                </td>
                <td class="style1">
                </td>
                <td>
                    Keybord</td>
                <td>
                    <asp:TextBox ID="txtkeybord" runat="server" TabIndex="21" 
                        Text='<%# bind("keybord") %>'></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    &nbsp;</td>
                <td>
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
                <td class="style2">
                </td>
                <td class="style2">
                    Stock
                </td>
                <td class="style2">
                    <asp:TextBox ID="txtstock" runat="server" TabIndex="7" 
                        Text='<%# bind("stock") %>'></asp:TextBox>
                </td>
                <td class="style2">
                </td>
                <td class="style3">
                </td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
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
                    <asp:TextBox ID="txtprize" runat="server" TabIndex="8" 
                        Text='<%# bind("prize") %>'></asp:TextBox>
                </td>
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
                </td>
                <td>
                    Front Image
                </td>
                <td class="style2">
                    <asp:FileUpload ID="filefrontimage" runat="server" />
                </td>
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
                </td>
                <td>
                    &nbsp;</td>
                <td class="style2">
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
                </td>
                <td>
                    Model ID
                </td>
                <td>
                    <asp:TextBox ID="txtmodelid" runat="server" TabIndex="11" 
                        Text='<%# bind("modalid") %>'></asp:TextBox>
                </td>
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
                </td>
                <td>
                    Model Name
                </td>
                <td>
                    <asp:TextBox ID="txtmodelname" runat="server" TabIndex="12" 
                        Text='<%# bind("modalname") %>'></asp:TextBox>
                </td>
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
                </td>
                <td>
                    color
                </td>
                <td>
                    <asp:TextBox ID="txtcolor" runat="server" TabIndex="13" 
                        Text='<%# bind("color") %>'></asp:TextBox>
                </td>
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
                </td>
                <td>
                    ProeccerName</td>
                <td>
                    <p>
                        <asp:TextBox ID="txtprocessername" runat="server" TabIndex="14" 
                            Text='<%# bind("processer") %>'></asp:TextBox>
                    </p>
                </td>
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
                </td>
                <td>
                    Hard Disk Capacity</td>
                <td style="color: #666666">
                    <asp:TextBox ID="txthadrdiskcap" runat="server" TabIndex="15" 
                        Text='<%# bind("harddisk") %>' Height="22px"></asp:TextBox>
                </td>
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
                <asp:Button ID="btncomupdate" runat="server" Text="Save" Width="100px" Height="40px" 
                    TabIndex="32" onclick="btnsave_Click1" />
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
        Width="125px" DataKeyNames="pkprodid" >
        <Fields>
            <asp:TemplateField>
                <ItemTemplate>
                    <table width="100%" cellpadding="3px" style="font-family: Calibri">
            <tr>
                <td style="width:20%;">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td colspan="4" align="center" style="font-size:x-large;">
                  Leptop Product Details </td>
                <td>
                    &nbsp;</td>
                <td style="width:20%;">
                    &nbsp;</td>
            </tr>
                        <tr>
                            <td style="width:20%;">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td align="center" colspan="4">
                                &nbsp;</td>
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
                    <asp:TextBox ID="txtprodname" runat="server" Text='<%# bind("prodname") %>'></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style1">
                </td>
                <td>
                    Hardware Interface</td>
                <td>
                    <asp:TextBox ID="txthardwareinterface" runat="server" TabIndex="16" 
                        Width="129px" Text='<%# bind("hardwareinterface") %>'></asp:TextBox>
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
                        DataSourceID="LinqDataSource1" DataTextField="comname" DataValueField="pkcomid">
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
                    System Architutecture</td>
                <td>
                    <asp:TextBox ID="txtsysarchite" runat="server" TabIndex="17" 
                        Text='<%# bind("systemarchitutecture") %>'></asp:TextBox>
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
                    <asp:DropDownList ID="ddlcatl" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="ddlcatl_SelectedIndexChanged">
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
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
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
                    <asp:DropDownList ID="ddlsubcatl" runat="server" 
                        DataTextField="sname" DataValueField="pksid">
                    </asp:DropDownList>
                </td>
                <td>
                </td>
                <td class="style1">
                </td>
                <td>
                    Processer name</td>
                <td>
                    <asp:TextBox ID="txtprocessername" runat="server" TabIndex="20" 
                        Text='<%# bind("processer") %>'></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                </td>
                <td class="style1">
                </td>
                <td>
                    Harddisk</td>
                <td>
                    <asp:TextBox ID="txtharddisk" runat="server" TabIndex="20" 
                        Text='<%# bind("harddisk") %>'></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                </td>
                <td class="style1">
                </td>
                <td>
                    Web Camera
                </td>
                <td>
                    <asp:TextBox ID="txtwebcamera" runat="server" TabIndex="20" 
                        Text='<%# bind("frontcamera") %>'></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                </td>
                <td class="style1">
                </td>
                <td>
                    Speakers</td>
                <td>
                    <asp:TextBox ID="txtspeakers" runat="server" TabIndex="21" 
                        Text='<%# bind("speaker") %>'></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    &nbsp;</td>
                <td>
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
                <td class="style2">
                </td>
                <td class="style2">
                    Stock
                </td>
                <td class="style2">
                    <asp:TextBox ID="txtstock" runat="server" TabIndex="7" 
                        Text='<%# bind("stock") %>'></asp:TextBox>
                </td>
                <td class="style2">
                </td>
                <td class="style3">
                </td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
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
                    <asp:TextBox ID="txtprize" runat="server" TabIndex="8" 
                        Text='<%# bind("prize") %>'></asp:TextBox>
                </td>
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
                </td>
                <td>
                    Front Image
                </td>
                <td class="style2">
                    <asp:FileUpload ID="filefrontimage" runat="server" />
                </td>
                <td>
                </td>
                <td class="style1">
                </td>
                <td>
                    OS</td>
                <td>
                    <asp:TextBox ID="txtos" runat="server" TabIndex="20" Text='<%# bind("os") %>'></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                </td>
                <td class="style1">
                </td>
                <td>
                    Ram</td>
                <td>
                    <asp:TextBox ID="txtram" runat="server" TabIndex="20" Text='<%# bind("ram") %>'></asp:TextBox>
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
                    <asp:TextBox ID="txtmodelid" runat="server" TabIndex="11" 
                        Text='<%# bind("modalid") %>'></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style1">
                </td>
                <td>
                    Weight</td>
                <td>
                    <asp:TextBox ID="txtweight" runat="server" TabIndex="20" 
                        Text='<%# bind("weight") %>'></asp:TextBox>
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
                    <asp:TextBox ID="txtmodelname" runat="server" TabIndex="12" 
                        Text='<%# bind("modalname") %>'></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style1">
                </td>
                <td>
                    GraphicProcesser</td>
                <td>
                    <asp:TextBox ID="txtgraphicprocesser" runat="server" TabIndex="20" 
                         
                        Text='<%# bind("graphicprocess") %>'></asp:TextBox>
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
                    <asp:TextBox ID="txtcolor" runat="server" TabIndex="13" 
                        Text='<%# bind("color") %>'></asp:TextBox>
                </td>
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
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                </td>
                <td class="style1">
                </td>
                <td>
                    Bluethooth</td>
                <td>
                    <asp:DropDownList ID="ddlblueth" runat="server" TabIndex="26">
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
                    battery cell</td>
                <td style="color: #666666">
                    <asp:TextBox ID="txtbattterycell" runat="server" TabIndex="15" 
                        Text='<%# bind("batterycell") %>'></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style1">
                </td>
                <td>
                    Wifi</td>
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
                <asp:Button ID="btnUpdateLeptop" runat="server" onclick="btnUpdateLeptop_Click" 
                    Text="Button" />
            </td>
            </tr>
        </table>
                </ItemTemplate>
            </asp:TemplateField>
        </Fields>
    </asp:DetailsView>
    </asp:Panel>
    <asp:Panel ID="pnlAccesseries" runat="server">
    </asp:Panel>
        
      <asp:DetailsView ID="DetailsView4" runat="server" AutoGenerateRows="False" Height="50px"
        Width="125px" DataKeyNames="pkprodid">        
        <Fields>
            <asp:TemplateField>
                <ItemTemplate>
                    <table width="100%" cellpadding="3px" style="font-family: Calibri">
            <tr>
                <td style="width: 20%;">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td colspan="3" align="center" style="font-size:x-large">
                    Accessories Product Details</td>
                <td>
                    &nbsp;</td>
                <td style="width: 20%;">
                    &nbsp;</td>
            </tr>
                        <tr>
                            <td style="width: 20%;">
                                &nbsp;
                            </td>
                            <td class="style3">
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;</td>
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
                    <asp:TextBox ID="txtprodname" runat="server" Text='<%# bind("prodname") %>'></asp:TextBox>
                </td>
                <td>
                </td>
                <td class="style4">
                    Internal Memory
                </td>
                <td>
                    <asp:TextBox ID="txtinternalmemory" runat="server" TabIndex="27" 
                        Text='<%# bind("internalmemory") %>'></asp:TextBox>
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
                    <asp:DropDownList ID="ddlselectcompany" runat="server" 
                        DataSourceID="LinqDataSource2" DataTextField="comname" 
                        DataValueField="pkcomid">
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
                    <asp:TextBox ID="txtextrnalmemory" runat="server" TabIndex="28" 
                        Text='<%# bind("externalmemory") %>'></asp:TextBox>
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
                    <asp:DropDownList ID="ddlcata" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="ddlcata_SelectedIndexChanged">
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
                    <asp:TextBox ID="txtweight" runat="server" TabIndex="29" 
                        Text='<%# bind("weight") %>'></asp:TextBox>
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
                    <asp:DropDownList ID="ddlsubcata" runat="server" DataTextField="sname" 
                        DataValueField="pksid">
                    </asp:DropDownList>
                </td>
                <td>
                </td>
                <td class="style4">
                    Bettry Types
                </td>
                <td>
                    <asp:TextBox ID="txtbattry" runat="server" TabIndex="30" 
                        Text='<%# bind("batterytype") %>'></asp:TextBox>
                </td>
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
                    BettryCell</td>
                <td>
                    <asp:TextBox ID="txtbattrycell" runat="server" TabIndex="30" 
                        Text='<%# bind("batterycell") %>'></asp:TextBox>
                </td>
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
                    Front Camera
                </td>
                <td>
                    <asp:TextBox ID="txtfrontcamera" runat="server" TabIndex="21" 
                        Text='<%# bind("frontcamera") %>'></asp:TextBox>
                </td>
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
                <td class="style3">
                    Back<br /> Camera</td>
                <td>
                    <asp:TextBox ID="txtbackcamera" runat="server" TabIndex="21" 
                        Text='<%# bind("frontcamera") %>'></asp:TextBox>
                </td>
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
                    <asp:TextBox ID="txtstock" runat="server" TabIndex="7" 
                        Text='<%# bind("stock") %>'></asp:TextBox>
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
                    <asp:TextBox ID="txtprize" runat="server" TabIndex="8" 
                        Text='<%# bind("prize") %>'></asp:TextBox>
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
                    <asp:FileUpload ID="filefrontimage" runat="server" />
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
                    <asp:FileUpload ID="filebackimage" runat="server" />
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
                    <asp:TextBox ID="txtmodelid" runat="server" TabIndex="11" 
                        Text='<%# bind("modalid") %>'></asp:TextBox>
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
                    <asp:TextBox ID="txtmodelname" runat="server" TabIndex="12" 
                        Text='<%# bind("modalname") %>'></asp:TextBox>
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
                    <asp:TextBox ID="txtcolor" runat="server" TabIndex="13" 
                        Text='<%# bind("color") %>'></asp:TextBox>
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
                    <asp:Button ID="btnUpdateAccess" runat="server" onclick="btnUpdateAccess_Click" 
                        Text="Button" />
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
                    &nbsp;</td>
            </tr>
        </table>
                </ItemTemplate>
            </asp:TemplateField>
        </Fields>
    </asp:DetailsView>  
            
    </asp:Content>
