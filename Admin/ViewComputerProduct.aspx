<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin Page.master" AutoEventWireup="true" CodeFile="ViewComputerProduct.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:GridView ID="GridViewComputer" runat="server" AutoGenerateColumns="False" Width="550px"
            Style="margin-right: 3px" DataKeyNames="pkprodid" 
        onselectedindexchanging="Select" onrowdeleting="Delete">
            <Columns>
                <asp:TemplateField HeaderText="Computer Product">
                    <EditItemTemplate>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <table width="100%">
                            <tr>
                                <td class="style1">
                                    <asp:Image ID="img" runat="server" Height="111px" Width="124px" ImageUrl='<%# String.Format("../img/" + Eval("frontimage")) %>' />
                                </td>
                                <td>
                                    <table width="100%">
                                        <tr>
                                            <td class="style2">
                                                Product Name:
                                            </td>
                                            <td>
                                                <asp:Label ID="lbln" runat="server" Text="<%# bind('prodname') %>"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <table width="100%">
                                        <tr>
                                            <td>
                                                <asp:LinkButton ID="lnkDel" runat="server" CommandName="Delete">Delete Product</asp:LinkButton>
                                            </td>
                                            <td>
                                                <asp:LinkButton ID="lnksel" runat="server" CommandName="Select">Select Product</asp:LinkButton>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
</asp:Content>

