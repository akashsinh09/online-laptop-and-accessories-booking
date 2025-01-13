<%-- 
    Document   : AdminLogin2
    Created on : 9 Jan, 2024, 12:00:05 PM
    Author     : akash
--%>
<%@include file="dbconnection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="style_1.css">
	<title>Admin Login</title>
</head>
<body>
        <form>
	<div class="square">
		<i style="--clr:#00ff0a;"></i>
		<i style="--clr:#ff0057;"></i>
		<i style="--clr:#fffd44;"></i>
            
		<div class="login">
			<h2>Admin Login</h2>
			<div class="inputBx">
				<input type="text" name="txtanm"  placeholder="AdminName">
			</div>
			<div class="inputBx">
				<input type="password" name="txtpass" placeholder="Password">
			</div>
                        <% 
                        String anm=request.getParameter("txtanm");
                        String pass=request.getParameter("txtpass");
                        Statement st=con.createStatement();
                        if(anm!=null && anm!="" && pass!=null && pass!="")
                        {
                        String str="select * from admin_login where Admin_Name='"+anm+"'and Password='"+pass+"'";
                        ResultSet rs=st.executeQuery(str);
                        if(rs.next())
                        {
                            out.println("<script> alert('Login Sucess.....')</script>");
                            session.setAttribute("anm",anm);
                            response.sendRedirect("Admin Homepage.jsp");
                        }
                        else
                        {
                          out.println("<script> alert('Login Failed.....')</script>");
                          
                        }
                        }
                        
                        
                        %>
			<div class="inputBx">
				<input type="submit" value="Sign In">
			</div>
<!--			<div class="links">
				<a href="#">Forget Password</a>
			</div>-->
		</div>
	</div>
    </form>
</body>
</html>