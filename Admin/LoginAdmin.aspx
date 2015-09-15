<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginAdmin.aspx.cs" Inherits="admin_AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #f1
        {
            min-height: 449px;
        }
        .style1
        {
            height: 10px;
        }
        .style2
        {
            height: 25px;
        }
 
 

    </style>
    <link rel="stylesheet" type="text/css" href="../css/css_admin.css" />
</head>
<body background="../Image/bg.jpg">
    <form id="f1" runat="server">
    <fieldset style="height: 280px; width: 402px; margin-left: 320px; margin-top: 75px">
        <legend style="font-size: x-large; color: #FFFFFF; font-family: Calibri">Admin Login</legend>
        <table width="100%">
            <tr>
                <td align="center">
                    <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td align="center">
                    <p>
                        <asp:TextBox ID="txtuser" runat="server" placeholder="Username" Width="180px" Height="25px"></asp:TextBox>
                    </p>
                </td> 
            </tr>
            <tr>
                <td class="style1">
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:TextBox ID="txtpass" runat="server" placeholder="Password" TextMode="Password" Width="180px" Height="25px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <br />
                </td>
            </tr>
            <tr>
                <td style="margin-left: 400px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnssubmit" runat="server" Text="Login" Height="30px"
                        Width="100px" OnClick="btnssubmit_Click" />
                </td>
            </tr>
            <tr>
                <td style="margin-left: 400px">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="center">
                    Are you Forgot Password ?  <a href="#">Click Here to Reset!</a>
                </td>
            </tr>
            <tr>
                <td style="margin-left: 400px;">
                    &nbsp;
                </td>
            </tr>
        </table>
    </fieldset>
    </form>
</body>
</html>
