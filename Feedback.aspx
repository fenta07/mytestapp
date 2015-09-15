<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Feedback.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        #w
        {
            margin:0px auto;               
            background-color:Gray;
            padding="10px"        
        }
        .name
        {
            font-size:20px;
            color:Black;
        }
        .style1
        {
            font-size: 20px;
            color: Black;
            width: 159px;
        }
        .txt
        {
            background-color:transparent;
            border:0px;
            border-bottom:2px outset White;
        }
       .txt:hover
       {
            background-color:White;
       }
       .cssround
       {
           
           -webkit-border-radius: 20px;
           -moz-border-radius: 20px;
           border-radius: 20px;
       }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div id="w">
        <table style="width: 100%; height: 500px">
            <tr>
                <td style="width: 40%">
                    <img src="Image/feedback-heads1.png" height="300px" width="300px" />
                </td>
                <td>
                    <table style="width: 100%; height: 400px">
                        <tr>
                            <td colspan="2" align="center">
                                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email
                            </td>
                            &nbsp;
                            <td>
                                <asp:TextBox ID="txtemail" runat="server" Width="150" ></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="txtemail" ErrorMessage="RegularExpressionValidator" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Please Enter Valid Email Address</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                &nbsp;&nbsp;&nbsp;&nbsp; Mobile
                            </td>
                            <td>
                                <asp:TextBox ID="txtmobile" runat="server" Width="150"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                &nbsp;&nbsp;&nbsp;&nbsp; Category
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlCategory" runat="server" Width="150">
                                    <asp:ListItem>Suggest New Features/Ideas</asp:ListItem>
                                    <asp:ListItem>i love FlipFlop</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                &nbsp;&nbsp;&nbsp;&nbsp; Message
                            </td>
                            <td>
                                <asp:TextBox ID="txtmsg" runat="server" Height="60" Width="150" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;<asp:Button ID="btnsubmin" runat="server" Text="Submit" Height="35" Width="100"
                                    OnClick="btnsubmin_Click" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
