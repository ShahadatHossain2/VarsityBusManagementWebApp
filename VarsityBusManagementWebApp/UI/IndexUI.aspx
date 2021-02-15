<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IndexUI.aspx.cs" Inherits="VarsityBusManagementWebApp.UI.IndexUI" %>

<!DOCTYPE html>
<html lang="en">
<head>

     <title></title>

     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=Edge">
     <meta name="description" content="">
     <meta name="keywords" content="">
     <meta name="author" content="">
     <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <link href="../Style/Main/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Style/Main/css/font-awesome.min.css" rel="stylesheet" />
    <link href="../Style/Main/css/aos.css" rel="stylesheet" />

     <!-- MAIN CSS -->
    <link href="../Style/Main/css/tooplate-gymso-style.css" rel="stylesheet" />

</head>
<body data-spy="scroll" data-target="#navbarNav" data-offset="50">

    <!-- MENU BAR -->
    <nav class="navbar navbar-expand-lg fixed-top">
        <div class="container">

            <a class="navbar-brand" style="color: #ffa500">Bus Management System</a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-lg-auto">
                    <li class="nav-item">
                        <a href="IndexUI.aspx" class="nav-link smoothScroll"><i class="fa fa-fw fa-home"></i> Home</a>
                    </li>

                    <li class="nav-item">
                        <a href="#about" class="nav-link smoothScroll"><i class="fa fa-fw fa-address-card"></i> About Us</a>
                    </li>

                    <li class="nav-item">
                        <a href="#feature" class="nav-link smoothScroll"><i class="fa fa-fw fa-list"></i> Schedules</a>
                    </li>

                    <li class="nav-item">
                        <a href="#contact" class="nav-link smoothScroll"><i class="fa fa-fw fa-mobile"></i> Contact</a>
                    </li>
                </ul>

                
            </div>

        </div>
    </nav>


     <!-- HERO -->
     <section class="hero d-flex flex-column justify-content-center align-items-center" id="home">

            <div class="bg-overlay"></div>

               <div class="container">
                    <div class="row">

                         <div class="col-lg-8 col-md-10 mx-auto col-12">
                              <div class="hero-text mt-5 text-center">

                                    <h6 data-aos="fade-up" data-aos-delay="300">A Easy Way To Manage Transportation!</h6>

                                    <h1 data-aos="fade-up" data-aos-delay="500" style="color: #ff8c00 ">Login Menu</h1>

                                    <a href="OfficeUI.aspx" class="btn custom-btn bordered mt-3" style="background: black" data-aos="fade-up" data-aos-delay="600">Official</a>

                                    <a href="StudentLogin.aspx" class="btn custom-btn bordered mt-3" data-aos="fade-up" data-aos-delay="700">Student Login</a>
                                   
                              </div>
                         </div>

                    </div>
               </div>
     </section>


     <section class="feature" id="feature">
        <div class="container">
            <div class="row">


                <div class="mr-lg-auto mt-3 col-lg-4 col-md-6 col-12">
                     <div class="about-working-hours">
                          <div>

                                <h2 class="mb-4 text-white" data-aos="fade-up" data-aos-delay="500">Working hours</h2>

                               <strong class="d-block" data-aos="fade-up" data-aos-delay="600">Friday : Closed</strong>
                               <strong class="d-block" data-aos="fade-up" data-aos-delay="600">Thursday : Closed</strong>

                               <strong class="mt-3 d-block" data-aos="fade-up" data-aos-delay="700">Saterday - Wendsday</strong>

                                <p data-aos="fade-up" data-aos-delay="800">7:00 AM - 10:00 PM</p>

                               
                               </div>
                          </div>
                     </div>
                </div>

            </div>
    </section>
      <!-- ABOUT -->
     <section class="about section" id="about">
               <div class="container">
                    <div class="row">

                            <div class="mt-lg-5 mb-lg-0 mb-4 col-lg-5 col-md-10 mx-auto col-12">
                                <h2 class="mb-4" data-aos="fade-up" data-aos-delay="300">Hello, This is Univarsity Bus Management System</h2>

                                <p data-aos="fade-up" data-aos-delay="400">This web application is developped for a easy and efficient transportation system for university</p>

                              

                            </div>

                            <div class="ml-lg-auto col-lg-3 col-md-6 col-12" data-aos="fade-up" data-aos-delay="700">
                                <div class="team-thumb">
                                    <img src="../Style/img1.jpg" class="img-fluid" alt="Trainer">

                                    <div class="team-info d-flex flex-column">

                                        <h3>Md Shahadat Hossain</h3>
                                        <span>Metric No : C161003</span>
                                         <span>8th Semester</span>

                                        <ul class="social-icon mt-3">
                                             <li><a href="https://www.facebook.com/shahadat.hossain.73594479/" class="fa fa-facebook"></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <div class="mr-lg-auto mt-5 mt-lg-0 mt-md-0 col-lg-3 col-md-6 col-12" data-aos="fade-up" data-aos-delay="800">
                                <div class="team-thumb">
                                    <img src="../Style/img2.jpg" class="img-fluid" alt="Trainer">

                                    <div class="team-info d-flex flex-column">

                                        <h3>Ehtasham Ul Hoque</h3>
                                           <span>Metric No : C161012</span>
                                         <span>8th Semester</span>

                                        <ul class="social-icon mt-3">

                                            <li><a href="https://www.facebook.com/search/top/?q=ehtasham%20ul%20hoque" class="fa fa-facebook"></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                    </div>
               </div>
     </section>

     <!-- SCRIPTS -->
    <script src="../Style/Main/js/jquery.min.js"></script>
    <script src="../Style/Main/js/bootstrap.min.js"></script>
    <script src="../Style/Main/js/aos.js"></script>
    <script src="../Style/Main/js/smoothscroll.js"></script>
    <script src="../Style/Main/js/custom.js"></script>

</body>
</html>