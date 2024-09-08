<%-- 
    Document   : MonthlyTask
    Created on : 5 Feb, 2024, 9:05:48 PM
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
                      url('https://wallpapercave.com/wp/wp7724090.jpg');
                  background-repeat: no-repeat;
                  
                  background-size: cover;
              }
          </style>
        <title>Monthly task</title>
    </head>
    <body bgcolor="black">
    <center>
        <form action="insertMonthlyTask.jsp">
       
            <h1><font color="orange">Monthly Task<img src="https://static.vecteezy.com/system/resources/previews/000/180/387/original/software-engineers-vectors.jpg" width="100" height="50"/>
                </font></h1>
        <table border="0">
           
            <tbody>
                <tr>
                    <td><font color="red">Enter ID:</font></td>
                    <td><input type="text" name="id" value="" requird/></td>
                </tr>
                <tr>
                    <td><font color="red">Description:</font></td>
                    <td><textarea name="des" rows="5" cols="20" required>
Enter task description

                        </textarea></td>
                </tr>
                 <tr>
                    <td><font color="red">Select Month:</font></td>
                    <td><input type="month" name="month" value="" required/></td>
                </tr>
            </tbody>
        </table><br><br>
        <input type="submit" value="submit" /> </form>
    </center>
    </body>
</html>
