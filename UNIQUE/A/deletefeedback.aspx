<%@ Page Title="" Language="C#" MasterPageFile="~/A/Admin.Master" AutoEventWireup="true" CodeBehind="deletefeedback.aspx.cs" Inherits="UNIQUE.A.deletefeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <p>
        <center>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            DeleteCommand="DELETE FROM feedback WHERE (id = @id)" 
            SelectCommand="SELECT * FROM [feedback]">

        </asp:SqlDataSource>  <br /><br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" 
        BorderWidth="1px" CellPadding="10" CellSpacing="3" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="829px">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        
        <Columns>

            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="contactno" HeaderText="contactno" SortExpression="contactno" />
            <asp:BoundField DataField="feedback" HeaderText="feedback" SortExpression="feedback" />
            <asp:CommandField ShowDeleteButton="True" />
        
        </Columns>
        
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    
    </asp:GridView>
        
        </center>
    </p>
</asp:Content>
