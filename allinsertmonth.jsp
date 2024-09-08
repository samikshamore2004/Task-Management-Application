<%-- 
    Document   : allinsertmonth
    Created on : 6 Feb, 2024, 6:47:45 AM
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
                      url('https://tse1.mm.bing.net/th?id=OIP.K8i0qGqSf4Ypviw1VhlKCQHaEo&pid=Api&P=0&h=180');
                  background-repeat: no-repeat;
                  
                  background-size: cover;
              }
              </style>
        <title>Data of monthly task</title>
    </head>
    <body>
    <center>
        <h1><font color="white">Monthly Data</font></h1>
        <%
            try
        {
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","");
          Statement st=con.createStatement();
          ResultSet rs=null;
        %>
          <table border="9">
               
                <tbody>
                    <tr>
                        <td><font color="white">ID</font></td>
                        <td><font color="white">Description:</font></td>
                        <td><font color="white">Month</font></td>
                        
                    </tr>
        <%
         String sql="Select * from monthlytask";
          rs=st.executeQuery(sql);
          while(rs.next())
          {
            
            %>
           
                    <tr>
                        <td><font color="white"><%=rs.getString("id")%></font></td>
                        <td><font color="white"><%=rs.getString("description")%></font></td>
                        <td><font color="white"><%=rs.getString("month")%></font></td>
                       
                    </tr>
            
        <%    
        }
        con.close();
        }
         catch(Exception e)
          {
               out.print(e);
          }

        %>
                </tbody>
            </table>
     
                <a href="AdminHome.jsp">back to home page</a>
    </center>
    </body>
</html>
