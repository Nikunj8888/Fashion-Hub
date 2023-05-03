<%@ Page Title="" Language="C#" MasterPageFile="~/C/user.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="UNIQUE.C.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 77%;
            margin-left: 149px;
            margin-right: 0px;
        }
        .auto-style3 {
            width: 77%;
            margin-left: 150px;
        }
        .auto-style4 {
            width: 74%;
            margin-left: 157px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
      <!--<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
      <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
        <script src="../css/bootstrap.min.css"></script>
    -->
    <link rel="stylesheet" href="../css/bootstrap.min.css" />
    
     <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/signin.aspx" Text="Logout" ></asp:HyperLink> 
      
    <div id="demo" class="carousel slide" data-ride="carousel">
        
        <br /><br /><br />
  <!-- Indicators -->

  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="../ImgSllider/1.jpg" alt="Los Angeles" height="400px"  class="auto-style2" >
        
    </div>
    <div class="carousel-item" >
      <img src="../ImgSllider/4.jpg" alt="Chicago" height="400px" class="auto-style3">
    </div>
    <div class="carousel-item">
      <img src="../ImgSllider/5.jpg" alt="New York" height="400px" class="auto-style4">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon">
        
        </span>
  </a>
        <br /><br />
</div>
      <div class="container center ">
        <div class="row ">
            <div class="col-lg-4">
                <img class="img-circle " src="../Images/fragrance1.jpg" alt="thumb" width="140" height="140" />
                <h2>
                   perfume </h2>
                <p>
                    Featuring a 15.49-cm (6.1) all-screen Liquid Retina LCD and a glass and aluminum
                    design, the iPhone 11 is as beautiful as it gets. Also, the IP68 rating ensures
                    that is water-resistant up to 2 meters for 30 minutes....</p>
                <p>
                    <a class="btn btn-default " href="#" role="button">View More &raquo;</a></p>
            </div>
            <div class="col-lg-4">
                <img class="img-circle " src="../Images/shoes1.jpg" alt="thumb" width="140" height="140" />
                <h2>
                    Footwear</h2>
                <p>
                    Featuring a 15.49-cm (6.1) all-screen Liquid Retina LCD and a glass and aluminum
                    design, the iPhone 11 is as beautiful as it gets. Also, the IP68 rating ensures
                    that is water-resistant up to 2 meters for 30 minutes....</p>
                <p>
                    <a class="btn btn-default " href="#" role="button">View More &raquo;</a></p>
            </div>
            <div class="col-lg-4">
                <img class="img-circle " src="../Images/suit1.jpg" alt="thumb" width="140" height="140" />
                <h2>
                    Clothings</h2>
                <p>
                    Featuring a 15.49-cm (6.1) all-screen Liquid Retina LCD and a glass and aluminum
                    design, the iPhone 11 is as beautiful as it gets. Also, the IP68 rating ensures
                    that is water-resistant up to 2 meters for 30 minutes....</p>
                <p>
                    <a class="btn btn-default " href="#" role="button">View More &raquo;</a></p>
            </div>
        </div>


            </div>



   




</asp:Content>
