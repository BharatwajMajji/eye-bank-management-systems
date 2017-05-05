<%-- 
    Document   : connection
    Created on : 6 Dec, 2016, 4:13:07 PM
    Author     : Ayyappa
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   
    <body >
        <br><br><br><br><br><br><br>
        <div align="center">
        <%! 
            Connection con;%>
            <%
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");
           // out.println("Registered"); //javascript:history.go(-1)
            %>
            <%--a href="home.jsp"> click here to go back</a--%>
             </div>
            
    </body>
</html>
