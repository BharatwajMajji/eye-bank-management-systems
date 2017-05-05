<%-- 
    Document   : ainsert_action
    Created on : 19 Dec, 2016, 5:54:01 PM
    Author     : Ayyappa
--%>

<%@include file="connection.jsp"%>
<%@include file="head.jsp"%>
<%@include file="adminmenu.html"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <body>
        <br><br><br><br><br><br>
        <% 
        String ename=request.getParameter("ename");
        String edate=request.getParameter("edate");
        String ecamp=request.getParameter("ecamp");
       
            PreparedStatement ps=con.prepareStatement("INSERT INTO EYE VALUES (?,?,?)");
              ps.setString(1, ename);
               ps.setString(2, edate);
                ps.setString(3, ecamp);
                ps.executeUpdate();
        %>
       inserted
       
    </body>
</html>
