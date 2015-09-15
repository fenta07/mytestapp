<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin Page.master" AutoEventWireup="true"
    CodeFile="ManageCompany.aspx.cs" Inherits="Admin_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<h2 style="text-align:center">Manage Compney</h2>
    <table style="width: 100%;">
        <tr>
            <td style="width:30%;">
                &nbsp;
            </td>
            <td>
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td style="margin-left: 40px">
                <asp:GridView ID="gridcom" runat="server" AutoGenerateColumns="False" DataKeyNames="pkcomid"
                    OnRowCancelingEdit="ComCancel" OnRowDeleting="ComDeleting" OnRowEditing="ComEdit"
                    OnRowUpdating="ComUpdate">
                    <Columns>
                        <asp:TemplateField HeaderText="Comnpay Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# bind("comname") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# bind("comname") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
