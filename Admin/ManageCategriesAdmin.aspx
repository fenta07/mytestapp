<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin Page.master" AutoEventWireup="true"
    CodeFile="ManageCategriesAdmin.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            width: 225px;
        }
        .style2
        {
            width: 225px;
            height: 40px;
        }
        .style3
        {
            height: 40px;
        }
        .cssround
        {
            padding: 10px;
            webkit-border-radius: 20px;
            -moz-border-radius: 20px;
            border-radius: 20px 80px;
            opacity: 0.7;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h3 style="align=center">
        Manage Categries
    </h3>
    <table width="100%" cellpadding="5px" cellspacing="5px">
        <tr>
            <td class="style1">
                &nbsp;
            </td>
            <td>
                &nbsp;
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red" Font-Names="Berlin Sans FB"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Sub Categries Name
            </td>
            <td class="style3">
                <asp:TextBox ID="txtscatname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Categries Name
            </td>
            <td>
                <asp:DropDownList ID="ddlcat" runat="server">
                    <asp:ListItem>Computer</asp:ListItem>
                    <asp:ListItem>Leptop</asp:ListItem>
                    <asp:ListItem>Mobile</asp:ListItem>
                    <asp:ListItem>Accessories</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style1" colspan="2">
            </td>
        </tr>
        <tr>
            <td class="style1" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsave" runat="server" Text="Save" OnClick="Bunsave_Click" Height="40px"
                    Width="79px" class="cssround"></asp:Button>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style1" colspan="2">
                <asp:GridView ID="Gridsubcat" runat="server" AllowPaging="True" AllowSorting="True"
                    BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px"
                    CellPadding="4" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False"
                    OnRowCancelingEdit="scatcancelEdit" OnRowEditing="scatEdit" OnRowUpdating="scatUpdat"
                    OnRowDeleting="scatDelete" DataKeyNames="pksid">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="sname" HeaderText="SubCatagory Name" />
                        <asp:TemplateField HeaderText="Catagory Name">
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddlcat" runat="server" Width="76px">
                                    <asp:ListItem>Computer</asp:ListItem>
                                    <asp:ListItem>Mobile</asp:ListItem>
                                    <asp:ListItem>Leptop</asp:ListItem>
                                    <asp:ListItem>Accessories</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text="<%# bind('cname') %>"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
