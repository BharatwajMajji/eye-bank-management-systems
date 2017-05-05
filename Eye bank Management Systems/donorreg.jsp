<%-- 
    Document   : index
    Created on : 6 Dec, 2016, 10:19:36 AM
    Author     : Ayyappa
--%>
<%@include file="head.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>DONOR DETAILS</title></head>
<body bgcolor="#CCCCFF" >
<div align="center">
<div align="center">
 
 <h2> EYE BANK MANAGEMENT SYSTEM </h2>
<h3> Enter Your details </h3>
      <br><br><br><br><br><br>
 </div>
    <form action="dreg_action.jsp" method="post">
<table>
 <font face="verdana" size="4" color="#000000">
	<tr>  <td>First name:</td>
               <td><input type="text" name="fname"/></td></tr>
	   <tr><td>Last name:</td>
 <td><input type="text" name="lname"></td></tr>	
        <tr><td>   Age:</td>
 <td><input type="text" name="age"/></td></tr>
	   <tr><td>  sex:</td>
<td><input type="radio"name="gender"value="male">male
<input type="radio"name="gender"value="female">	female</td></tr>	 
           <tr><td>	 Address:</td>
               <td><input type="text" name="address" placeholder="street/Dno"/></td></tr>
           <tr><td>      </td><td><input type="text" name="address2" placeholder="city"/></td></tr>
           <tr><td>      </td><td><input type="text" name="address3"placeholder="state"/></td></tr>
           <tr><td>      </td><td><input type="text" name="address4" placeholder="Pin code"/></td></tr>
  <tr> <td>Mobile number:</td>
<td><input type="text" name="dmno"/></td></tr>
  <tr> <td>Email address:</td>
<td><input type="text" name="demail" placeholder="example@gmail.com"/></td></tr>
   <tr> <td>Username</td>
<td><input type="text" name="usrname" placeholder="Username"/></td></tr>
    <tr> <td>Password:</td>
<td><input type="password" name="passwd" placeholder="Password"/></td></tr>
  <%--  <tr>  <td>Donation date:</td>
<td><input type="date" name="ddate"/></td></tr> --%>
    <tr><td><button type="submit">submit</button></td> 
  <td><button onclick=" window.history.go(-1)">Go Back</button></td></tr>
</font>
</table>
</form>
</div>
</body>
</html>
