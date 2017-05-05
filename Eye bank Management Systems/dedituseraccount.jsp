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
            <form action="dedituser_action.jsp" method="post">
                <br><br><br><br><br><br>
        <table>
        <%
         Statement st=con.createStatement();
         ResultSet rs = st.executeQuery("SELECT * FROM ADONOR WHERE USERNAME='"+loggeduser+"' ");
        
        
         if(rs.next())
         {
         %> 
        
       

	<tr>  <td>First name:</td>
            <td><input type="text" name="fname" placeholder="<%=rs.getString(1)%>"/></td></tr>
	   <tr><td>Last name:</td>
 <td><input type="text" name="lname" placeholder="<%=rs.getString(2)%>"/></td></tr>	
        <tr><td>   Age:</td>
 <td><input type="text" name="age" placeholder="<%=rs.getString(3)%>" /></td></tr>
	   <tr><td>  sex:</td>
               <td><input type="radio" name="gender" value="male"  />male
<input type="radio" name="gender" value="female">	female</td></tr>	 
           <tr><td>	 Address:</td>
               <td><input type="text" name="address" placeholder="<%=rs.getString(5)%>"/></td></tr>
           <tr><td>      </td><td><input type="text" name="address2" placeholder="<%=rs.getString(6)%>"/></td></tr>
           <tr><td>      </td><td><input type="text" name="address3" placeholder="<%=rs.getString(7)%>"/></td></tr>
           <tr><td>      </td><td><input type="text" name="address4" placeholder="<%=rs.getString(8)%>"/></td></tr>
  <tr> <td>Mobile number:</td>
<td><input type="text" name="dmno" placeholder="<%=rs.getString(9)%>"/></td></tr>
  <tr> <td>Email address:</td>
<td><input type="text" name="demail" placeholder="<%=rs.getString(10)%>"/></td></tr>
   <tr> <td>Username</td>
<td><input type="text" name="usrname" placeholder="<%=rs.getString(11)%>"/></td></tr>
    <tr> <td>Password:</td>
<td><input type="password" name="passwd" placeholder="<%=rs.getString(12)%>"/></td></tr>
    
  <%--  <tr>  <td>Donation date:</td>
<td><input type="date" name="ddate"/></td></tr> --%>
    <tr><td> <button type="submit">update</button></td> <td><button type="button" onclick="window.location.href='hystory.go(-1)';">cancel</button></td></tr>
 
        <%
         
         }
        %>
   </table>
   
            </form>
        </div>
        
    </body>
</html>
