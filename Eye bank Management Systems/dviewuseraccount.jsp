<%-- 
    Document   : viewuseraccount
    Created on : 18 Dec, 2016, 11:45:02 PM
    Author     : Ayyappa
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@include file="connection.jsp"%>
<%@include file="head.jsp"%>
<%@include file="donorLOGIN2.html"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   
    <body>
        <%  HttpSession sess = request.getSession(false);
   String loggeduser=sess.getAttribute("username").toString();
    sess.getAttribute("password"); %>
        <div align='center'>
        <table>
        <%
         Statement st=con.createStatement();
         ResultSet rs = st.executeQuery("SELECT * FROM ADONOR WHERE USERNAME='"+loggeduser+"' ");
        
        
         if(rs.next())
         {
         %> 
        
         <tr>  <td>FIRST NAME</td><td><%=rs.getString(1)%></td></tr>
         <tr>  <td>LAST NAME</td>    <td><%=rs.getString(2)%></td></tr>
         <tr>  <td>AGE</td>    <td><%=rs.getString(3)%></td></tr>
         <tr>    <td>SEX</td><td><%=rs.getString(4)%></td></tr>
         <tr>  <td>ADDRESS<td><%=rs.getString(5)%></td></tr>
         <tr>  <td></td>    <td><%=rs.getString(6)%></td></tr>
         <tr>   <td></td>   <td><%=rs.getString(7)%></td></tr>
         <tr>   <td></td>   <td><%=rs.getString(8)%></td></tr>
         <tr>   <td>MOBILE</td>   <td><%=rs.getString(9)%></td></tr>
         <tr>   <td>EMAIL ID</td><td><%=rs.getString(10)%></td></tr>
         <tr>  <td>USERNAME</td><td><%=rs.getString(11)%></td></tr>
         <tr>  <td>PASSWORD</td>    <td><%=rs.getString(12)%></td></tr>
      
        <%
         
         }
        %>
    </table>
        </div>
    </body>
</html>
