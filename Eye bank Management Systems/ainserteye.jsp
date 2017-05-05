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
        <form action="ainserte_action.jsp" method="post">
            
            <table>
                <tr>
                    <td>Eye Name </td><td> <input type="text" name="ename" /> </td>
                    
                </tr>
                 <tr>
                    <td>Collected on </td><td><input type="text" name="edate" /></td>
                    
                </tr>
                 <tr>
                    <td>In Camp</td><td><input type="text" name="ecamp" /></td>
                    
                </tr>
                 
                
                
            </table>
            <br><br><br>
           <button type="submit" name="ainserte" >Insert</button>&nbsp;&nbsp;
                <button type="button" name="cancele" onclick="window.location.href='adminmenu.html';">cancel</button>
        </form>
        </div>
        </body>
</html>
