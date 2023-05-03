<%@ Page Title="" Language="C#" MasterPageFile="~/A/Admin.Master" AutoEventWireup="true" CodeBehind="insertproduct.aspx.cs" Inherits="UNIQUE.A.insertproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        <br />
       
    </p>
    <div>
    <center>
     <asp:Label ID="Label1" runat="server" Text="Product Name:" Font-Bold="True"></asp:Label>       
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br /><br />
     
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     
        <asp:Label ID="Label2" runat="server" Text="Product Image:" Font-Bold="True"></asp:Label>            
        <asp:FileUpload ID="FileUpload1" runat="server"  /><br /><br />
        

        <asp:Label ID="Label3" runat="server" Text="Product Price:" Font-Bold="True"></asp:Label>            
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br /><br />
     
        <asp:Label ID="Label4" runat="server" Text="Product Des:" Font-Bold="True"></asp:Label>            
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br /><br />
     
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     
        <asp:Label ID="Label5" runat="server" Text="Product Category:" Font-Bold="True"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br /><br />
     

        <asp:Button ID="Button1" runat="server" BackColor="Lime" Font-Bold="True" ForeColor="Black" OnClick="Button1_Click" Text="Insert" Width="113px" />
     

    </center>
        </div>
</asp:Content>
