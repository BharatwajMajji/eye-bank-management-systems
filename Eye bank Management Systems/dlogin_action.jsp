<%-- 
    Document   : login_action
    Created on : 6 Dec, 2016, 3:11:28 PM
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
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login action</title>
    </head>
    <body>
       
            <%try{
                
               Statement st=con.createStatement();
    String uid=request.getParameter("usname");
        String password=request.getParameter("pass");
       
        ResultSet rs = st.executeQuery("SELECT PASSWORD FROM ADONOR WHERE USERNAME='"+uid+"'");
        if(rs.next()){
            String p = rs.getString(1);
           //String u= rs.getString(2); --
           // if(p.equals("admin")&&u.equals("admin")){
            if (p.equals(password)){
                // PreparedStatement ps=con.prepareStatement("INSERT INTO LOGACTIVITY VALUES (?)");
                 //   ps.setString(1, uid);
                 //   ps.executeUpdate();
               // out.println("correct password");
               HttpSession sess= request.getSession();
               sess.setAttribute("username", uid);
               sess.setAttribute("password", password);
               out.println("<script type=\"text/javascript\">window.location.href=\"donate_afterlogin.jsp\";</script>");
            %> 
      
            
            <%
            }}else {
               
              out.println("<script type=\"text/javascript\">alert(\"Wrong Password,Retry\");window.location.href=\"dlogin.jsp\";</script>");
           %> 
        
           
            <%
        }
        
}catch(Exception e){

out.println("exception"+e);
}
%>
           
           
    </body>
</html>
