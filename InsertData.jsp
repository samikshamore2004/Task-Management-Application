<%-- 
    Document   : InsertData
    Created on : 4 Feb, 2024, 9:52:29 AM
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
                      url('https://cdn.wallpapersafari.com/89/10/iP4ZVg.jpg');
                  background-repeat: no-repeat;
                  
                  background-size: cover;
              }
          </style>
        <title>Output Page</title>
    </head>
    <body>
    <center>
        <%
            try{
         String pt=request.getParameter("ptitle");
         String sd=request.getParameter("sdate");
         String ed=request.getParameter("edate");
         String  tool=request.getParameter("tech");
         String id=request.getParameter("id");
         String nm=request.getParameter("name");
         String eid=request.getParameter("emailid");
         String mb=request.getParameter("mobno");
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root","");
         Statement st=con.createStatement();
         String sql="insert into internshipprogram(programtitle,startduration,endduration,technology,peojectmanagerdetailsid)values('"+pt+"','"+sd+"','"+ed+"','"+tool+"','"+id+"')" ;  
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
            <a href="AdminHome.jsp"><b><font color="pink">back to home page</font></b></a></center>
    </body>
</html>
