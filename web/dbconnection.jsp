z<%-- 
    Document   : dbconnection
    Created on : 19 Jan, 2024, 12:17:26 PM
    Author     : akash
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
                    //java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/info","root","root");
                    java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/info","root","root");
                   
                            %>
    </body>
</html>
