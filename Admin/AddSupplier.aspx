<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin Page.master" AutoEventWireup="true"
    CodeFile="AddSupplier.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            color: #FFFFFF;
        }
        .style2
        {
            color: yellow;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h2 style="margin-left: 380px; margin-top: 30px; color: White;">
        &nbsp;<span class="style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Manage Supplier</span></h2>
    <table cellpadding="10px" width="500px" style="height: 250px; margin-left: 240px;
        margin-top: 50px;">
        <tr>
        <td>
            <asp:Label ID="lblmsg" runat="server" style="color: #FF3300"></asp:Label>
        </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;</td>
            <td class="style1">
                Supplier Name:
            </td>
            <td>
                <asp:TextBox ID="txtsupplier" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td class="style1">
                Supplier Account No
            </td>
            <td>
                <asp:TextBox ID="txtsuoacno" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td class="style1">
                Email ID
            </td>
            <td>
                <asp:TextBox ID="txtemailid" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td class="style1">
                Identy ID
            </td>
            <td>
                <asp:TextBox ID="txtidentyid" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td class="style1">
                Mobile No
            </td>
            <td>
                <asp:TextBox ID="txtmobile" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td class="style1">
                Is Supplier
            </td>
            <td>
                <asp:TextBox ID="txtissupplier" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
            </td>
            <td>
                <asp:Button ID="btnadd" runat="server" Text="Add Supplier" Height="30px" 
                    Width="121px" onclick="btnadd_Click" />
            </td>
        </tr>
      </table>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="pksid" 
                DataSourceID="LinqDataSource1" BackColor="White" 
        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        style="font-family: Calibri">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="pksid" HeaderText="pksid" InsertVisible="False" 
                        ReadOnly="True" SortExpression="pksid" />
                    <asp:BoundField DataField="supplier_ac_no" HeaderText="supplier_ac_no" 
                        SortExpression="supplier_ac_no" />
                    <asp:BoundField DataField="supplier_name" HeaderText="supplier_name" 
                        SortExpression="supplier_name" />
                    <asp:BoundField DataField="email_id" HeaderText="email_id" 
                        SortExpression="email_id" />
                    <asp:BoundField DataField="identy_id" HeaderText="identy_id" 
                        SortExpression="identy_id" />
                    <asp:BoundField DataField="mobile" HeaderText="mobile" 
                        SortExpression="mobile" />
                    <asp:BoundField DataField="is_supplier" HeaderText="is_supplier" 
                        SortExpression="is_supplier" />
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
                ContextTypeName="dbhandlerDataContext" EnableDelete="True" EnableInsert="True" 
                EnableUpdate="True" EntityTypeName="" TableName="tbl_suppliers">
            </asp:LinqDataSource>
       
    
    </asp:Content>

