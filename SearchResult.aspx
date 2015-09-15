<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SearchResult.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <table style="width:100%;">
                        <tr>
                            <td rowspan="5">
                                <asp:Image ID="img" runat="server" Height="201px" 
                                    ImageUrl='<%# String.Format("img/" + Eval("frontimage")) %>' Width="166px" />
                            </td>
                            <td colspan="2">
                                &nbsp;<asp:Label ID="Label1" runat="server" Text='<%# bind("prodname") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;<asp:Label ID="Label2" runat="server" Text='<%# bind("comname") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="Label3" runat="server" Text='<%# bind("prize") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text='<%# bind("stock") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:LinkButton ID="txtmore" runat="server" CommandName="Update" 
                                    ForeColor="Black" Text="More Details"></asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Button ID="btnorder" runat="server" Text="ORDER NOW" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>

