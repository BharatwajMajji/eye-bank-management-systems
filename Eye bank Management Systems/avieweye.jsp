<%-- 
    Document   : viewcamp
    Created on : 18 Dec, 2016, 6:50:22 PM
    Author     : Ayyappa
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@include file="connection.jsp"%>
<%@include file="head.jsp"%>
<%@include file="adminmenu.html"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  
    </head>
    <body>
        <div align='center'>
            <br><br><br><br><br><br><br><br>
        <table>
        <%
         Statement st=con.createStatement();
         ResultSet rs = st.executeQuery("SELECT * FROM EYE ");
         
         %>
         <tr><td>Eye Name</td><td>Collected On</td><td>In Camp</td></tr>
            
            <%
         while(rs.next())
         {
         %> 
        
         <tr><td><%=rs.getString(1)%></td><td><%=rs.getString(2)%></td><td><%=rs.getString(3)%></td></tr>

         
        <%
         
         }
        %>
    </table>
        </div>
    </body>
</html>
