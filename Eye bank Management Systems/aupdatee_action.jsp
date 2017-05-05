<%-- 
    Document   : aupdatec_action
    Created on : 19 Dec, 2016, 6:23:47 PM
    Author     : Ayyappa
--%>
<%@include file="connection.jsp"%>
<%@include file="head.jsp"%>
<%@include file="adminmenu.html"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <br><br><br><br><br><br>
    <body>
         <% 
        String ename=request.getParameter("ename");
        String edate=request.getParameter("edate");
        String ecamp=request.getParameter("ecamp");
       
        String id=request.getParameter("id");
            PreparedStatement ps=con.prepareStatement("UPDATE EYE SET EYENAME=?,COLLECTEDON=?,INCAMP=? WHERE EYENAME='"+id+"'");
              ps.setString(1, ename);
               ps.setString(2, edate);
                ps.setString(3, ecamp);
               
                    ps.executeUpdate();
        %>
        updated
    </body>
</html>
