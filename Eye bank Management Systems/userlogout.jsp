<%-- 
    Document   : userlogout
    Created on : 19 Dec, 2016, 12:41:33 AM
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
       // String uid=request.getParameter("uid");
        //PreparedStatement ps=con.prepareStatement("DELETE FROM LOGACTIVITY WHERE USNAME=?");
        //ps.setString(1,uid);
        //ps.executeUpdate();
        HttpSession sess = request.getSession(false);
        sess.invalidate();
        %>
       
        <script type="text/javascript">alert("DO You Want Logout");
            window.location.href="home.html";
            </script>
            
        
    </body>
</html>
