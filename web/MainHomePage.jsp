<%-- 
    Document   : MainHomePage
    Created on : 19 Dec, 2023, 12:39:01 PM
    Author     : akash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
      <title>Home Page</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      
      <!-- bootstrap css -->
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" href="css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
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
         <div class="loader"><img src="images/loading.gif" alt="#" /></div>
      </div>
      <!-- end loader -->
      <!-- header -->
      <header>
         <!-- header inner -->
         <div class="header">
            <div class="container-fluid">
               <div class="row">
                  <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                     <div class="full">
                        <div class="center-desk">
                           <div class="logo">
                              <a href=""><img src="images/a1.png" alt="#" /></a>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                     <nav class="navigation navbar navbar-expand-md navbar-dark ">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarsExample04">
                           <ul class="navbar-nav mr-auto">
                              <li class="nav-item active">
                                 <a class="nav-link" href="MainHomePage.jsp">Home</a>
                              </li>
                              <li class="nav-item">
                                  <a class="nav-link" href="AdminLogin.jsp">AdminLogin</a>
                              </li>
                              <li class="nav-item">
                                  <a class="nav-link" href="UserLogin.jsp">UserLogin</a>
                              </li>
                              <li class="nav-item">
                                  <a class="nav-link" href="AboutUs.jsp">AboutUs</a>
                              </li>
                              <li class="nav-item">
                                  <a class="nav-link" href="Contact Us.jsp">ContactUs</a>
                              </li>
                              <li class="nav-item">
                                  <a class="nav-link" href="Feedback.jsp">FeedBack</a>
                              </li>
                           </ul>
                        </div>
                     </nav>
                  </div>
               </div>
            </div>
         </div>
      </header>
      <!-- end header inner -->
      <!-- end header -->
      <!-- banner -->
      <section class="banner_main">
         <div id="banner1" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
               <li data-target="#banner1" data-slide-to="0" class="active"></li>
               <li data-target="#banner1" data-slide-to="1"></li>
               <li data-target="#banner1" data-slide-to="2"></li>
               <li data-target="#banner1" data-slide-to="3"></li>
               <li data-target="#banner1" data-slide-to="4"></li>
            </ol>
            <div class="carousel-inner">
               <div class="carousel-item active">
                  <div class="container">
                     <div class="carousel-caption">
                        <div class="row">
                           <div class="col-md-6">
                              <div class="text-bg">
                                 <h1> HP </h1>
                                 <span>Laptops and Accessories</span>
                                <p> "Make it Matter Keep Reinventing" </p>                
                              </div>
                           </div>
                           <div class="col-md-6">
                              <div class="text_img">
                                 <figure><img src="images/Hp.png" alt="#"/></figure>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="carousel-item">
                  <div class="container">
                     <div class="carousel-caption">
                        <div class="row">
                           <div class="col-md-6">
                              <div class="text-bg">
                                 <h1> DELL </h1>
                                 <span>Laptops And Accessories</span>
                                 <p>"The Power To Do More" </p>
                               
                              </div>
                           </div>
                           <div class="col-md-6">
                              <div class="text_img">
                                 <figure><img src="images/Dell.png" alt="#"/></figure>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="carousel-item">
                  <div class="container">
                     <div class="carousel-caption">
                        <div class="row">
                           <div class="col-md-6">
                              <div class="text-bg">
                                 <h1> APPLE </h1>
                                 <span>Laptops And Accessories</span>
                                 <p>"Think Different" </p>
                                 
                              </div>
                           </div>
                           <div class="col-md-6">
                              <div class="text_img">
                                 <figure><img src="images/Apple.png" alt="#"/></figure>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="carousel-item">
                  <div class="container">
                     <div class="carousel-caption">
                        <div class="row">
                           <div class="col-md-6">
                              <div class="text-bg">
                                 <h1> ASUS </h1>
                                 <span>Laptops And Accessories</span>
                                 <p>"Inspiring Innovation • Persistent Perfection" </p>
                                
                              </div>
                           </div>
                           <div class="col-md-6">
                              <div class="text_img">
                                 <figure><img src="images/Asus.png" alt="#"/></figure>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="carousel-item">
                  <div class="container">
                     <div class="carousel-caption">
                        <div class="row">
                           <div class="col-md-6">
                              <div class="text-bg">
                                 <h1> LENOVO</h1>
                                 <span>Laptops And Accessories</span>
                                 <p>"Innovation Never Stand Still" </p>
                                
                              </div>
                           </div>
                           <div class="col-md-6">
                              <div class="text_img">
                                 <figure><img src="images/Lenovo.png" alt="#"/></figure>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <a class="carousel-control-prev" href="#banner1" role="button" data-slide="prev">
            <i class="fa fa-chevron-left" aria-hidden="true"></i>
            </a>
            <a class="carousel-control-next" href="#banner1" role="button" data-slide="next">
            <i class="fa fa-chevron-right" aria-hidden="true"></i>
            </a>
         </div>
      </section>
      <!-- end banner -->
      <!-- three_box -->
      <div class="three_box">
         <div class="container">
            <div class="row">
               <div class="col-md-4">
                  <div class="box_text">
                     <i><img src="images/laptop.png" alt="#"/></i>
                     <h3>Laptop</h3>
                     <p>Are you looking for a reliable and affordable laptop? Whether you need it for work, school, gaming, or entertainment, we have the perfect laptop for you.You can browse our online catalog to find the laptop that suits your needs and budget. </p>
                  </div>
               </div>
               <div class="col-md-4">
                  <div class="box_text">
                     <i><img src="images/Accessories.png" alt="#"/></i>
                     <h3>Accessories</h3>
                     <p>Computer accessories are essential add-ons that can enhance the functionality and performance of your computer. Some of the most popular computer accessories include keyboards, mice, monitors, speakers, webcams, and printers.  </p>
                  </div>
               </div>
               <div class="col-md-4">
                  <div class="box_text">
                     <i><img src="images/wifi-router.png" alt="#"/></i>
                     <h3>Internet</h3>
                     <p> customers can enjoy high-speed internet that allows them to stream videos, download large files, and browse the web without any lag or buffering.a reliable internet connection that is always available when they need it.In your Budget </p>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- three_box -->
      <!-- products -->
      <div  class="products">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="titlepage">
                     <h2>Our Products</h2>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-md-12">
                  <div class="our_products">
                     <div class="row">
                        <div class="col-md-4 margin_bottom1">
                           <div class="product_box">
                              <figure><img src="images/product1.png" alt="#"/></figure>
                              <h3>Keyboard</h3>
                           </div>
                        </div>
                        <div class="col-md-4 margin_bottom1">
                           <div class="product_box">
                              <figure><img src="images/product2.png" alt="#"/></figure>
                              <h3>Mouse</h3>
                           </div>
                        </div>
                        <div class="col-md-4 margin_bottom1">
                           <div class="product_box">
                              <figure><img src="images/product3.png" alt="#"/></figure>
                              <h3>Web-Cam</h3>
                           </div>
                        </div>
                        <div class="col-md-4 margin_bottom1">
                           <div class="product_box">
                              <figure><img src="images/product4.png" alt="#"/></figure>
                              <h3>Speakers</h3>
                           </div>
                        </div>
                        <div class="col-md-4 margin_bottom1">
                           <div class="product_box">
                              <figure><img src="images/product5.png" alt="#"/></figure>
                              <h3>internet</h3>
                           </div>
                        </div>
                        <div class="col-md-4 margin_bottom1">
                           <div class="product_box">
                              <figure><img src="images/product6.png" alt="#"/></figure>
                              <h3>Hardisk</h3>
                           </div>
                        </div>
                        <div class="col-md-4">
                           <div class="product_box">
                              <figure><img src="images/product7.png" alt="#"/></figure>
                              <h3>Rams</h3>
                           </div>
                        </div>
                        <div class="col-md-4">
                           <div class="product_box">
                              <figure><img src="images/product8.png" alt="#"/></figure>
                              <h3>Battery</h3>
                           </div>
                        </div>
                        <div class="col-md-4">
                           <div class="product_box">
                              <figure><img src="images/Charger.png" alt="#"/></figure>
                              <h3>Charger</h3>
                           </div>
                        </div>
                        <div class="col-md-12">
                           
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- end products -->
      <!-- laptop  section -->
      <div class="laptop">
         <div class="container">
            <div class="row">
               <div class="col-md-6">
                  <div class="titlepage">
                     <p>Every Laptop And Accessories</p>
                     <h2>Up to 40% off !</h2>
                    
                  </div>
               </div>
               <div class="col-md-6">
                  <div class="laptop_box">
                     <figure><img src="images/pc.png" alt="#"/></figure>
                  </div>
               </div>
            </div>
         </div>
      </div>
      </div>
      <!-- end laptop  section -->
      <!-- customer -->
      <div class="customer">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="titlepage">
                     <h2>Customer Review</h2>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-md-12">
                  <div id="myCarousel" class="carousel slide customer_Carousel " data-ride="carousel">
                     <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                     </ol>
                     <div class="carousel-inner">
                        <div class="carousel-item active">
                           <div class="container">
                              <div class="carousel-caption ">
                                 <div class="row">
                                    <div class="col-md-9 offset-md-3">
                                       <div class="test_box">
                                          <i><img src="images/cos.png" alt="#"/></i>
                                          <h4>Amol Sankpal</h4>
                                          <p>Good laptop. Installation took about 30 minutes and setting up of office 2021 is only thing required. Boots fast within 25 seconds and the new OS and office 2021 combination works great. You do not need any more apps to do your daily work and school activity.</p>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="carousel-item">
                           <div class="container">
                              <div class="carousel-caption">
                                 <div class="row">
                                    <div class="col-md-9 offset-md-3">
                                       <div class="test_box">
                                          <i><img src="images/cos.png" alt="#"/></i>
                                          <h4>Akash Singh</h4>
                                          <p>The look and feel of this laptop is premium. The build quality is also very nice. I personally visited multiple shops to get a hold of laptops in this price segment. And finally ended up on this gaming beast. Just go for it, i have get best services from web-site,Thanks you</p>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="carousel-item">
                           <div class="container">
                              <div class="carousel-caption">
                                 <div class="row">
                                    <div class="col-md-9 offset-md-3">
                                       <div class="test_box">
                                          <i><img src="images/cos.png" alt="#"/></i>
                                          <h4>Sham Pisal</h4>
                                          <p>Good and convenient online shopping platform with a variety of product choice for nationwide shopper.They provide an excellent service to all of your buying needs. I literally can say they have excellent return agreements and just over all speedy shipping. </p>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                     <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                     <span class="sr-only">Previous</span>
                     </a>
                     <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                     <span class="carousel-control-next-icon" aria-hidden="true"></span>
                     <span class="sr-only">Next</span>
                     </a>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- end customer -->

      <!--  contact -->
     
      <!-- end contact -->
      <!--  footer -->
      <footer>
         <div class="footer">
             <div class="copyright">
               <div class="container">
                  <div class="row">
                     <div class="col-md-12">
                        <marquee><p>© 2024 All Rights Reserved. Design by Akash Singh And Amol Sankpal</p></marquee>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </footer>
      <!-- end footer -->
      <!-- Javascript files-->
      <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="js/jquery-3.0.0.min.js"></script>
      <!-- sidebar -->
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="js/custom.js"></script>
   </body>
</html>