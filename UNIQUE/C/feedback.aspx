<%@ Page Title="" Language="C#" MasterPageFile="~/C/user.Master" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="UNIQUE.C.feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    
    
    <style type="text/css">
       body{
    //background: -webkit-linear-gradient(left, #0072ff, #00c6ff);
}
.contact-form{
    background: #fff;
    margin-top: 10%;
    margin-bottom: 5%;
    width: 70%;
}
.contact-form .form-control{
    border-radius:1rem;
}
.contact-form form{
    padding: 14%;
}
.contact-form form .row{
    margin-bottom: -7%;
}
.contact-form h3{
    margin-bottom: 8%;
    margin-top: -10%;
    text-align: center;
    color: #0062cc;
}
.contact-form .btnContact {
    width: 50%;
    border: none;
    border-radius: 1rem;
    padding: 1.5%;
    background: #dc3545;
    font-weight: 600;
    color: #fff;
    cursor: pointer;
}
.btnContactSubmit
{
    width: 50%;
    border-radius: 1rem;
    padding: 1.5%;
    color: #fff;
    background-color: #0062cc;
    border: none;
    cursor: pointer;
}
        
    </style>
    <link rel="stylesheet" href="../css/bootstrap.min.css" />
    
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
<div class="container contact-form">
            
            <form>
                <h3>Drop Us a FeedBack</h3>
               <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">

                            <asp:textbox   id="txtname" class="form-control" placeholder="Your Name *" value="" runat="server" ></asp:textbox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"
                              ErrorMessage="Must Enter Name!!!" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>

                        <div class="form-group">

                            <asp:textbox id="txtemail" class="form-control" placeholder="Your Email *" value=""  runat="server"></asp:textbox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemail"
                              ErrorMessage="Must Enter Email!!!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        
                        <div class="form-group">

                            <asp:textbox id="txtaddress" class="form-control" placeholder="Your Address *" value=""  runat="server"></asp:textbox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtaddress"
                              ErrorMessage="Must Enter Address!!!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>

                        <div class="form-group">

                            <asp:textbox id="TextBox1" class="form-control" placeholder="Your Phone Number *" value=""  runat="server"></asp:textbox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1"
                              ErrorMessage="Must Enter PhoneNo!!!" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                        </div>

                        <div class="form-group">

                            <asp:button id="Button1" class="btnContact" value="Send Message"  runat="server"
                                OnClick="Button1_Click" Text="Send Message" />
                        
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">

                            <asp:textbox id="Txtfeedback" class="form-control" placeholder="Your Message *" width= "100%" height= "150px" runat="server"></asp:textbox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtfeedback"
                              ErrorMessage="Must Enter FeedBack!!!" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                        </div>

                    </div>
                </div>
            </form>
</div>

</asp:Content>
