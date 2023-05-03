<%@ Page Title="" Language="C#" MasterPageFile="~/C/user.Master" AutoEventWireup="true" CodeBehind="fashion.aspx.cs" Inherits="UNIQUE.C.fashion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <link rel="stylesheet" href="../css/bootstrap.min.css" />
   
   <center> 
       
    <asp:DropDownList   ID="cetegory" runat="server" AutoPostBack="true" OnSelectedIndexChanged="cetegory_SelectedIndexChanged"  
        BackColor="Yellow" Font-Bold="true" Font-Size="X-Large" > 

    </asp:DropDownList>
    <asp:TextBox ID="TextBox1" runat="server"  Height="25px" Width="218px" Font-Bold="false"></asp:TextBox>
    <asp:ImageButton  ID="img" runat="server"   ImageUrl="~/Images/search.png" Height="25px" Width="25px" OnClick="img_Click" />

       <br /><br />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [product]">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="ID" PropertyName="text" Type="String"  />
        </SelectParameters>
    </asp:SqlDataSource>
   
       
       
       
       <asp:DataList ID="DataList1" runat="server" DataKeyField="p_Id"  Width="298px" RepeatColumns="3" 
           OnItemCommand="DataList1_ItemCommand" CellPadding="5"       >
           
        <ItemTemplate>
          
            <h6>Product Name</h6>
            <asp:Label ID="p_name" runat="server"  Text='<%# Eval("p_name") %>'  Font-Bold="true"/>
            <br />
            
            <asp:ImageButton ID="Image1" runat="server"  Width="300px" Height="300px" ImageUrl='<%# Eval("p_img") %>'    CommandArgument='<%# Eval("p_Id") %>' CommandName="addtocart" />
            <br />
            Price:
            <asp:Label ID="p_price" runat="server" Text='<%# Eval("p_price") %>'   Font-Bold="true"   />
            <br />
            Details:
            <asp:Label ID="p_des" runat="server" Text='<%# Eval("p_des") %>'  Font-Bold="true"/>
            <br />
            category:
            <asp:Label ID="cat_name" runat="server" Text='<%# Eval("cat_name") %>'  Font-Bold="true"/>
            <br />
            <!--<asp:ImageButton ID="Image2" runat="server" Width="50px" Height="50px" ImageUrl="~/Images/addtocart.jpg"   />-->
                
           
<br /> 
        </ItemTemplate>
    </asp:DataList>
       </center>


</asp:Content>
