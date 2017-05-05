<%-- 
    Document   : adminaccept
    Created on : 7 Dec, 2016, 2:05:56 PM
    Author     : Ayyappa
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@include file="head.jsp"%>
<%@include file="connection.jsp"%>
<%@include file="adminmenu.html"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ACCEPTED DONORS</title>
    </head>
    <body>
        <br><br><br><br><br><br>
        <form >
        <table>
            <tr>
             <td> Fname </td> 
                 <td> lname </td>
                  <td> age </td>
                   <td> sex </td>
                    <td> address </td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>mobile</td>
                    <td>email</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
            </tr>
            <%    Statement st=con.createStatement();
                     ResultSet rs = st.executeQuery("SELECT * FROM REGISTRATION ");
                     while(rs.next()){
                        
                     %>
                     <tr>
                         <td> <%=rs.getString(1) %> </td>
                           <td><%=rs.getString(2) %> </td>
                           <td><%=rs.getString(3) %> </td>
                           <td><%=rs.getString(4) %> </td>
                           <td><%=rs.getString(5) %> </td>
                           <td><%=rs.getString(6) %> </td>
                           <td><%=rs.getString(7) %> </td>
                           <td><%=rs.getString(8) %> </td>
                           <td><%=rs.getString(9) %> </td>
                           <td><%=rs.getString(10) %> </td>
                           <td><%=rs.getString(11) %> </td>
                           <td><%=rs.getString(12) %> </td>
                           <td> <a href="adminaccept_action.jsp?id=<%=rs.getString(11)%>">accept</a> </td>            
          <td> <a href="admindeclineaction.jsp?id=<%=rs.getString(11)%>">decline</a> </td>            
        </tr>
                     
                     <%
                     }
            %>
             
            </table>
           
            
            </form>
        </body>
</html>
