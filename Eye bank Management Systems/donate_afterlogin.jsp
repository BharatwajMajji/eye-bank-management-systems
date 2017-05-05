<%-- 
    Document   : donate_afterlogin
    Created on : 13 Dec, 2016, 8:11:08 PM
    Author     : Ayyappa
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@include file="connection.jsp"%>
<%@include file="donorLOGIN2.html"%>
<%@include file="head.jsp"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   
    <body bgcolor="#F1F1F1">
        <%
        //String usid=request.getParameter("uid");
         HttpSession sess = request.getSession(false);
   String uid=sess.getAttribute("username").toString();
    sess.getAttribute("password");
   // Statement stc=con.createStatement();
    //ResultSet rs = stc.executeQuery("SELECT CAMPNAME FROM CAMP");
    
    
    
        %>
        
       <form action="donate_afterlogin_action.jsp" method="post">
           <div align="center">
               <br><br><br><br><br><br><br><br><br><br>
              
               <table>
                   
                    
                 <tr>
                  <td> Donation Date:</td> <td>  <input type ="text" name="dondate"> </td></tr><tr>
                  <td>  Camp  :</td> <td>  <input type ="text" name="camploc"> </td></tr><tr>
                  <td> Your Eye Tissue type: </td> <td>  <input type ="text" name="eyetype"> </td>
                  
                    </tr>
               </table>
              
               <br>
              
               <button type="submit" name="dsubmit" >submit</button>&nbsp;&nbsp;
                <button type="button" name="cancel" onclick="window.location.href='dviewdates.jsp';">cancel</button><br><br>
               
               
           </div>
       </form>   
    </body>
</html>
