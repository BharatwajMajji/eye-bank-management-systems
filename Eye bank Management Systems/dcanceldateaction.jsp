
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
        <div align='center'>
        <table>
        <%
             HttpSession sess = request.getSession(false);
   String loggeduser=sess.getAttribute("username").toString();
    sess.getAttribute("password");
         Statement st=con.createStatement();
        String uid=request.getParameter("date");
       st.executeUpdate("DELETE DONATEREQ WHERE DONDATE='"+uid+"' AND USERNAME='"+loggeduser+"'");
       out.println("<script type=\"text/javascript\">window.location.href=\"donate_afterlogin.jsp\";</script>");
        %>
    </table>
        </div>
    </body>
</html>
