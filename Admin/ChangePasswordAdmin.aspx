<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin Page.master" AutoEventWireup="true"
    CodeFile="ChangePasswordAdmin.aspx.cs" Inherits="Admin_Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            height: 38px;
        }
        .style2
        {
            height: 56px;
        }
    .style3
    {
        height: 27px;
    }
        .style4
        {
            color: #FFFF66;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="w">
        <h1 style="text-align: center;" class="style4">
            &nbsp;</h1>
        <h1 style="text-align: center;" class="style4">
            &nbsp;</h1>
        <h1 style="text-align: center; font-family: Calibri;" class="style4">
            Change Password
        </h1>
        <table width="100%" style="font-family: Calibri">
            <tr>
                <td class="style3">
                    </td>
                <td class="style3" colspan="3" align="center">
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
                    &nbsp;</td>
                <td class="style3">
                    </td>
            </tr>
            <tr>
                <td class="style1">
                </td>
                <td align="right" class="style1">
                    <span class="style4">Old Password</span>
                </td>
                <td class="style1">
                </td>
                <td class="style1">
                    <asp:TextBox ID="txtopass" runat="server" TextMode="Password" Width="150px" Height="20px"></asp:TextBox>
                </td>
                <td class="style1">
                </td>
            </tr>
            <tr class="style1">
                <td>
                </td>
                <td align="right">
                    <span class="style4">New Password</span>
                </td>
                <td>
                </td>
                <td>
                    <asp:TextBox ID="txtnpass" runat="server" TextMode="Password" Width="150px" Height="20px"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr class="style1">
                <td>
                </td>
                <td align="right" class="style4">
                    Conform Password
                </td>
                <td>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="150px" Height="20px"></asp:TextBox>
                </td>
                <td>
                </td>
                <tr>
                    <td class="style2">
                    </td>
                    <td class="style2">
                    </td>
                    <td class="style2">                    
                    </td>
                    <td class="style2">
                    <asp:Button ID="btnchangepass" runat="server" Text="Change Password" Height="30px" 
                            Width="130px" onclick="btnchangepass_Click" 
                            style="color: #FFFFFF; background-color: #0099FF" />
                    </td>
                </tr>
            </tr>
        </table>
    </div>
</asp:Content>
