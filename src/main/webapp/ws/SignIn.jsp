<%-- 
    Document   : SignIn
    Created on : 12 Feb, 2023, 12:55:18 AM
    Author     : This Pc
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.utilities.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign In</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            DBConnection dbCon = new DBConnection();
            Connection conn = null;
            ResultSet rs = null;
            //Statement st = null;
            conn = dbCon.getConnection();
            Statement st = conn.createStatement();
            //String pass = "pass$123";
            //String email = "";
            //email = request.getParameter("mail");
            //http://localhost:8080/CineMatch2/ws/SignIn.jsp?mail=mail@123
            System.out.println(request.getParameter("mail"));
            System.out.println(request.getParameter("pass"));
            rs = st.executeQuery("select UserName from user_table where emailAddress='"+request.getParameter("mail")+"' and password='"+request.getParameter("pass")+"' ");
            if(rs.next()){
                System.out.println(rs.getString("UserName"));
                session.setAttribute("u_name", rs.getString("UserName"));
        %>
        <%}
else{
response.sendError(401);
}
        %>
    </body>
</html>
