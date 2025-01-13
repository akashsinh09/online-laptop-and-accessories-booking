<%-- 
    Document   : Show Order
    Created on : 25 Feb, 2024, 10:50:35 AM
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
      <title>Show Order</title>
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
   <body class="main-layout inner_posituong computer_page">
       <%
           String nm=(String)session.getAttribute("unm1");
            String pay1=(String)session.getAttribute("pay");
           
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
                              <a href="index.html"><img src="images/a1.png" alt="#" /></a>
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
                    <h3 style="background: powderblue;font-size: xx-large;font-family: serif"align="center">Payment</h3>
                    <form method="post">
                          <table cellpadding="9"style="font-family: initial"width="450px"height="450px">
                             <tbody>
                                 <%
                                 int i=0;
                                 Statement st2=con.createStatement();
                                 String str2="select count(*) from payment";
                                 ResultSet rs2=st2.executeQuery(str2);
                                 if(rs2.next())
                                 {
                                     i=rs2.getInt(1);
                                     i++;
                                 }
                                 %>
                                 <tr>
                                     <td width="250px"align="left"style="font-size: x-large">Material Type</td>
                                     <td width="250px"align="left"><%=pay1%></td>
                                 </tr>
                                 <%
                                String cusn=null;
                                 String mobn=null;
                                 String ordd=null;
                                 int pri=0;
                                 int qty=0;
                                 qty=1;
                                 int qty2=0;
                                 int amt=0;
                                 Statement st=con.createStatement();
                               
                                 if(pay1.equals("Laptop"))
                                 {
                                  String str="select * from confirm_laptop_order where lname1='"+pay1+"' and uname1='"+nm+"'";
                                  ResultSet rs=st.executeQuery(str);
                                  while(rs.next())
                                  {
                                    
                                    cusn=rs.getString(10);
                                    mobn=rs.getString(12);
                                    ordd=rs.getString(2);
                                    pri=rs.getInt(9);
                                  amt=qty*pri;
                                  }
                                 }
                                 Statement st1=con.createStatement();
                                 {
                                  String str1="select * from confirm_accessories_order where aname='"+pay1+"' and uname='"+nm+"'";
                                  ResultSet rs1=st1.executeQuery(str1);
                                  while(rs1.next())
                                  {
                                    cusn=rs1.getString(10);
                                    mobn=rs1.getString(12);
                                    ordd=rs1.getString(2);
                                    pri=rs1.getInt(8);
                                    qty2=rs1.getInt(9);
                                    amt=qty2*pri;
                                 }
                                 }
                                 %>
                                 <tr>
                                     <td width="250px"align="left"style="font-size: x-large">Recepit No</td>
                                     <td width="250px"align="left"><%=i%></td>
                                 </tr>
                                 <tr>
                                     <td width="250px"align="left"style="font-size: x-large">Recepit Date</td>
                                     <td width="250px"align="left"><input type="date" name="txtrecd" value="" /></td>
                                 </tr>
                                 <tr>
                                     <td width="250px"align="left"style="font-size: x-large">Material Name</td>
                                     <td width="250px"align="left"><input type="text" name="txtmatn" value="" /></td>
                                 </tr>
                                 <tr>
                                     <td width="250px"align="left"style="font-size: x-large">Customer Name</td>
                                     <td width="250px"align="left"><%=cusn%></td>
                                 </tr>
                                 <tr>
                                     <td width="250px"align="left"style="font-size: x-large">Mobile no</td>
                                     <td width="250px"align="left"><%=mobn%></td>
                                 </tr>
                                  <tr>
                                     <td width="250px"align="left"style="font-size: x-large">Order Date</td>
                                     <td width="250px"align="left"><%=ordd%></td>
                                 </tr>

                                  <tr>
                                     <td width="250px"align="left"style="font-size: x-large">Amount</td>
                                     <td width="250px"align="left"><%=amt%></td>
                                 </tr>
                                 <tr>
                                     <td colspan="2" width="250px"align="center"style="font-size: x-large"><input type="submit" value="Payment" name="Payment" /></td>
                                 </tr>
                             </tbody>
                         </table>
                                 <%
                                 
                                  String recd=request.getParameter("txtrecd");
                                  String matn=request.getParameter("txtmatn");
                                  Statement st4=con.createStatement();
                                  if(recd!=null && recd!="" && matn!=null && matn!="")
                                  {
                                      String str3="insert into payment(Recepit_No,Recepit_Date,Material_Name,Customer_Name,Mobile_No,Order_Date,Amount)values("+i+",'"+recd+"','"+matn+"','"+cusn+"',"+mobn+",'"+ordd+"',"+amt+")";
                                      int a=st4.executeUpdate(str3);
                                      out.println("<script>alert('Payment successful.....')</script>");
                                  }
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
<style>

    .titlepage{
        border-collapse:separate;
        border-radius: 6px;
        box-shadow: 0px 0px 10px #003eff;
    }
</style>