    <%-- 
    Document   : aupdateviewcamp
    Created on : 19 Dec, 2016, 7:00:15 PM
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
    <body>
        <div align="center">
            <br><br><br><br><br><br>
         <table>
             <tr> <td>Name </td><td>Employee </td><td>ID </td><td>Location </td><td></td></tr>  
            <%  
         Statement st=con.createStatement();
         ResultSet rs = st.executeQuery("SELECT * FROM CAMP ");
        
        
         while(rs.next())
         {
        
        %>
        
        <tr>  <td><%=rs.getString(1)%>  </td>
        <td><%=rs.getString(2)%>  </td>
        <td><%=rs.getString(3)%>  </td>
        <td><%=rs.getString(4)%>  </td>
        <td> <a href="aupdatecamp.jsp?id=<%=rs.getString(3)%>"> Edit</a> </td>
        </tr>
        
        <%
         }
        %>
         </table>
        </div>
        </body>
     
</html>
