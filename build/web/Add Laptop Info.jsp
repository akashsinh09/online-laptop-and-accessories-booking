<%-- 
    Document   : Add Laptop Info
    Created on : 10 Jan, 2024, 12:46:11 PM
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
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>Add Laptop Info</title>
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
                      <h3 style="background: powderblue;font-size: xx-large;font-family: serif"align="center">Add Laptop Info</h3>
                                          <form method="post" name="form">

                         <table cellpadding="9"style="font-family: initial;font-weight: bolder;font-size: inherit"width="450px"height="450px">
                             
                             <tbody>
                                 <%
                                 int i=0;
                                 Statement st1=con.createStatement();
                                 String str1="select count(*) from add_laptop_info";
                                 ResultSet rs1=st1.executeQuery(str1);
                                 if(rs1.next())
                                 {
                                     i=rs1.getInt(1);
                                     i++;
                                 }
                                 %>
                                 <tr>
                                     <td width="250px"align="left"style="font-size: x-large">Sr.No</td>
                                     <td width="250px"align="left"><%=i%></td>
                                 </tr>
                                 <tr>
                                     <td width="250px"align="left"style="font-size: x-large">Company Name</td>
                                     <td class="selected"align="left"style="font-size: x-large"><select name="txtconm"style="width: 160px;">
                                 <option>Hp</option>
                                 <option>Dell</option>
                                 <option>Apple</option>
                                 <option>Asus</option>
                                 <option>Lenovo</option>
                                         </select></td>
                                 </tr>
                                 <tr>
                                     <td width="250px"align="left"style="font-size: x-large">Laptop color</td>
                                 <td class="selected"align="left"style="font-size: x-large"><select name="txtlapc"style="width: 160px;">
                                     <option>Silver</option>
                                     <option>Black</option>
                                     </select></td>
                                 </tr>
                                 <tr>
                                     <td width="250px"align="left"style="font-size: x-large">Description</td>
                                     <td width="250px"align="left"><input type="text" name="txtdes" value="" /></td>
                                 </tr>
                                 <tr>
                                     <td width="250px"align="left"style="font-size: x-large">Graphics</td>
                                     <td width="250px"align="left"><input type="text" name="txtgra" value="" /></td>
                                 </tr>
                                 <%
                                 String img=request.getParameter("upload");
                                 File f=new File("images//"+img);
                                 String img1="images//"+img;
                                 %>
                                 <tr>
                                     <td width="250px"align="left"style="font-size: x-large">Image Path</td>
                                     <td width="250px"align="left"><input type="file" name="upload" value="" /></td>

                                 </tr>

                                 <tr>
                                     <td width="250px"align="left"style="font-size: x-large">Price</td>
                                     <td width="250px"align="left"><input type="text" name="txtpri" value="" /></td>
                                 </tr>
                                 <tr>
                                     <td width="250px"align="left"style="font-size: x-large">Warranty</td>
                                     <td width="250px"align="left"><input type="text" name="txtwar" value="" /></td>
                                 </tr>
                                 <tr>
                                     
                                     <td colspan="2" width="250px"align="center"style="font-size: x-large;"><input type="submit" value="Submit" name="Submit" /></td>
                                     
                                 </tr>
                             </tbody>
                         </table>
                         <%
                           String comn=request.getParameter("txtconm");
                           String lapc=request.getParameter("txtlapc");
                           String des=request.getParameter("txtdes");
                           String gra=request.getParameter("txtgra");
                           String pri=request.getParameter("txtpri");
                           String war=request.getParameter("txtwar");
                          Statement st=con.createStatement();
                          if(comn!=null && comn!="" && lapc!=null && lapc!="" && des!=null && des!="" && gra!= null && gra!="" && img!=null && img!="" && pri!=null && pri!="" && war!=null && war!="")
                          {
                              String str="insert into add_laptop_info(id,Company_Name,Colour,Description,Graphics,Image,Price,Warranty)values("+i+",'"+comn+"','"+lapc+"','"+des+"','"+gra+"','"+img+"',"+pri+",'"+war+"')";
                              int a=st.executeUpdate(str);
                              out.println("<script>alert('New Laptop Added......')</script>");
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
