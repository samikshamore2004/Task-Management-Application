<%-- 
    Document   : AllData
    Created on : 3 Feb, 2024, 4:10:22 PM
    Author     : Dell
--%>

<%@page import="java.sql.DriverManager"%>
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
        <title>Details Page</title>
    </head>
    <body>
    <center>
        <h1><font color="white">Data</font></h1>
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
                        <td><font color="white">Program Title:</font></td>
                        <td><font color="white">Start Duration:</font></td>
                        <td><font color="white">End Duration:</font></td>
                        <td><font color="white">Technology:</font></td>
                        <td><font color="white">Project Manager's Details:</font></td>
                        <td><font color="white">Action</font></td>
                    </tr>
        <%
         String sql="Select * from internshipprogram";
          rs=st.executeQuery(sql);
          while(rs.next())
          {
            
            %>
           
                    <tr>
                        <td><font color="white"><%=rs.getString("programtitle")%></font></td>
                        <td><font color="white"><%=rs.getString("startduration")%></font></td>
                        <td><font color="white"><%=rs.getString("endduration")%></font></td>
                        <td><font color="white"><%=rs.getString("technology")%></font></td>
                        <td><font color="white"><%=rs.getString("peojectmanagerdetailsid")%></font></td>
                        <td><font color="white"><a href="callAllData.jsp?passId=<%=rs.getString("peojectmanagerdetailsid")%>"><font color="blue">update</font></a></font></td>
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
     
                <a href="AdminHome.jsp">back to home page</a></center> 
    </body>
</html>
  