<%-- 
    Document   : AdminLogin2
    Created on : 3 Feb, 2024, 12:38:22 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Response Page</title>
    </head>
    <body>
    <center>
        <%
         String nm=request.getParameter("name");
         String unm=request.getParameter("usname");
         String pa=request.getParameter("pw");
         String n=(String)session.getAttribute("n2");
         String us=(String)session.getAttribute("u2");
         String pass=(String)session.getAttribute("p2");
            if(unm.equalsIgnoreCase(us) && pa.equals(pass))
            {
                response.sendRedirect("AdminHome.jsp");
            }
            else
            {
                response.sendRedirect("Errorpage.jsp");
            }
            
            %>
    </center>
    </body>
</html>
