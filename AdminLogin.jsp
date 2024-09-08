<%-- 
    Document   : AdminLogin
    Created on : 3 Feb, 2024, 9:48:58 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <style>
              body{
                  background-image: 
                      url('https://wallpaperaccess.com/full/1567679.jpg');
                  background-repeat: no-repeat;
                  background-attachment:fixed;
                  background-size:cover;
              }
          </style>
        <title>Login page</title>
    </head>
    <body>
    <center>
        <h1><font color="white"> User's Details are submitted</font></h1>
        <%
          String nm=request.getParameter("name");
          String un=request.getParameter("uname");
          String pass=request.getParameter("password");
          session.setAttribute("n",nm);
          session.setAttribute("usern",un);  
          session.setAttribute("pa", pass);
            
            %>
            
            <a href="AdminLogin1.jsp">Login now</a>
            
    </center>
    </body>
</html>
