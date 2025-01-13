<%-- 
    Document   : Feedback
    Created on : 24 Jan, 2024, 9:17:15 PM
    Author     : akash
--%>
<%@include file="dbconnection.jsp" %>
<%@page import="java.io.File"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
   <a href="Feedback.jsp"></a>
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>Feedback</title>
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
   <body class="main-layout inner_posituong contact_page">
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
      <!--  contact -->
      <div class="contact">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="titlepage">
                     <h2>User Feedback</h2>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-md-10 offset-md-1">
                  <form id="request" class="main_form">
                     <div class="row">
                        <div class="col-md-12 ">
                           <input class="contactus" placeholder="Name" type="type" name="txtnm"> 
                        </div>
                        <div class="col-md-12">
                           <input class="contactus" placeholder="Email" type="type" name="txtem"> 
                        </div>
                        <div class="col-md-12">
                           <input class="contactus" placeholder="Phone Number" type="type" name="txtmobn">                          
                        </div>
                        <div class="col-md-12">
                           <textarea class="textarea" placeholder="Message" type="type" name="txtmess">Message </textarea>
                        </div>
                        <div class="col-md-12">
                           <button class="send_btn">Send</button>
                        </div>
                     </div>
                  </form>
                   <%
                         
                           String nm=request.getParameter("txtnm");
                           String em=request.getParameter("txtem");
                           String mobn=request.getParameter("txtmobn");
                           String mess=request.getParameter("txtmess");
                          Statement st=con.createStatement();
                          if(nm!=null && nm!="" && em!=null && em!="" && mobn!=null && mobn!="" && mess!= null && mess!="")
                          {
                              String str="insert into feedback(name,email,mobile_no,message)values('"+nm+"','"+em+"',"+mobn+",'"+mess+"')";
                              int a=st.executeUpdate(str);
                              out.println("<script>alert('Feedback Submitted......')</script>");
                          }
                         %>
               </div>
            </div>
         </div>
      </div>
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

