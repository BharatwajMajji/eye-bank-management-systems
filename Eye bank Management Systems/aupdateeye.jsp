<%-- 
    Document   : aupdatecamp
    Created on : 19 Dec, 2016, 5:16:57 PM
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
         <div align="center">
        <form action="aupdatee_action.jsp" method="post">
            <br><br><br><br><br><br>
            <table>
               <%
             
        String id=request.getParameter("id");
         Statement st=con.createStatement();
                ResultSet rs = st.executeQuery("SELECT * FROM EYE WHERE EYENAME='"+id+"'");
        if(rs.next()){
           
           
               %>
       
      
                <tr>
                    <td>EYE NAME:</td> <td> <input type="text" name="ename" placeholder="<%=rs.getString(1)%>" /> </td>
                    
                </tr>
                 <tr>
                 
                    <td>COLLECTED ON:> <td><input type="text" name="edate"  placeholder="<%=rs.getString(2)%>"/></td>
                    
                 </tr>
                 <tr>
                
                    <td>IN CAMP:</td> <td><input type="text" name="ecamp" placeholder="<%=rs.getString(3)%>" /></td>
                   </tr>
                 
                    <tr><td></td><td><input type="hidden" name="id" value="<%=id%>"/> </td>
                    
                </tr>
                
                <%
         }
                %>
            </table>
            <br><br><br>
          <button type="submit" name="aupdatee" >UPDATE</button>&nbsp;&nbsp;
                <button type="button" name="cancele" onclick="window.location.href='adminmenu.html';">cancel</button>
        </form>
        </div>
        </body>
    
</html>
