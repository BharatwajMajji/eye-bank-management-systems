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
   
    <body>
        <br><br><br><br><br><br>
         <% 
        String cname=request.getParameter("cname");
        String cemp=request.getParameter("cemp");
        String cid=request.getParameter("cid");
        String cloc=request.getParameter("cloc");
        String id=request.getParameter("id");
            PreparedStatement ps=con.prepareStatement("UPDATE CAMP SET CAMPNAME=?,CAMPEMPLOYEE=?,CAMPID=?,CAMPLOC=? WHERE CAMPID='"+id+"'");
              ps.setString(1, cname);
               ps.setString(2, cemp);
                ps.setString(3, cid);
                 ps.setString(4, cloc);
                    ps.executeUpdate();
        %>
        updated
    </body>
</html>
