<%@ Page Title="" Language="C#" MasterPageFile="~/A/Admin.Master" AutoEventWireup="true" CodeBehind="editcategory.aspx.cs" Inherits="UNIQUE.A.editcategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
         .txtbox
        {
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            border-bottom-left-radius: 10px;
            border-bottom-right-radius: 10px;
        }
    </style>
    <p>
        <br />
    </p><center>
    <h3>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT * FROM [cetegory]"
            DeleteCommand="DELETE FROM cetegory where cat_id=@cat_id">

        </asp:SqlDataSource>
        
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="10" CellSpacing="5" DataKeyNames="cat_id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            
            <Columns>
                <asp:BoundField DataField="cat_id" HeaderText="Category Id" InsertVisible="False" ReadOnly="True" SortExpression="cat_id" />
                <asp:BoundField DataField="cat_name" HeaderText="category Name" SortExpression="cat_name" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"  />
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
    </h3>
        <br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="X-Large" 
            Font-Underline="True" ForeColor="#FF0066" Text="Insert Category"></asp:Label>
        
        &nbsp;<br /><br />
        
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="Categoty:"></asp:Label>&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBox1" runat="server" Font-Strikeout="False" Width="188px" Height="27px" CssClass="txtbox"  ></asp:TextBox>
        <br />
        <br />

        <asp:Button ID="Button1" runat="server" Text="Insert" BackColor="Lime" Font-Bold="True" Width="86px" OnClick="Button1_Click" />
        

    </center>
</asp:Content>
