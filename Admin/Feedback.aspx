<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin Page.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Admin_Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2 style="text-align:center;">View FeedBack</h2>

    <asp:GridView ID="gridfeed" runat="server" Width="986px" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" 
        DataSourceID="LinqDataSource1">
        <Columns>
            <asp:BoundField DataField="message" HeaderText="message" 
                SortExpression="message" />
            <asp:BoundField DataField="emailid" HeaderText="emailid" 
                SortExpression="emailid" />
            <asp:BoundField DataField="mobile" HeaderText="mobile" 
                SortExpression="mobile" />
            <asp:BoundField DataField="catagory" HeaderText="catagory" 
                SortExpression="catagory" />
        </Columns>
    </asp:GridView>


    <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
        ContextTypeName="dbhandlerDataContext" EntityTypeName="" 
        TableName="tbl_feedbacks">
    </asp:LinqDataSource>


</asp:Content>

