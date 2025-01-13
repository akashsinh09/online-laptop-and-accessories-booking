<%-- 
    Document   : order laptop
    Created on : 8 Feb, 2024, 8:15:58 AM
    Author     : akash
--%>
<%@include file="dbconnection.jsp" %>
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
      <title>Order</title>
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
   <a href="Order Laptop.jsp"></a>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <style>

    .titlepage{
        border-collapse:separate;
        border-radius: 6px;
        box-shadow: 0px 0px 10px #003eff;
    }
</style>
   </head>
   <!-- body -->
   <body class="main-layout inner_posituong computer_page">
       <%
      String id1=request.getParameter("id");
       
        String nm=(String)session.getAttribute("unm1");
        // String id3=(String)session.getAttribute("id2");
       %>
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
                              <marquee> <div style="color: #000">UserName=<%=nm%></div></marquee>
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
                                  <a class="nav-link" href="UserHomepage.jsp">Home</a>
                              </li>
                              <li class="nav-item">
                                  <a class="nav-link" href="Search Laptop.jsp">SearchLaptop</a>
                              </li>
                               <li class="nav-item">
                                   <a class="nav-link" href="Search Accessories.jsp">SearchAccessories</a>
                              </li>
                              <li class="nav-item">
                                  <a class="nav-link" href="My Order Laptops.jsp">MyOrderLaptops</a>
                              </li>
                              <li class="nav-item">
                                  <a class="nav-link" href="My Order Accessories.jsp">MyOrderAccessories</a>
                              </li>
                              <li class="nav-item">
                                  <a class="nav-link" href="Logout.jsp">LogOut</a>
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
      <!-- about section -->
      <div class="about">
         <div class="container">
            <div class="row d_flex">
               <div class="col-md-5">
                  <div class="titlepage">
                      <h2 style="background: powderblue;font-size: xx-large;font-family: serif"align="center">Order Laptop</h2>
                    <form>
                       <table cellpadding="9"style="font-family: initial"width="450px"height="450px">
                             <tbody>
                                 <% 
                                        String cnm=null;
                                        String des=null;
                                        String war=null;
                                        String img=null;
                                        int price=0;
                                        String color=null;
                                        
                                   Statement st4=con.createStatement();
                                   String str4="select * from add_laptop_info where id="+id1+"";
                                   ResultSet rs4=st4.executeQuery(str4);
                                   while(rs4.next())
                                   {
                                       cnm=rs4.getString(2);
                                       des=rs4.getString(4);
                                       img="images/"+rs4.getString(6);
                                       price=rs4.getInt(7);
                                       war=rs4.getString(8);
                                       color=rs4.getString(3);
                                   }
                                 %>
                                 <tr>
                                     <td width="250px"align="left"style="font-size: x-large">Company Name</td>
                             <td class="selected"align="left"style="font-size: x-large"><%=cnm%></td>
                                 </tr>
                                  <tr>
                                     <td width="250px"align="left"style="font-size: x-large">Material Id</td>
                                     <td width="250px"align="left"><%=id1%></td>
                                 </tr>
                                 <tr>
                                     <td width="250px"align="left"style="font-size: x-large">Description</td>
                                     <td width="250px"align="left"><%=des%></td>
                                 </tr>
                                 <tr>
                                     <td width="250px"align="left"style="font-size: x-large">Warranty</td>
                                     <td width="250px"align="left"><%=war%></td>
                                 </tr>
                                 <tr>
                                     <td width="250px"align="left"style="font-size: x-large">Image</td>
                                     <td width="250px"align="left"><img src="<%=img%>" width="100" height="100"/>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td width="250px"align="left"style="font-size: x-large">Color</td>
                                     <td width="250px"align="left"><%=color%></td>
                                 </tr>
                                 <tr>
                                     <td width="250px"align="left"style="font-size: x-large">Price</td>
                                     <td width="250px"align="left"><%=price%></td>
                                 </tr>
                                 <%
                                 String cusn=null;
                                 String add=null;
                                 String  mobn=null;
                                 
                                  Statement st1=con.createStatement();
                                   String str1="select * from new_user where User_Name='"+nm+"'";
                                   ResultSet rs1=st1.executeQuery(str1);
                                   while(rs1.next())
                                   {
                                       cusn=rs1.getString(1);
                                       add=rs1.getString(2);
                                       mobn=rs1.getString(3);
                                   }
                                 %>
                                 <tr>
                                     <td width="250px"align="left"style="font-size: x-large">Customer Name</td>
                                     <td width="250px"align="left"><%=cusn%></td>
                                 </tr>
                                
                                 <tr>
                                     <td width="250px"align="left"style="font-size: x-large">Address</td>
                                     <td width="250px"align="left"><%=add%></td>
                                 </tr>
                                 <tr>
                                     <td width="250px"align="left"style="font-size: x-large">Mobile No</td>
                                     <td width="250px"align="left"><%=mobn%></td>
                                 </tr>
                                 <tr>
                                     <td colspan="2" width="250px"align="center"style="font-size: x-large"><a href="Confirm Laptop Order.jsp">ConfirmOrder</a></td>
                                 </tr>
                             </tbody>
                         </table>
                        <%
                        session.setAttribute("cnm1", cnm);
                                  session.setAttribute("des1", des);
                                  session.setAttribute("war1", war);
                                  session.setAttribute("img1", img);
                                  session.setAttribute("color1", color);
                                  session.setAttribute("cusn1", cusn);
                                  session.setAttribute("add1", add);
                                 
                                 
                                  String id2=String.valueOf(id1);
                                  session.setAttribute("id4", id2);
                                  String price1=String.valueOf(price);
                                  session.setAttribute("price2", price1);
                                  String mobn1=String.valueOf(mobn);
                                  session.setAttribute("mobn2", mobn1);
                        %>
                     </form>
                  </div>
               </div>
               <div class="col-md-7">
                  <div class="about_img">
                     <figure><img src="images/about.jpg" alt="#"/></figure>
                  </div>
               </div>
            </div>
         </div>
      </div>
      </div>
      <!-- end about section -->
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


