<%-- 
    Document   : donafterlogin
    Created on : 3 Jan, 2017, 10:53:09 AM
    Author     : Ayyappa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><style>
            table, th, td {
                border: 1px solid navajowhite;
                
            }
        </style></head>
    <body>
        
          <%
        //String usid=request.getParameter("uid");
       //  HttpSession sess = request.getSession(false);
  // String loggeduser=sess.getAttribute("username").toString();
   // sess.getAttribute("password");
   // Statement stc=con.createStatement();
    //ResultSet rs = stc.executeQuery("SELECT CAMPNAME FROM CAMP");
    
    
    
        %>
        <div align="center">
            
        <table>
            <tr>
                <td> <a href="donate_afterlogin.jsp"> donate</a></td><td> <a href="dviewcamp.jsp"> view camps</a></td><td> <a href="dviewdates.jsp"> view dates</a></td>
                <td> <a href="#"> cancel dates</a></td><td> <a href="dviewuseraccount.jsp"> view account</a></td><td> <a href="dedituseraccount.jsp"> edit account</a></td><td> <a href="userlogout.jsp"> logout</a> </td>
            </tr>
            
        </table>
            </div>
    </body>
</html>
