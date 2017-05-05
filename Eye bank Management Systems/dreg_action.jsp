<%-- 
    Document   : reg_action
    Created on : 6 Dec, 2016, 3:31:45 PM
    Author     : Ayyappa
--%>
<%@include file="head.jsp"%>
<%@include file="connection.jsp"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   
    <body>
        <%
       String fname=request.getParameter("fname");
       String lname=request.getParameter("lname");
      String age=request.getParameter("age");
      String sex=request.getParameter("gender");
      String ad1=request.getParameter("address");
      String ad2=request.getParameter("address2");
      String ad3=request.getParameter("address3");
      String ad4=request.getParameter("address4");
      String mobile=request.getParameter("dmno");
      String email=request.getParameter("demail");
       String username=request.getParameter("usrname");
        String password=request.getParameter("passwd");
      PreparedStatement ps=con.prepareStatement("INSERT INTO REGISTRATION VALUES (?,?,?,?,?,?,?,?,?,?,?,?)");
      ps.setString(1, fname);
      ps.setString(2, lname);
      ps.setString(3, age);
      ps.setString(4, sex);
      ps.setString(5, ad1);
      ps.setString(6, ad2);
      ps.setString(7, ad3);
      ps.setString(8, ad4);
      ps.setString(9, mobile);
      ps.setString(10, email);
      ps.setString(11, username);
      ps.setString(12, password);
      ps.executeUpdate();

       %>
      <br><br><br><br><br><br>
    <center>Registered <a href="dlogin.jsp" > click here</a> to login</center>
      
    </body>
</html>
