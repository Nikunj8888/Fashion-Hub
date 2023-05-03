<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addtocart.aspx.cs" Inherits="UNIQUE.C.addtocart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  
   <link rel="stylesheet" href="../css/bootstrap.min.css" />
  
       
  
</head>
<body>
    <form id="form1" runat="server">
    
    
<div><center>
            <h2 style="font-family:sans-serif">
                You Have Following Product In Your Cart
            </h2>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/C/fashion.aspx" Font-Bold="true"
                Font-Size="X-Large">Continue Shopping</asp:HyperLink>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderStyle="Solid" BorderWidth="5px" Font-Bold="True" Height="279px" Width="1142px" ShowFooter="True" OnRowDeleting="GridView1_RowDeleting"
                >
                <Columns>
                    <asp:BoundField DataField="p_Id" HeaderText="PNO">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>

                    <asp:BoundField DataField="p_name" HeaderText="Product Name">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>

                    <asp:ImageField DataImageUrlField="p_img" HeaderText="Product Image" >
                        <ControlStyle Height="100px" Width="100px" />
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:ImageField>

                    <asp:BoundField DataField="p_price" HeaderText="Total Price">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>

                    <asp:BoundField DataField="p_des" HeaderText="Product Des">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>

                    <asp:BoundField DataField="cat_name" HeaderText="Category Name">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>

                    <asp:BoundField DataField="totalprice" HeaderText="Total Price">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField> 

                    <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="Black" ForeColor="White" />
                <HeaderStyle BackColor="DarkOrchid" ForeColor="White" />
       
                
            </asp:GridView>
            <br />

  

    
    <section class="h-100 ">
  <div class="container py-5 h-100 bg-dark">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col">
        <div class="card card-registration my-4" style="left: 80px; top: 0px; width: 1011px">
          <div class="row g-0">
            <div class="col-xl-6 d-none d-xl-block">
              <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
                alt="Sample photo" class="img-fluid"
                style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
            </div>
            <div class="col-xl-6">
              <div class="card-body p-md-5 text-black">
                <h3 class="mb-5 text-uppercase">Fillup The Form</h3>

                <div class="row">

                  <!--<div class="col-md-6 mb-4">
                    <div class="form-outline">
                         <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="PNO:"></asp:Label>
 <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox8"
              ErrorMessage="Must Enter Product No" ForeColor="Red"  CssClass="form-control form-control-lg"></asp:RequiredFieldValidator>
                        
                     
                    </div>
                  </div>-->
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                         <asp:Label ID="Label2" runat="server" Text="Full Name:" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
              ErrorMessage="Must Enter Name" ForeColor="Red" ValidationGroup="a1" SetFocusOnError="True"></asp:RequiredFieldValidator>

                    </div>
                  </div>
                </div>

                <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                        <asp:Label ID="Label3" runat="server" Text="Email:" Font-Bold="True"></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="email" ></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
              ErrorMessage="Must Enter Email" ForeColor="Red" ValidationGroup="a1" SetFocusOnError="True"></asp:RequiredFieldValidator>
         
                      
                    </div>
                  </div>

                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                        <asp:Label ID="Label4" runat="server" Text="ContactNo:" Font-Bold="True"></asp:Label>
                         <asp:TextBox ID="TextBox3" runat="server" TextMode="Phone"  ></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3"
              ErrorMessage="Must Enter ContactNo" ForeColor="Red" ValidationGroup="a1" SetFocusOnError="True"></asp:RequiredFieldValidator>
 

                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3"
                            ErrorMessage="Enter Valid Number" ForeColor="Red" 
                            ValidationExpression="^([6|7|8|9][0-9]{9})$" SetFocusOnError="True" ValidationGroup="a1" Display="Dynamic"></asp:RegularExpressionValidator>
 

                    </div>
                  </div>
                </div>

                <div class="form-outline mb-4">
                    <asp:Label ID="Label5" runat="server" Text="Address:" Font-Bold="True"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Width="375px"   ></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4"
              ErrorMessage="Must Enter Address" ForeColor="Red" ValidationGroup="a1" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>

                </div>

                <div class="d-md-flex justify-content-start align-items-center mb-4 py-2">
                    <asp:Label ID="Label6" runat="server" Text="Pincode:" Font-Bold="True"></asp:Label>
                    <asp:TextBox ID="TextBox5" runat="server" Width="270px"  ></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5"
              ErrorMessage="Must Enter Pincode" ForeColor="Red" ValidationGroup="a1" SetFocusOnError="True"></asp:RequiredFieldValidator>

          <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter valid pincode" ForeColor="Red"
              MaximumValue="999999" MinimumValue="111111" Type="Double" ValidationGroup="a1" SetFocusOnError="True" ></asp:RangeValidator>

                </div>

                <div class="row">
                  <div class="col-md-6 mb-4">
                      <asp:Label ID="Label9" runat="server" Text="City:" Font-Bold="True"></asp:Label>
                       <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" BackColor="White" ControlToValidate="TextBox6"
                    ErrorMessage="Must Enter City" ForeColor="Red" ValidationGroup="a1" SetFocusOnError="True"></asp:RequiredFieldValidator>
                
                  </div>
                  <div class="col-md-6 mb-4">
                      <asp:Label ID="Label10" runat="server" Text="State:" Font-Bold="True"></asp:Label>
                      <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" BackColor="White" ControlToValidate="TextBox7" ErrorMessage="Must Enter State" ForeColor="Red" ValidationGroup="a1" SetFocusOnError="True"></asp:RequiredFieldValidator>
                  </div>
                </div>

                <div class="form-outline mb-4">
                    <asp:Label ID="Label8" runat="server" Text="Delivery Type:" Font-Bold="True"></asp:Label>
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" CellPadding="10" RepeatDirection="Horizontal">
              <asp:ListItem Selected="True">Cash On Delivery</asp:ListItem>
                    <asp:ListItem>Online </asp:ListItem>
          </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" BackColor="White" ControlToValidate="RadioButtonList2" ErrorMessage="Must Enter Delivery Type" ForeColor="Red" ValidationGroup="a1" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>

               
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>



            <br /><asp:Image runat="server" ImageUrl="~/Images/QR_Code.png" ID="Image1" Height="255px" /><br /><br /><br/>

            <asp:Button ID="Button1" runat="server" BackColor="Aqua" ForeColor="Black" Height="37px" Text="Check out"
                Width="150px" OnClick="Button1_Click" ValidationGroup="a1"  />&nbsp;&nbsp;
            
            <br />
                   

        </div>


        <br/><br />

    </form>
</body>
</html>

