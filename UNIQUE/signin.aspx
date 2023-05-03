<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="UNIQUE.signin" %>



<!--
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>-->

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<link rel="stylesheet" href="css/bootstrap.min.css" />

    	<!--Bootsrap 4 CDN-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
    <!--Fontawesome CDN-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

	<!--Custom styles-->
	<link rel="stylesheet" type="text/css" href="styles.css">

    <style>

@import url('https://fonts.googleapis.com/css?family=Numans');




body
{
background-color:darkgray;
height:100%;
width:100%;
background-position-x:center;
background-repeat:no-repeat;
font-family: 'Numans', sans-serif;
position:relative;
}

.container{
height: 100%;
align-content: center;
}

.card{
height: 370px;
margin-top: auto;
margin-bottom: auto;
width: 400px;
background-color:black; 
}

.social_icon span{
font-size: 60px;
margin-left: 10px;
color:cyan;
}

.social_icon span:hover{
color: white;
cursor: pointer;
}

.card-header h3{
color: white;
}

.social_icon{
position: absolute;
right: 20px;
top: -45px;
}

.input-group-prepend span{
width: 50px;
background-color:aqua;
color: black;
border:0 !important;
}

input:focus{
outline: 0 0 0 0  !important;
box-shadow: 0 0 0 0 !important;

}

.remember{
color: white;
}

.remember input
{
width: 20px;
height: 20px;
margin-left: 15px;
margin-right: 5px;
}

#button1
{
	color: black;
	background-color: cyan;
	width: 100px;
}
#button1:hover
{
	color: black;
background-color: white;

}
#button2
{
	color: black;
	background-color: cyan;
	width: 100px;
}
#button2:hover
{
	color: black;
background-color:white;

}

.login_btn:hover{
}

.links{
color: white;
}

.links a{
margin-left: 4px;
}

        .auto-style1 {
            position: relative;
            display: flex;
            -ms-flex-direction: column;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-clip: border-box;
            border-radius: .25rem;
            height: 419px;
            width: 400px;
            left: 0px;
            top: 0px;
            margin-top: auto;
            margin-bottom: auto;
            background-color: black;
        }

    </style>
    <title></title>
</head>
    
 <body>
<div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="auto-style1">
			<div class="card-header">
				
				<h3>Sign In|
                    </h3>
				<div class="d-flex justify-content-end social_icon">
					<a href="https://www.facebook.com/login/"><span><i class="fab fa-facebook-square"></i></span></a>
					<a href="https://accounts.google.com/v3/signin/identifier?dsh=S51184941%3A1672222120376731&continue=https%3A%2F%2Fwww.google.com%3Fhl%3Den-GB&ec=GAlA8wE&hl=en-GB&flowName=GlifWebSignIn&flowEntry=AddSession"><span><i class="fab fa-google-plus-square"></i></span></a>
					<a href="https://twitter.com/i/flow/login"><span><i class="fab fa-twitter-square"></i></span></a>
				</div>
			</div>
			<div class="card-body">
				<form id="form1" runat="server">
					<div class="input-group form-group">
						<div class="input-group-prepend" >
							<span class="input-group-text"><i class="fas fa-user">
                            
                            </i></span>
						</div>
					
						<asp:TextBox ID="txtusername" runat="server" Width="221px" TextMode="Email"  ></asp:TextBox>
					</div>
					
					<div class="input-group form-group" >
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
					
						<asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="221px"  ></asp:TextBox>
					    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtpassword" ErrorMessage="Enter Valid password" ForeColor="Red" ValidationExpression="^.{4,12}$"></asp:RegularExpressionValidator>
					</div>
					
					<div class="row align-items-center remember">&nbsp;&nbsp
                    <asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl="~/Images/protection.png" Height="50px" Width="50px" OnClick="ImageButton1_Click"/>
					</div>
					
					<div class="form-group">
						
						<asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click"
							class="btn float-right" Width="84px"  />

						&nbsp;&nbsp;
						

				    	&nbsp;&nbsp;

					
				    <asp:Button ID="Button2" runat="server" Text="NewUser"  OnClick="Button2_Click1" class="btn float-right" Width="84px"  />
					
					</div>
				<center><div >
					
				    <asp:Label ID="Label1" runat="server" Text="." Visible="False" ForeColor="Red"></asp:Label>
					
				</div></center>
				</form>
			</div>
			<div class="card-footer">
				<div class="d-flex justify-content-center links">
					<a href="forgot.aspx">Forgot password?</a>

					This Site Control By Nikunj Handa 
						
				</div>
				<div class="d-flex justify-content-center links">
					
				</div>
			</div>
		</div>
	    
	</div>
</div>
</body>
</html>
