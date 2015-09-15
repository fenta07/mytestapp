<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Registration.aspx.cs" Inherits="Default3" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .txt
        {
            background-color: transparent;
            border: 0px;
            border-bottom: 2px outset White;
        }
        .txt:hover
        {
            background-color: White;
        }
        
        
        .TextIndicator_TextBox1_Strength1
        {
            background-color: Gray;
            color: white;
        }
        
        .TextIndicator_TextBox1_Strength2
        {
            background-color: Gray;
            color: Yellow;
        }
        
        .TextIndicator_TextBox1_Strength3
        {
            background-color: Gray;
            color: Fuchsia;
        }
        
        .TextIndicator_TextBox1_Strength4
        {
            background-color: Gray;
            color: Aqua;
        }
        
        .TextIndicator_TextBox1_Strength5
        {
            background-color: Gray;
            color: Lime;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <table width="100%">
        <tr>
            <td>
                <fieldset>
                    <legend>Personal Details </legend>
                    <table cellpadding="10px">
                        <tr>
                            <td>
                                FirstName
                            </td>
                            <td>
                                <asp:TextBox ID="fname" CssClass="txt" runat="server" Width="200px"> </asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                LastName
                            </td>
                            <td>
                                <asp:TextBox ID="lname" runat="server" Width="200px" CssClass="txt"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Gender
                            </td>
                            <td>
                                <asp:RadioButtonList ID="rdbgender" runat="server" RepeatColumns="2">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                State
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlstate" runat="server" AutoPostBack="True" DataSourceID="LinqDataSource1"
                                    DataTextField="statename" DataValueField="pkstateid" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                    <asp:ListItem>Select State</asp:ListItem>
                                </asp:DropDownList>
                                <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="dbhandlerDataContext"
                                    EntityTypeName="" TableName="tbl_states">
                                </asp:LinqDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                City
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlcity" runat="server" DataTextField="cityname" DataValueField="pkcity">
                                    <asp:ListItem>Select City</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Pin Code
                            </td>
                            <td>
                                <asp:TextBox ID="txtpin" runat="server" CssClass="txt"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Address
                            </td>
                            <td>
                                <asp:TextBox ID="txtaddress" runat="server" CssClass="txt" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </fieldset>
        </tr>
        <tr>
            <td>
                <fieldset>
                    <legend>Contect Details</legend>
                    <table cellpadding="10">
                        <tr>
                            <td>
                                E-Mail:
                            </td>
                            <td>
                                <asp:TextBox ID="txtemail" CssClass="txt" runat="server" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Mobile
                            </td>
                            <td>
                                <asp:TextBox ID="txtmobile" CssClass="txt" runat="server" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </fieldset>
            </td>
        </tr>
        <tr>
            <td>
                <fieldset>
                    <legend>Password Details</legend>
                    <table cellpadding="10">
                        <tr>
                            <td>
                                Enter Password
                            </td>
                            <td >
                                <asp:TextBox ID="txtpass" Width="150" runat="server" CssClass="txt" TextMode="Password" autocomplete="off" /><br />
                                <asp:Label ID="TextBox1_HelpLabel" runat="server" />
                                <br />
                                <asp:PasswordStrength ID="PasswordStrength1" runat="server" TargetControlID="txtpass"
                                    DisplayPosition="RightSide" StrengthIndicatorType="Text" PreferredPasswordLength="10"
                                    PrefixText="Strength:" HelpStatusLabelID="TextBox1_HelpLabel" TextStrengthDescriptions="Very Poor;Weak;Average;Strong;Excellent"
                                    StrengthStyles="TextIndicator_TextBox1_Strength1;TextIndicator_TextBox1_Strength2;TextIndicator_TextBox1_Strength3;TextIndicator_TextBox1_Strength4;TextIndicator_TextBox1_Strength5"
                                    MinimumNumericCharacters="0" MinimumSymbolCharacters="0" RequiresUpperAndLowerCaseCharacters="false">
                                </asp:PasswordStrength>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Re-Enter Password
                            </td>
                            <td>                                
                                 <asp:TextBox ID="repass" Width="150" runat="server" CssClass="txt" TextMode="Password" autocomplete="off" /><br />
                                <asp:Label ID="TextBox1_HelpLabel1" runat="server" />
                                <br />
                                <asp:PasswordStrength ID="PasswordStrength2" runat="server" TargetControlID="repass"
                                    DisplayPosition="RightSide" StrengthIndicatorType="Text" PreferredPasswordLength="10"
                                    PrefixText="Strength:" HelpStatusLabelID="TextBox1_HelpLabel1" TextStrengthDescriptions="Very Poor;Weak;Average;Strong;Excellent"
                                    StrengthStyles="TextIndicator_TextBox1_Strength1;TextIndicator_TextBox1_Strength2;TextIndicator_TextBox1_Strength3;TextIndicator_TextBox1_Strength4;TextIndicator_TextBox1_Strength5"
                                    MinimumNumericCharacters="0" MinimumSymbolCharacters="0" RequiresUpperAndLowerCaseCharacters="false">
                                </asp:PasswordStrength>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="btnsubmit" Text="Submit" runat="server" Width="120px" Height="30px"
                                    OnClick="btnsubmit_Click" />
                            </td>
                            <td>
                                <asp:Button ID="btnclear" Text="Clear" runat="server" Width="120px" Height="30px" />
                            </td>
                        </tr>
                    </table>
                </fieldset>
            </td>
        </tr>
    </table>
</asp:Content>
