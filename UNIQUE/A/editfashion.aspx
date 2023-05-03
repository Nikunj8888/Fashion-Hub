<%@ Page Title="" Language="C#" MasterPageFile="~/A/Admin.Master" AutoEventWireup="true" CodeBehind="editfashion.aspx.cs" Inherits="UNIQUE.A.editfashion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <br />
        <br />
        <h1>Edit Product Page</h1>
        <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="p_Id" DataSourceID="SqlDataSource1" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="10" CellSpacing="5" ForeColor="Black" GridLines="Vertical" PageSize="6" >
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="p_Id" HeaderText="p_Id" InsertVisible="False" ReadOnly="True" SortExpression="p_Id" />
            <asp:BoundField DataField="p_name" HeaderText="p_name" SortExpression="p_name" />
            <asp:ImageField  DataImageUrlField="p_img" HeaderText="p_img" SortExpression="p_img" ControlStyle-Height="100px" />
            <asp:BoundField DataField="p_price" HeaderText="p_price" SortExpression="p_price" />
            <asp:BoundField DataField="p_des" HeaderText="p_des" SortExpression="p_des" />
            <asp:BoundField DataField="cat_name" HeaderText="cat_name" SortExpression="cat_name" />
            <asp:CommandField ShowDeleteButton="True"  DeleteImageUrl="~/Images/remove.png" ButtonType="Image"  ControlStyle-Height="45px" > 
<ControlStyle Height="45px"></ControlStyle>
            </asp:CommandField>
            <asp:CommandField ShowEditButton="True"  ButtonType="Image" EditImageUrl="~/Images/Edit.png"/>
           
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
        <br />
        <br />
        <hr />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Size="Large" Font-Underline="True" ForeColor="#FF0066" NavigateUrl="~/A/insertproduct.aspx">Insert Fashion Products</asp:HyperLink>
        <br />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [product]" 
        UpdateCommand="UPDATE product SET  p_name = @p_name,p_img=@p_img,p_price=@p_price,p_des=@p_des,
            cat_name=@cat_name where p_id=@p_id"
        DeleteCommand="DELETE from product WHERE p_Id=@p_Id">
        
         <UpdateParameters>
            <asp:ControlParameter ControlID="GridView1" Name="p_name" 
                PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="GridView1" Name="p_img" 
                PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="GridView1" Name="p_price" 
                PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="GridView1" Name="p_des" 
                PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="GridView1" Name="cat_name" 
                PropertyName="SelectedValue" />
             <asp:ControlParameter ControlID="GridView1" Name="p_id" 
                PropertyName="SelectedValue" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
        

    </center>
</asp:Content>
