<%-- 
    Document   : Home
    Created on : 13 Feb, 2023, 12:51:55 AM
    Author     : This Pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CineMatch</title>
        <style>
            body{
                height: 100vh;
                width: 100vw;
                margin: 0px;
                overflow: hidden;
                background-color: #000;
                color: #fff;
            }
        </style>
    </head>
    <body>
        <h1>⚠️ Welcome</h1>
        <a href="ws/SignOut.jsp">Sign Out</a>
        <%
            if(session.getAttribute("u_name") == null || session.getAttribute("u_name") == ""){
                response.sendRedirect("SignIn.html");
            }
        %>
    </body>
</html>
