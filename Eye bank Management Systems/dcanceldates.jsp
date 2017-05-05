<%-- 
    Document   : viewdates
    Created on : 18 Dec, 2016, 11:31:58 PM
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
   
    </head>
    <body>
        <% //String uid=request.getParameter("uid");
         HttpSession sess = request.getSession(false);
   String loggeduser=sess.getAttribute("username").toString();
    sess.getAttribute("password");    
        %>
        <div align='center'>
        <table>
        <%
         Statement st=con.createStatement();
         ResultSet rs = st.executeQuery("SELECT * FROM DONATEREQ WHERE USERNAME='"+loggeduser+"' ");
        
         %>
         <tr><td>Donation Date</td><td>Camp</td><td>Eye Tissue</td><td></td></tr>
            <%
         while(rs.next())
         {
         %> 
         
         <tr><td><%=rs.getString(2)%></td><td><%=rs.getString(3)%></td><td><%=rs.getString(4)%></td><td><a href="dcanceldateaction.jsp?date=<%=rs.getString(2)%>">cancel</a></td></tr>
         
         
        <%
         
         }
        %>
    </table>
        </div>
    </body>
</html>
