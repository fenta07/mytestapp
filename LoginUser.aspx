<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="LoginUser.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div id="w">
        <table width="100%">
            <tr>
                <td style="width: 50%">
                    <fieldset>
                        <legend>Login User</legend>
                        <table cellpadding="10px" cellspacing="10px"> 
                            <tr>
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    UserName&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                                <td>
                                    <asp:TextBox ID="txtlogin" runat="server" Width="150"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    Password
                                </td>
                                <td>
                                    <asp:TextBox ID="txtpass" runat="server" TextMode="Password" Width="150"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                <asp:Button ID="btnlogin" runat="server" Text="Login" Width="100px" Height="30" />
                                </td>
                            </tr>
                        </table>
                    </fieldset>
                </td>
                <td style="width: 50%">
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
