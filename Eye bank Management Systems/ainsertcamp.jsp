<%-- 
    Document   : ainsertcamp
    Created on : 19 Dec, 2016, 5:15:29 PM
    Author     : Ayyappa
--%>
<%@include file="connection.jsp"%>
<%@include file="head.jsp"%>
<%@include file="adminmenu.html"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <body>
        <div align="center">
            <br><br><br><br><br><br>
        <form action="ainsertc_action.jsp" method="post">
            
            <table>
                <tr>
                    <td>Name </td><td> <input type="text" name="cname" /> </td>
                    
                </tr>
                 <tr>
                    <td>Employee </td><td><input type="text" name="cemp" /></td>
                    
                </tr>
                 <tr>
                    <td>ID </td><td><input type="text" name="cid" /></td>
                    
                </tr>
                 <tr>
                    <td>Location </td><td><input type="text" name="cloc" /></td>
                    
                </tr>
                
                
            </table>
            <br><br><br>
           <button type="submit" name="ainsertc" >Insert</button>&nbsp;&nbsp;
                <button type="button" name="cancel" onclick="window.location.href='adminmenu.html';">cancel</button>
        </form>
        </div>
        </body>
</html>
