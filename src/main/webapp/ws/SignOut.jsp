<%-- 
    Document   : SignOut
    Created on : 13 Feb, 2023, 3:12:18 AM
    Author     : This Pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            session.setAttribute("u_name", null);
            response.sendRedirect("../SignIn.html");
        %>
    </body>
</html>
