<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin Page.master" AutoEventWireup="true"
    CodeFile="ManageLocation.aspx.cs" Inherits="Admin_ManageLocation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style2
        {
            font-size: 20px;
            text-align: center;
        }
        .c2
        {
            font-size:16px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <fieldset style="width: 80%; margin: 0px auto;">
        <table width="80%" style="margin: 0px auto;" cellpadding="5px">
            <tr>
                <td align="center" colspan="4" class="style2">
                    Manage Location
                </td>
            </tr>
            <tr>
                <td align="center" colspan="4">
                    <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2" class="c2">
                    Manage State
                </td>
                <td align="center" colspan="2" class="c2">
                    Manage City
                </td>
            </tr>
            <tr>
                <td>
                    Enter State
                </td>
                <td>
                    <asp:TextBox ID="txtstate" runat="server"></asp:TextBox>
                </td>
                <td>
                    Enter City
                </td>
                <td>
                    <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
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
                    Select State
                </td>
                <td>
                    <asp:DropDownList ID="ddlstate" runat="server" DataSourceID="LinqDataSource1" DataTextField="statename"
                        DataValueField="pkstateid">
                    </asp:DropDownList>
                    <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
                        ContextTypeName="dbhandlerDataContext" EntityTypeName="" TableName="tbl_states">
                    </asp:LinqDataSource>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:Button ID="btnstate" runat="server" Text="Save" OnClick="btnstate_Click" />
                </td>
                <td>
                </td>
                <td>
                    <asp:Button ID="btncity" runat="server" Text="Save" OnClick="btncity_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:GridView ID="gridstate" runat="server" AutoGenerateColumns="False" DataKeyNames="pkstateid"
                        OnRowCancelingEdit="StateEditCancel" OnRowEditing="StateEdit" OnRowUpdating="StateUpdate"
                        OnRowDeleting="StateDelete" BackColor="#DEBA84" BorderColor="#DEBA84" 
                        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                        <Columns>
                            <asp:TemplateField HeaderText="State Name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# bind("statename") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# bind("statename") %>'></asp:Label>
                                </ItemTemplate>
                                <ControlStyle BackColor="#3399FF" BorderColor="Yellow" BorderStyle="Solid" 
                                    ForeColor="White" />
                            </asp:TemplateField>
                            <asp:CommandField ShowEditButton="True" />
                            <asp:CommandField ShowDeleteButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                </td>
                <td colspan="2" align="center">
                    <asp:GridView ID="gridcity" runat="server" AutoGenerateColumns="False" 
                        onrowcancelingedit="CityCancelEdit" onrowediting="CityEdit" 
                        onrowupdating="CityUpadate" DataKeyNames="pkcity" 
                        onrowdeleting="CityDelete">
                        <Columns>
                            <asp:BoundField DataField="cityname" HeaderText="City Name" />
                            <asp:TemplateField HeaderText="State Name">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="ddlcity1" runat="server" 
                                        DataSourceID="LinqDataSource1" DataTextField="statename" 
                                        DataValueField="pkstateid">
                                    </asp:DropDownList>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# bind("statename") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ShowEditButton="True" />
                            <asp:CommandField ShowDeleteButton="True" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </fieldset>
</asp:Content>
