<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Orderbook.aspx.cs" Inherits="Orderbook" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<style type="text/css">
    #header
    {
        background-color: Blue;
        padding: 10px;
        height: 50px;
    }
    #con
    {
        height: 500px;
        background-color: Aqua;
        -webkit-border-radius: 0px;
        -moz-border-radius: 0px;
        border-radius: 0px;
        border: 2px solid #000000;
        background-color: #BFBFBF;
        -webkit-box-shadow: #B3B3B3 8px 8px 8px;
        -moz-box-shadow: #B3B3B3 8px 8px 8px;
        box-shadow: #B3B3B3 8px 8px 8px;
    }
    #foot
    {
        background-color: Black;
        height: 100px;
    }
    .style1
    {
        width: 163px;
    }
    .style2
    {
        width: 294px;
    }
    .style3
    {
        height: 97px;
    }
    .style4
    {
        height: 51px;
    }
    .style5
    {
        width: 50%;
        height: 52px;
    }
</style>
<body>
    <form id="form1" runat="server">
    <div id="w">
        <div id="header">
          <h2 style="color:White";>Welcome to FlipFlop</h2>
        </div>
        <div id="con">
            <table width="100%">
                <tr>
                    <td style="width:750px">
                        <table width="700px" style="margin-left: 40px; margin-top: 50px; height: 350px">
                            <tr>
                                <td class="style2">
                                    &nbsp;&nbsp;
                                    <table width="100%" cellpadding="7">
                                        <tr>
                                            <td align="center">
                                                Enter Email&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtemail" runat="server" Height="24px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center">
                                                Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" Height="25"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                            </td>
                                            <td>
                                                <asp:Button ID="btnlogin" Text="login" runat="server" Height="35" Width="100" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td>
                                    <table width="100%" cellpadding="7">
                                        <tr>
                                            <td class="style1" align="center">
                                                &nbsp;
                                                Create New Account
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style1">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style1" align="center">
                                                <asp:Button ID="btnsingup" runat="server" Text="Singup" Height="35" Width="100" 
                                                    onclick="btnsingup_Click" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        <table width="100%" style="height: 350px;margin-top: 50px;">
                            <tr>
                                <td colspan="2" class="style3">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    Total Summery</td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total Item</td>
                                <td class="style5">
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style4">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total Amount</td>
                                <td class="style4">
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp; &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                             <tr>
                                <td>
                                </td>
                                <td>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
        <div id="foot">
        </div>
    </div>
    </form>
</body>
</html>
