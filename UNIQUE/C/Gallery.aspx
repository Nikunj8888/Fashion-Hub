<%@ Page Title="" Language="C#" MasterPageFile="~/C/user.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="UNIQUE.C.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <style>
   
          .zoom {
  padding: 50px;
 
  transition: transform .2s; 
  width: 200px;
  height: 200px;
  margin: 0 auto;
  
}

.zoom:hover {
  transform: scale(1.5);
}
            
    </style>
   
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Gallery]"></asp:SqlDataSource>
    <center><br /><br />
        <h1>Gallery Page</h1>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatColumns="3" CellPadding="5" CellSpacing="3" HorizontalAlign="Center">
        <ItemTemplate>
            
            <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval ("image") %>' Height="300px" Width="300px" CssClass="zoom"  />
<br />
        </ItemTemplate>

    </asp:DataList>
</center>
    
</asp:Content>
