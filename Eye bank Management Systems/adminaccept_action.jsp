<%-- 
    Document   : adminaccept_action
    Created on : 7 Dec, 2016, 2:43:59 PM
    Author     : Ayyappa
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@include file="head.jsp"%>
<%@include file="connection.jsp"%>
<%@include file="adminmenu.html"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <body>
        <br><br><br><br><br><br>
        <%
            Statement st2=con.createStatement();
       String USID=request.getParameter("id");
       
       ResultSet rs2 = st2.executeQuery("SELECT * FROM REGISTRATION WHERE USERNAME='"+USID+"'");
       if(rs2.next())
        {
       String p1=rs2.getString(1);
       String p2=rs2.getString(2);
       String p3=rs2.getString(3);
       String p4=rs2.getString(4);
       String p5=rs2.getString(5);
       String p6=rs2.getString(6);
       String p7=rs2.getString(7);
       String p8=rs2.getString(8);
       String p9=rs2.getString(9);
       String p10=rs2.getString(10);
       String p11=rs2.getString(11);
       String p12=rs2.getString(12);
        
             PreparedStatement ps=con.prepareStatement("INSERT INTO ADONOR VALUES (?,?,?,?,?,?,?,?,?,?,?,?)");
      ps.setString(1, p1);
      ps.setString(2, p2);
      ps.setString(3, p3);
      ps.setString(4, p4);
      ps.setString(5, p5);
      ps.setString(6, p6);
      ps.setString(7, p7);
      ps.setString(8, p8);
      ps.setString(9, p9);
      ps.setString(10, p10);
      ps.setString(11, p11);
      ps.setString(12, p12);
      ps.executeUpdate();
       PreparedStatement ps2=con.prepareStatement("DELETE FROM REGISTRATION WHERE USERNAME='"+USID+"'");
      ps2.executeUpdate();
        }
       %>
    </body>
</html>
