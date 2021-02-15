<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentMenu.aspx.cs" Inherits="VarsityBusManagementWebApp.UI.StudentMenu" %>
<!DOCTYPE html>
<html lang="en">
   <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>Student Menu</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- bootstrap css -->
      <link rel="stylesheet" href="../Style/Edit/css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" href="../Style/Edit/css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="../Style/Edit/css/responsive.css">
      <!-- fevicon -->
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="../Style/Edit/css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
   </head>
   <!-- body -->
   <body class="main-layout">
      <!-- loader  -->
      <div class="loader_bg">
         <div class="loader"><img src="../Style/Edit/images/loading.gif" alt="#" /></div>
      </div>
      <!-- end loader --> 
      <!-- header -->
      <header>
         <!-- header inner -->
         <div class="header">
         <div class="container">
            <div class="row sticky-top">
               <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                  <div class="full">
                     <div class="center-desk">
                        <div class="logo"> <a>Student</a> </div>
                     </div>
                  </div>
               </div>
               <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                  <div class="menu-area">
                     <div class="limit-box">
                        <nav class="main-menu">
                           <ul class="menu-area-main">
                              <li class="active"> <a href="IndexUI.aspx">Home</a> </li>
                              <li> <a href="#service">Main Menu</a> </li>
                              <li> <a >Bus Schedule</a> 
<ul style="background: #008b8b">
<li> <a style="color: white" href="ScheduleUI.aspx">Male</a> 
<li> <a style="color: white" href="FemaleBusSchedule.aspx">Female</a> 
<li> <a style="color: white" href="MastersBusScheduleUI.aspx">Masters</a>
<li> <a style="color: white" href="ExamBusScheduleUI.aspx">Exam</a>
</ul>
</li>
                              <li> <a href="#notice">Notice</a> </li>
                           </ul>
                        </nav>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         </div>

         <!-- end header inner --> 
      </header>
      <!-- end header -->
         <section class="slider_section">
         <div id="myCarousel" class="carousel slide banner-main" data-ride="carousel">
            <div class="carousel-inner">
               <div class="carousel-item active">
                  <img class="first-slide" src="../Style/Edit/images/banner1.JPEG" alt="First slide">
                  <div class="container">
                     <div class="carousel-caption relative">
                        <h1>Welcome <br/><asp:Label ID="outputLabel" runat="server" Text=""></asp:Label> </h1>
                         
                     </div>
                  </div>
               </div>
               <%--<div class="carousel-item">
                  <img class="second-slide" src="../Style/Edit/images/banner1.JPEG" alt="Second slide">
                  <div class="container">
                     <div class="carousel-caption relative">
                        <h1>IIUC <br/>
                            Transport Division
                        </h1>
                     </div>
                  </div>
               </div>--%>
               
            </div>
           <%-- <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
            <i class='fa fa-angle-left'></i>
            </a>
            <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
            <i class='fa fa-angle-right'></i>
            </a>--%>
         </div>
      </section>
      
      <!-- service --> 
      <div id="service" class="service">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="titlepage">
                     <h2>Menu</h2></div>
               </div>
            </div>
         </div>
         <div class="container margin-r-l">
            <div class="row">
               <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 thumb">
                  <div class="service-box">
                     <figure>
                        <a href="../Style/Edit/images/1.png" class="fancybox" rel="ligthbox">
                        <img  src="../Style/Edit/images/1.png" class="zoom img-fluid "  alt="">
                        </a>
                        <span class="hoverle">
                        <a href="StudentMenu.aspx" class="fancybox" rel="ligthbox" style="background: #696969">Home</a>
                        </span>  
                     </figure>
                  </div>
               </div>
               <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 thumb">
                  <div class="service-box">
                     <figure>
                        <a href="../Style/Edit/images/2.png" class="fancybox" rel="ligthbox">
                        <img  src="../Style/Edit/images/2.png" class="zoom img-fluid "  alt="">
                        </a>
                        <span class="hoverle">
                        <a href="FeedbackUI.aspx" class="fancybox" rel="ligthbox" style="background: #696969">Feedback</a>
                        </span>
                     </figure>
                  </div>
               </div>
               <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 thumb">
                  <div class="service-box">
                     <figure>
                        <a href="../Style/Edit/images/3.jpg" class="fancybox" rel="ligthbox">
                        <img  src="../Style/Edit/images/3.jpg" class="zoom img-fluid "  alt="">
                        </a>
                        <span class="hoverle">
                        <a href="RoutineViewUI.aspx" class="fancybox" rel="ligthbox" style="background: #696969">Class Routine</a>
                        </span>
                     </figure>
                  </div>
               </div>
               
            </div>
         </div>
      </div>
      <!-- end service -->
        <section>
         <div id="notice" class="carousel slide banner-main" data-ride="carousel">
            <div class="carousel-inner">
               <div class="carousel-item active">
                  <img class="first-slide" src="../Style/Edit/images/banner2.jpg" alt="First slide">
                  <div class="container">
                     <div class="carousel-caption relative">
                        <h1> <asp:Label ID="noticeLabel" runat="server" Text=""></asp:Label> </h1>
                         
                     </div>
                  </div>
               </div>
               
            </div>
          
         </div>
      </section>
    
      <!-- Javascript files--> 
      <script src="../Style/Edit/js/jquery.min.js"></script> 
      <script src="../Style/Edit/js/popper.min.js"></script> 
      <script src="../Style/Edit/js/bootstrap.bundle.min.js"></script> 
      <script src="../Style/Edit/js/jquery-3.0.0.min.js"></script> 
      <script src="../Style/Edit/js/plugin.js"></script> 
      <!-- sidebar --> 
      <script src="../Style/Edit/js/jquery.mCustomScrollbar.concat.min.js"></script> 
      <script src="../Style/Edit/js/custom.js"></script>
      <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
      <script>
          $(document).ready(function () {
              $(".fancybox").fancybox({
                  openEffect: "none",
                  closeEffect: "none"
              });

              $(".zoom").hover(function () {

                  $(this).addClass('transition');
              }, function () {

                  $(this).removeClass('transition');
              });
          });

      </script> 
   </body>
</html>