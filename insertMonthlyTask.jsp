<%-- 
    Document   : insertMonthlyTask
    Created on : 5 Feb, 2024, 9:33:17 PM
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
          String id=request.getParameter("id");
          String de=request.getParameter("des");
          String m=request.getParameter("month");
          Class.forName("com.mysql.jdbc.Driver");  
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","") ;
           Statement st=con.createStatement();
           String sql="insert into monthlytask(id,description,month)values('"+id+"','"+de+"','"+m+"')";
           st.executeUpdate(sql);
           out.print("Data inserted successfully");
           con.close();
           }
           catch(Exception e)
          {
         out.print(e);
           }
            %><br><br>
            <a href="allinsertmonth.jsp">view data</a>
    </center>
    </body>
</html>
