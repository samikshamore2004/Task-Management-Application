<%-- 
    Document   : insertWeeklyTask
    Created on : 6 Feb, 2024, 6:54:32 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
              body{
                  background-image: 
                      url('https://cdn.wallpapersafari.com/89/10/iP4ZVg.jpg');
                  background-repeat: no-repeat;
                  
                  background-size: cover;
              }
              </style>
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        
       <%
           try
           {
           String id=request.getParameter("weektask");
       String d=request.getParameter("des");
       String w=request.getParameter("week");
        Class.forName("com.mysql.jdbc.Driver");  
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","") ;
           Statement st=con.createStatement();
           String sql="insert into weeklytask(ID,description,week)values('"+id+"','"+d+"','"+w+"')";
           st.executeUpdate(sql);
           out.print("Data inserted successfully");
           con.close();
           }
           catch(Exception e)
          {
         out.print(e);
           }
            %>
            <br><br>
            <a href="allinsertweek.jsp"><font size="4" color="orange">view data</font></a>
    </center>
       %>
    </body>
</html>
