<%-- 
    Document   : donafterlog
    Created on : 17 Dec, 2016, 12:54:54 PM
    Author     : Ayyappa
--%>
<%@include file="donorLOGIN2.html"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <body >
        <% 
            
   // String uid=request.getParameter("uid");
   // HttpSession sess = request.getSession(false);
  // String loggeduser=sess.getAttribute("username").toString();
  //  sess.getAttribute("password");
       %><div align="center">
            <h2>EYE BANK MANAGEMENT</h2><br>
                <h3>LOGIN PAGE</h3>
        <br><br>
        <%=loggeduser%>
       <button  type="button" onclick="window.location.href='donate_afterlogin.jsp';">Donate</button>
        <br><br>
        <br><br>
         <button  type="button" onclick="window.location.href='dviewcamp.jsp';">view camps</button>
         <br><br>
        <br><br>
          <button  type="button" onclick="window.location.href='dviewdates.jsp';">your Dates</button>
          <br><br>
        <br><br>
       <button  type="button" onclick="window.location.href='dviewuseraccount.jsp';">View Account</button>
       
           <br><br>
        <br><br>
       <button  type="button" onclick="window.location.href='dedituseraccount.jsp';">edit Account</button>
       <br><br>
        <br><br>
       <button  type="button" onclick="window.location.href='userlogout.jsp';">Logout</button>
       </div>
       </body>
</html>
