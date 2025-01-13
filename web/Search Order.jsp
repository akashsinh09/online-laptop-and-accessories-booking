<%-- 
    Document   : Search Order
    Created on : 10 Jan, 2024, 1:11:21 PM
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
      <title>Search Order</title>
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
                                  <a class="nav-link" href="Admin Homepage.jsp">Home</a>
                              </li>
                              <li class="nav-item">
                                  <a class="nav-link" href="Add Laptop Info.jsp">LaptopInfo</a>
                              </li>
                              <li class="nav-item">
                                  <a class="nav-link" href="Add Accessories Info.jsp">Accessiories</a>
                              </li>
                              <li class="nav-item">
                                  <a class="nav-link" href="Search Order.jsp">SearchOrder</a>
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
                    <h3 style="background: powderblue;font-size: xx-large;font-family: serif"align="center">Search Order</h3>
                    <form>
                     <table cellpadding="9"style="font-family: initial"width="1000px"height="500px">
                             <tbody>
                                 <tr>
                                     <td width="250px"align="center"style="font-size: x-large">Material Type</td>
                                     <td width="250px"align="center"><select name="txtconm"style="width: 180px;height: 30px;">
                                 <option>Laptop</option>
                                 <option>Accessories</option>
                                         </select></td>
                                     <td width="250px"align="center"style="font-size: x-large">Entry Date</td>
                                     <td width="250px"align="center"><input type="date" name="txtentd" value=""/></td>
                                 </tr>
                                 <tr>
                                     <td colspan="6" width="250px"align="center"style="font-size: x-large"><input type="Submit" value="Search" name="Search" /></td>
                                    <tr><td>Oder No</td><td>Order Date</td><td>Customer Name</td><<td>Mobile No</td><td>Material Name</td></tr>
                                 <%
                                 Statement st=con.createStatement();
                                String pnm=request.getParameter("txtconm");
                                 String dt=request.getParameter("txtentd");
                                 int id=0;
                                 String nm1=null;
                                 String cusn2=null;
                                 String mobn3=null;
                                 String anm2=null;
                                 
                                 if( dt!=null && dt!="" && pnm!=null && pnm!="" )
                                 {
                                     if(pnm.equals("Laptop"))
                                     {
                                    String str="select * from confirm_laptop_order where  Order_Date='"+dt+"' and lname1='"+pnm+"'";
                                    ResultSet rs=st.executeQuery(str);
                                    while(rs.next())
                                    {
                                      
                                 id=rs.getInt(1);
                                 nm1=rs.getString(3);
                                 cusn2=rs.getString(10);
                                 mobn3=rs.getString(12);
                                 %>
                                 <tr><td><%=id%></td><td><%=dt%></td><td><%=cusn2%></td><td><%=mobn3%></td><td><%=nm1%></td></td></tr>
                                <%
                              
                                  }
                                  }
                                  if(pnm.equals("Accessories"))
                                  {
                                  String str="select * from confirm_accessories_order where Order_Date='"+dt+"' and aname='"+pnm+"'";
                                  ResultSet rs=st.executeQuery(str);
                                  
                                  while(rs.next())
                                  {
                                 id=rs.getInt(1);
                                 nm=rs.getString(3);
                                 cusn2=rs.getString(10);
                                 mobn3=rs.getString(12);
                                 anm2=rs.getString(5);
                                 %>
                                 <tr><td><%=id%></td><td><%=dt%></td><td><%=cusn2%></td><td><%=mobn3%></td><td><%=anm2%></td></tr>
                                 <%
                                  }    
                                }
                                 }
                                 %>
                                 </tr>
                             </tbody>
                         </table>
                     </form>
                  </div>
               </div>
               <div class="col-md-7">
                  <div class="about_img">
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
        width: 1000px;
        border-collapse:separate;
        border-radius: 6px;
        box-shadow: 0px 0px 10px #003eff;
    }
</style>


