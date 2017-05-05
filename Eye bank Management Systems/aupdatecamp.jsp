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
             <br><br><br><br><br><br>
        <form action="aupdatec_action.jsp" method="post">
            
            <table>
               <%
             
        String id=request.getParameter("id");
         Statement st=con.createStatement();
                ResultSet rs = st.executeQuery("SELECT * FROM CAMP WHERE CAMPID='"+id+"'");
        if(rs.next()){
           
           
               %>
       
    
                <tr>
                    <td>CAMP NAME:</td> <td> <input type="text" name="cname" placeholder="<%=rs.getString(1)%>" /> </td>
                    
                </tr>
                 <tr>
                 
                    <td>CAMP EMPLOYEE:> <td><input type="text" name="cemp"  placeholder="<%=rs.getString(2)%>"/></td>
                    
                 </tr>
                 <tr>
                
                    <td>CAMP ID:</td> <td><input type="text" name="cid" placeholder="<%=rs.getString(3)%>" /></td>
                   </tr>
                 <tr>  
                
                   <td>CAMP LOCATION:</td>  <td><input type="text" name="cloc" placeholder="<%=rs.getString(4)%>" /></td>
                  
                    </tr>
                    <tr><td></td><td><input type="hidden" name="id" value="<%=id%>"/> </td>
                    
                </tr>
                
                <%
         }
                %>
            </table>
            <br><br><br>
          <button type="submit" name="aupdatec" >UPDATE</button>&nbsp;&nbsp;
                <button type="button" name="cancel" onclick="window.location.href='adminmenu.html';">cancel</button>
        </form>
        </div>
        </body>
    
</html>
