<%-- 
    Document   : viewcamp
    Created on : 18 Dec, 2016, 6:50:22 PM
    Author     : Ayyappa
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@include file="connection.jsp"%>
<%@include file="head.jsp"%>

<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  
    </head>
    <body>
        <div align='center'>
            <br><br><br><br><br><br><br><br><br><br>
        <table>
        <%
         Statement st=con.createStatement();
         ResultSet rs = st.executeQuery("SELECT CAMPNAME,CAMPEMPLOYEE,CAMPID,CAMPLOC FROM CAMP ");
         
         %>
         <tr><td>Camp Name</td><td>Camp Employee</td><td>Camp Id</td><td>Camp location</td></tr>
            
            <%
         while(rs.next())
         {
         %> 
        
         <tr><td><%=rs.getString(1)%></td><td><%=rs.getString(2)%></td><td><%=rs.getString(3)%></td><td><%=rs.getString(4)%></td></tr>

         
        <%
         
         }
        %>
    </table>
        </div>
    </body>
</html>
