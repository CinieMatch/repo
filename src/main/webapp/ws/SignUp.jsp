<%-- 
    Document   : SignUp
    Created on : 11 Feb, 2023, 11:03:58 PM
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
        <title>SignUp</title>
    </head>
    <body>
        <%
            DBConnection dbCon = new DBConnection();
            Connection conn = null;
            ResultSet rs = null;
            //Statement st = null;
            conn = dbCon.getConnection();
            Statement st = conn.createStatement();
            rs = st.executeQuery("SELECT COUNT(SequenceNo) FROM user_table;");
            int count = 0;
            if(rs.next()){
                count = rs.getInt("COUNT(SequenceNo)");
        %>
        <h1><%=rs.getString("COUNT(SequenceNo)")%></h1>
        <%
            }
            count++;
            int s = st.executeUpdate("INSERT INTO user_table(SequenceNo, UserName, FirstName, LastName, emailAddress, password, age, phoneNumber, address, city, state, zip) "
+ "VALUES ("+count+", '"+request.getParameter("userName")+"', '"+request.getParameter("fName")+"', '"+request.getParameter("lName")+"', '"+request.getParameter("email")+"', '"+request.getParameter("password")+"', "+request.getParameter("age")+", '"+request.getParameter("phone")+"', '"+request.getParameter("address")+"', '"+request.getParameter("city")+"', '"+request.getParameter("state")+"', '"+request.getParameter("zip")+"') ");
            //out.print("lfl: "+s);
//System.out.println(count);
            if(s == 1){
response.sendRedirect("../SignIn.jsp?newuser=true");
}
        %>
    </body>
</html>
<%
    if(rs != null){
        rs.close();
    }
    if(st != null){
        st.close();
    }
    if(conn != null){
        conn.close();
    }
%>
