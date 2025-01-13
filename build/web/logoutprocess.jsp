<%-- 
    Document   : logoutprocess
    Created on : Apr 12, 2023, 3:58:08 AM
    Author     : shri 2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <html><body bgcolor="khaki">

        <%

            session.invalidate();

        %>

        <h1><font color="Red">You are Sucessfully logged out...</font></h1>

        <a href="homepage.jsp">Go-Back To Home Page</a>

    </body>

</html>
    </body>
</html>
