<%-- 
    Document   : donate_afterlogin_actioin
    Created on : 20 Dec, 2016, 6:15:27 PM
    Author     : Ayyappa
--%>
<%@include file="donorLOGIN2.html"%>
<%@include file="connection.jsp"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
          
          HttpSession sess = request.getSession(false);
   String loggeduser=sess.getAttribute("username").toString();
    sess.getAttribute("password");
        String dondate=request.getParameter("dondate");
       String camploc=request.getParameter("camploc");
      String eyetype=request.getParameter("eyetype");
      PreparedStatement ps= con.prepareStatement("INSERT INTO DONATEREQ VALUES (?,?,?,?)");
      ps.setString(1, loggeduser);
      ps.setString(2, dondate);
      ps.setString(3, camploc);
      ps.setString(4, eyetype);
               ps.executeUpdate();
               
               
     %> 
     <br><br><br><br><br><br>
    <center>Inserted data <a href="donorLOGIN2.html">back</a></center>
        
      %>
    </body>
</html>
