<%@ Page Title="" Language="C#" MasterPageFile="~/A/Admin.Master" AutoEventWireup="true" CodeBehind="insertgallery.aspx.cs" Inherits="UNIQUE.A.insertgallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    <br />
    <center><br /><br />
    <h4><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Gallery]"
        DeleteCommand="delete from Gallery where id=@id"
        
        ></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="778px" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="10" ForeColor="Black" GridLines="Vertical" PageSize="7" CellSpacing="5" Height="364px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:ImageField  DataImageUrlField="image" HeaderText="Image" SortExpression="image"  ControlStyle-Height="100px" />
                <asp:CommandField ShowDeleteButton="True"  ShowEditButton="True" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView><br /><br />
        <h3 style="color:#ff0066">Insert Image</h3>
        <br /><br />


        <asp:FileUpload ID="FileUpload1" runat="server" /><br /><br />
        <asp:Button ID="Button1" runat="server" Height="35px" OnClick="Button1_Click" Text="Insert" Width="116px" BackColor="Lime" />



    </h4>
       </center>
</asp:Content>
