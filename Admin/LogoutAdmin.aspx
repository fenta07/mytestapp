<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin Page.master" AutoEventWireup="true"
    CodeFile="LogoutAdmin.aspx.cs" Inherits="Admin_Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style2
        {
            height: 29px;
            width: 34%;
        }
        .style3
        {
            height: 51px;
        }
        .style4
        {
            height: 9px;
            width: 34%;
        }
        .style5
        {
            height: 9px;
            width: 23%;
        }
        .style6
        {
            height: 29px;
            width: 23%;
        }
        .style7
        {
            width: 23%;
        }
        .style8
        {
            width: 34%;
        }
        .style9
        {
            width: 33%;
        }
        .style11
        {
            width: 176px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table width="100%">
        <tr>
            <td class="style5">
            </td>
            <td class="style4">
            </td>
            <td class="style11">
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td align="center" class="style3" colspan="4">
                Are You Sure Want to Logout!
            </td>
        </tr>
        <tr>
            <td class="style6">
            </td>
            <td class="style2">
            </td>
            <td class="style11">
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td class="style7">
            </td>
            <td align="center" class="style8">
                <asp:Button ID="btnyes" runat="server" Text="Yes" Height="30px" Width="70px" OnClick="Button1_Click" />
            </td>
            <td align="center" class="style11">
                <asp:Button ID="btnno" runat="server" Text="No" Height="30px" Width="70px" 
                    onclick="btnno_Click" />
            </td>
            <td class="style9">
            </td>
        </tr>
    </table>
</asp:Content>
