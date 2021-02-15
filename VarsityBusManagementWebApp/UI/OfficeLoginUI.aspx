<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OfficeLoginUI.aspx.cs" Inherits="VarsityBusManagementWebApp.UI.OfficeLoginUI" %>
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
<title>Official Menu</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">
<!-- site icons -->
<!-- bootstrap css -->
<link rel="stylesheet" href="../Style/New/css/bootstrap.min.css" />
<!-- Site css -->
<link rel="stylesheet" href="../Style/New/css/style.css" />
<!-- responsive css -->
<link rel="stylesheet" href="../Style/New/css/responsive.css" />
<!-- colors css -->
<link rel="stylesheet" href="../Style/New/css/colors1.css" />
<!-- custom css -->
<link rel="stylesheet" href="../Style/New/css/custom.css" />
<!-- wow Animation css -->
<link rel="stylesheet" href="../Style/New/css/animate.css" />
<!-- revolution slider css -->
<link rel="stylesheet" type="text/css" href="../Style/New/revolution/css/settings.css" />
<link rel="stylesheet" type="text/css" href="../Style/New/revolution/css/layers.css" />
<link rel="stylesheet" type="text/css" href="../Style/New/revolution/css/navigation.css" />
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
</head>
<body id="default_theme" class="it_service">

  <!-- header bottom -->
    <header>
  <div class="header_bottom">
    <div class="container">
      <div class="row">
        <div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">
          <!-- logo start -->
            <div class="logo"><a href="#">
                <img src="../Style/New/images/logos/IIUC.PNG" /></a></div>
          <!-- logo end -->
        </div>
        <div class="col-lg-9 col-md-12 col-sm-12 col-xs-12">
          <!-- menu start -->
          <div class="menu_side">
            <div id="navbar_menu">
              <ul class="first-ul">
                <li> <a class="active" href="IndexUI.aspx">Home</a>
                  
                </li>

               <li> <a href="#">Bus Schedule</a>
                  <ul>
                    <li><a href="BusScheduleUI.aspx">Provide Schedule</a></li>
                    <li><a href="ScheduleUpdate.aspx">Update Schedule</a></li>
                    <li><a href="EmergencyUI.aspx">Emergency Schedule</a></li>

                  </ul>
                </li>
                <li> <a href="#">View Schedule</a>
                  <ul>
                    <li><a href="ScheduleUI.aspx">Male</a></li>
                    <li><a href="FemaleBusSchedule.aspx">Female</a></li>
                    <li><a href="MastersBusScheduleUI.aspx">Masters</a></li>
                    <li><a href="ExamBusScheduleUI.aspx">Exam</a></li>

                  </ul>
                </li>
                  <li> <a href="#">Requirements</a>
                  <ul>
                    <li><a href="RequermentUI.aspx">View Daily Need</a></li>                    
                    <li><a href="MaxBusNeed.aspx">View Maximum Need</a></li>
                    <li><a href="RutinUI.aspx">Input</a></li>
                  </ul>
                </li>
                    <li> <a href="#">Class Routine</a>
                  <ul>
                    <li><a href="ClassRoutin.aspx">Uplodad</a></li>
                    <li><a href="RoutineViewUI.aspx">View</a></li>

                  </ul>
                </li>
                  <li> <a href="NoticeUI.aspx">Notice</a>
               
                <li> <a href="OfficeUI.aspx">Logout</a>
                
               
              </ul>
            </div>
           
          </div>
          <!-- menu end -->
        </div>
      </div>
    </div>
  </div>
  <!-- header bottom end -->
</header>
<!-- end header -->
<!-- section -->
<div id="slider" class="section main_slider">
  <div class="container-fuild">
    <div class="row">
      <div id="rev_slider_4_1_wrapper" class="rev_slider_wrapper fullwidthbanner-container" data-alias="classicslider1" style="margin:0px auto;background-color:transparent;padding:0px;margin-top:0px;margin-bottom:0px;">
        <!-- START REVOLUTION SLIDER 5.0.7 auto mode -->
        <div id="rev_slider_4_1" class="rev_slider fullwidthabanner" style="display:none;" data-version="5.0.7">
          <ul>
            <li data-index="rs-1812" data-transition="zoomin" data-slotamount="7"  data-easein="Power4.easeInOut" data-easeout="Power4.easeInOut" data-masterspeed="2000"  data-thumb="images/it_service/slide1.jpg"  data-rotate="0"  data-saveperformance="off"  data-title="Computer Services" data-description="">
              <!-- MAIN IMAGE -->
              <img src="../Style/Main/images/hero-bg.JPG" alt="#" >
              <!-- LAYERS -->
              <!-- LAYER NR. BG -->
            <%--  <div class="tp-caption tp-shape tp-shapewrapper   rs-parallaxlevel-0" 
                              id="slide-270-layer-1012" 
                              data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
                              data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']" 
                              data-width="full"
                              data-height="full"
                              data-whitespace="nowrap"
                              data-transform_idle="o:1;"
                              data-transform_in="opacity:0;s:1500;e:Power3.easeInOut;" 
                              data-transform_out="s:300;s:300;" 
                              data-start="750" 
                              data-basealign="slide" 
                              data-responsive_offset="on" 
                              data-responsive="off"
                              style="z-index: 5;background-color:rgba(0, 0, 0, 0.25);border-color:rgba(0, 0, 0, 0.50);"></div>
           
            </li>
            <li data-index="rs-181" data-transition="zoomin" data-slotamount="7"  data-easein="Power4.easeInOut" data-easeout="Power4.easeInOut" data-masterspeed="2000"  data-thumb="images/it_service/slide2.jpg"  data-rotate="0"  data-saveperformance="off"  data-title="Easy To Use & Customize" data-description="">
             --%> <%--<!-- MAIN IMAGE -->
              <img src="../Style/New/images/it_service/select1.jpg"  alt=""  data-bgposition="center center" data-kenburns="on" data-duration="30000" data-ease="Linear.easeNone" data-scalestart="100" data-scaleend="120" data-rotatestart="0" data-rotateend="0" data-offsetstart="0 0" data-offsetend="0 0" data-bgparallax="10" class="rev-slidebg" data-no-retina>
              <!-- LAYERS -->
              <!-- LAYER NR. BG -->
              <div class="tp-caption tp-shape tp-shapewrapper   rs-parallaxlevel-0" 
                              id="slide-270-layer-101" 
                              data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
                              data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']" 
                              data-width="full"
                              data-height="full"
                              data-whitespace="nowrap"
                              data-transform_idle="o:1;"
                              data-transform_in="opacity:0;s:1500;e:Power3.easeInOut;" 
                              data-transform_out="s:300;s:300;" 
                              data-start="750" 
                              data-basealign="slide" 
                              data-responsive_offset="on" 
                              data-responsive="off"
                              style="z-index: 5;background-color:rgba(0, 0, 0, 0.25);border-color:rgba(0, 0, 0, 0.50);"> </div>
             
            </li>
            <li data-index="rs-18" data-transition="zoomin" data-slotamount="7"  data-easein="Power4.easeInOut" data-easeout="Power4.easeInOut" data-masterspeed="2000"  data-thumb="images/it_service/slide3.jpg"  data-rotate="0"  data-saveperformance="off"  data-title="Perfectly Responsive" data-description="">
              <!-- MAIN IMAGE -->
              <img src="../Style/New/images/it_service/select2.jpg" alt=""  data-bgposition="center center" data-kenburns="on" data-duration="30000" data-ease="Linear.easeNone" data-scalestart="100" data-scaleend="120" data-rotatestart="0" data-rotateend="0" data-offsetstart="0 0" data-offsetend="0 0" data-bgparallax="10" class="rev-slidebg" data-no-retina>
              <!-- LAYERS -->
              <!-- LAYER NR. BG -->
              <div class="tp-caption tp-shape tp-shapewrapper   rs-parallaxlevel-0" 
                              id="slide-270-layer-10" 
                              data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
                              data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']" 
                              data-width="full"
                              data-height="full"
                              data-whitespace="nowrap"
                              data-transform_idle="o:1;"
                              data-transform_in="opacity:0;s:1500;e:Power3.easeInOut;" 
                              data-transform_out="s:300;s:300;" 
                              data-start="750" 
                              data-basealign="slide" 
                              data-responsive_offset="on" 
                              data-responsive="off"
                              style="z-index: 5;background-color:rgba(0, 0, 0, 0.25);border-color:rgba(0, 0, 0, 0.50);"> </div>
             
            </li>--%>
          </ul>
          <div class="tp-static-layers"></div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- end section -->


<!-- js section -->
<script src="../Style/New/js/jquery.min.js"></script>
<script src="../Style/New/js/bootstrap.min.js"></script>
<!-- menu js -->
<script src="../Style/New/js/menumaker.js"></script>
<!-- wow animation -->
<script src="../Style/New/js/wow.js"></script>
<!-- custom js -->
<script src="../Style/New/js/custom.js"></script>
<!-- revolution js files -->
<script src="../Style/New/revolution/js/jquery.themepunch.tools.min.js"></script>
<script src="../Style/New/revolution/js/jquery.themepunch.revolution.min.js"></script>
<script src="../Style/New/revolution/js/extensions/revolution.extension.actions.min.js"></script>
<script src="../Style/New/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
<script src="../Style/New/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
<script src="../Style/New/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
<script src="../Style/New/revolution/js/extensions/revolution.extension.migration.min.js"></script>
<script src="../Style/New/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
<script src="../Style/New/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
<script src="../Style/New/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
<script src="../Style/New/revolution/js/extensions/revolution.extension.video.min.js"></script>
<!-- map js -->
<script>
    // This example adds a marker to indicate the position of Bondi Beach in Sydney,
    // Australia.
    function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
            zoom: 11,
            center: { lat: 40.645037, lng: -73.880224 },
            styles: [
                     {
                         elementType: 'geometry',
                         stylers: [{ color: '#fefefe' }]
                     },
                     {
                         elementType: 'labels.icon',
                         stylers: [{ visibility: 'off' }]
                     },
                     {
                         elementType: 'labels.text.fill',
                         stylers: [{ color: '#616161' }]
                     },
                     {
                         elementType: 'labels.text.stroke',
                         stylers: [{ color: '#f5f5f5' }]
                     },
                     {
                         featureType: 'administrative.land_parcel',
                         elementType: 'labels.text.fill',
                         stylers: [{ color: '#bdbdbd' }]
                     },
                     {
                         featureType: 'poi',
                         elementType: 'geometry',
                         stylers: [{ color: '#eeeeee' }]
                     },
                     {
                         featureType: 'poi',
                         elementType: 'labels.text.fill',
                         stylers: [{ color: '#757575' }]
                     },
                     {
                         featureType: 'poi.park',
                         elementType: 'geometry',
                         stylers: [{ color: '#e5e5e5' }]
                     },
                     {
                         featureType: 'poi.park',
                         elementType: 'labels.text.fill',
                         stylers: [{ color: '#9e9e9e' }]
                     },
                     {
                         featureType: 'road',
                         elementType: 'geometry',
                         stylers: [{ color: '#eee' }]
                     },
                     {
                         featureType: 'road.arterial',
                         elementType: 'labels.text.fill',
                         stylers: [{ color: '#3d3523' }]
                     },
                     {
                         featureType: 'road.highway',
                         elementType: 'geometry',
                         stylers: [{ color: '#eee' }]
                     },
                     {
                         featureType: 'road.highway',
                         elementType: 'labels.text.fill',
                         stylers: [{ color: '#616161' }]
                     },
                     {
                         featureType: 'road.local',
                         elementType: 'labels.text.fill',
                         stylers: [{ color: '#9e9e9e' }]
                     },
                     {
                         featureType: 'transit.line',
                         elementType: 'geometry',
                         stylers: [{ color: '#e5e5e5' }]
                     },
                     {
                         featureType: 'transit.station',
                         elementType: 'geometry',
                         stylers: [{ color: '#000' }]
                     },
                     {
                         featureType: 'water',
                         elementType: 'geometry',
                         stylers: [{ color: '#c8d7d4' }]
                     },
                     {
                         featureType: 'water',
                         elementType: 'labels.text.fill',
                         stylers: [{ color: '#b1a481' }]
                     }
            ]
        });

        var image = 'images/it_service/location_icon_map_cont.png';
        var beachMarker = new google.maps.Marker({
            position: { lat: 40.645037, lng: -73.880224 },
            map: map,
            icon: image
        });
    }
      </script>
<!-- google map js -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8eaHt9Dh5H57Zh0xVTqxVdBFCvFMqFjQ&callback=initMap"></script>
<!-- end google map js -->
</body>
</html>
