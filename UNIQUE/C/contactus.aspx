<%@ Page Title="" Language="C#" MasterPageFile="~/C/user.Master" AutoEventWireup="true" CodeBehind="contactus.aspx.cs" Inherits="UNIQUE.C.contactus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<link rel="stylesheet" href="../css/bootstrap.min.css" />

    <style>
					body{
		background-color: ;
	}
	.contact{
		padding: 4%;
		height: 400px;
	}
	.col-md-3{
		background: #ff9b00;
		padding: 4%;
		border-top-left-radius: 0.5rem;
		border-bottom-left-radius: 0.5rem;
	}
	.contact-info{
		margin-top:10%;
	}
	.contact-info img{
		margin-bottom: 15%;
	}
	.contact-info h2{
		margin-bottom: 10%;
	}
	.col-md-9{
		background: #fff;
		padding: 3%;
		border-top-right-radius: 0.5rem;
		border-bottom-right-radius: 0.5rem;
	}
	.contact-form label{
		font-weight:600;
	}
	.contact-form button{
		background: #25274d;
		color: #fff;
		font-weight: 600;
		width: 25%;
	}
	.contact-form button:focus{
		box-shadow:none;
	}
    </style>
	<div class="container" >

        <br />
        <h1 class="text-center">
            Contact Us!
        </h1>
        <br /><br />
        <div class="row">
            <div class=" col-md col-sm-12" ">
        <img src="../Images/location.png"  class="rounded-circle" class="card-img-top "  height="50px" width="50px">
        <div class="card-body ">
         <h5>New 150Feet Ring Road </h5>
         <h5>Near imperial palace   </h5>
            <h5>Shop No 1.</h5>
        </div>
      </div>
      <div class="col-md col-sm-12" ">
        <img src="../Images/phone.png" class="rounded-circle" class="card-img-top" alt="..." height="50px" width="50px">
        <div class="card-body">
         <h5>Phone No:</h5>
            <h5>
                +91 8128228622
            </h5>
        </div>
      </div>
      <div class=" col-md col-sm-12" ">
        <img src="../Images/email.png" class="rounded-circle" class="card-img-top" alt="..." height="50px" width="50px">
        <div class="card-body">
         <h5>
             Email:
         </h5>
            <h5>->uniquefashion88@gmail.com</h5>
            <h5>->nikunjhanda1111@gmail.com</h5>
        </div>
      </div>
            
        </div>
        
    </div>
    <div class="container contact">
	<div class="row">
		<div class="col-md-3">
			<div class="contact-info">
				<img src="https://image.ibb.co/kUASdV/contact-image.png" alt="image"/>
				<h2>Contact Us</h2>
				<h4>We would love to hear from you !</h4>
			</div>
		</div>
		<div class="col-md-9">
			<div class="contact-form">
				<div class="form-group">
				  <label class="control-label col-sm-2" for="fname">First Name:</label>
				  <div class="col-sm-10">          
					
					<asp:TextBox    runat="server" class="form-control" ID="fname"  name="fname" placeholder="Enter First Name"> </asp:TextBox>
				   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fname"
              ErrorMessage="Must Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>

				  </div>
				</div>
				
				<div class="form-group">
				  <label class="control-label col-sm-2" for="email">Email:</label>
				  <div class="col-sm-10">
					
				  <asp:TextBox    runat="server" class="form-control"  ID="email" placeholder="Enter email" name="email" TextMode="Email"></asp:TextBox>
				  </div>
				</div>
				<div class="form-group">
				  <label class="control-label col-sm-2" for="comment">Comment:</label>
				  <div class="col-sm-10">
					
				  <asp:TextBox    runat="server" class="form-control" rows="5" iD="comment" TextMode="MultiLine"></asp:TextBox>
				  </div>
				</div>
				<div class="form-group">        
				  <div class="col-sm-offset-2 col-sm-10">
					
					  <asp:ImageButton Id="Image1" runat="server" Width="133px" Height="50px"  ImageUrl="~/Images/submit.png" OnClick="Image1_Click" />
				  </div>
				</div>
			</div>
		</div>
	</div>
</div>

</asp:Content>
