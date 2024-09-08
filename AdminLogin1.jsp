<%-- 
    Document   : AdminLogin1
    Created on : 3 Feb, 2024, 10:07:09 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Renter Data Input page</title>
        <style>
              body{
                  background-image: 
                      url('https://www.wallpapertip.com/wmimgs/83-838362_web-developer.jpg');
                  background-repeat: no-repeat;
                  
                  background-size: cover;
              }
          </style>
    </head>
    <body>
    <center>
        <form action="AdminLogin2.jsp">
            <h1><font color="orange">Renter Data</font></h1>
        
         <table border="0">
               
                <tbody>
                    <tr>
                        <td><b><font color="red">Enter Name:</font></b></td>
                        <td><input type="text" name="name" value="" required/></td>
                    </tr>
                    <tr>
                        <td><b><font color="red">Enter Username:</font></b></td>
                        <td><input type="text" name="usname" value="" required/></td>
                    </tr>
                    <tr>
                        <td><b><font color="red">Enter Password</font></b></td>
                        <td><input type="password" name="pw" value="" required/></td>
                    </tr>
                </tbody>
            </table><br><br>
           

            
        <%
         String n1=(String)session.getAttribute("n");
         String u1=(String)session.getAttribute("usern");
         String p1=(String)session.getAttribute("pa");
         session.setAttribute("n2", n1);
         session.setAttribute("u2",u1 );
         session.setAttribute("p2",p1 );
            %>
            <input type="submit" value="submit" />
            </form>
    </center>
    </body>
</html>
