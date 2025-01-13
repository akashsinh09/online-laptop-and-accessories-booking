<%-- 
    Document   : UserLogin
    Created on : 24 Jan, 2024, 10:53:51 AM
    Author     : akash
--%>
<%@include file="dbconnection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css" type="text/css" media="all" />
    </head>
    <body>
        <form>
            <div class="container">
    <div class="drop">
        <div class="content">
            <h2>User Login</h2>
            <form>
                <div class="inputBox">
                    <input type="text"  name="txtunm" placeholder="Username">
                </div>
                <div class="inputBox">
                    <input type="password" name="txtpass" placeholder="Password">
                </div>
                <%
                    String unm=request.getParameter("txtunm");
                    String pass=request.getParameter("txtpass");
                    Statement st=con.createStatement();
                    if(unm!=null && unm!="" && pass!=null && pass!="")
                    {
                     String str="select * from new_user where User_Name='"+unm+"' and Password='"+pass+"'";
                     ResultSet rs=st.executeQuery(str);
                     if(rs.next())
                     {
                         out.println("<script>alert('login sucess......')</script>");
                         session.setAttribute("unm1", unm);
                         response.sendRedirect("UserHomepage.jsp");
                     }
                     else
                     {
                          out.println("<script>alert('login failed......')</script>");
                          response.sendRedirect("New User.jsp");

                     }
                     }       
                  
                    %>
                <div class="inputBox">
                    <input type="submit" value="Login" name="Login">
                </div>
            </form>
        </div>
    </div>
    <a href="New User.jsp" class="btns">Forget Password</a>
    <a href="New User.jsp" class="btns signup">Signup</a>
</div>
        </form>
    </body>
</html>


