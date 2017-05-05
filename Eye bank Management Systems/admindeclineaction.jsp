<%-- 
    Document   : admindelineaction
    Created on : 3 Jan, 2017, 11:51:06 AM
    Author     : Ayyappa
--%>
<%@page import="java.sql.Statement"%>
<%@include file="head.jsp"%>
<%@include file="connection.jsp"%>
<%@include file="adminmenu.html"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <body>
       <% Statement s=con.createStatement();
         String uid=request.getParameter("id");
       s.executeUpdate("DELETE FROM REGISTRATION WHERE USERNAME="+uid);
       %>  
    </body>
</html>
