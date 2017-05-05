<%-- 
    Document   : dlogin
    Created on : 6 Dec, 2016, 10:25:24 AM
    Autdor     : Ayyappa
--%>
<%@include file="head.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body bgcolor="#CCFFCC" >
        
        
        <div align="center">
            <form action="dlogin_action.jsp" method="post">
            <table>      
                
                <h2>EYE BANK MANAGEMENT</h2><br>
                <h3>LOGIN PAGE</h3>
                <br><br><br><br><br><br>
                 <input type="text" name="usname" placeholder="Username" size="25"/>   <br><br>
               
                <input type="password" name="pass" placeholder="Password"size="26"/><br><br>
                <button type="login" name="dlogin" >Login</button>&nbsp;&nbsp;
                <button type="button" name="cancel" onclick="window.location.href='home.html';">cancel</button><br><br>
               Click  <a href="donorreg.jsp"> here </a>to sign up
            </table>
               
             </form>
          </div>
    </body>
</html>
