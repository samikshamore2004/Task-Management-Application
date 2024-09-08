<%-- 
    Document   : WeeklyTask
    Created on : 5 Feb, 2024, 9:06:34 PM
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
                      url('https://static.vecteezy.com/system/resources/previews/020/962/986/original/software-engineer-graphic-clipart-design-free-png.png');
                  background-repeat: no-repeat;
                  
                  background-size: cover;
              }
          </style>
        <title>Weekly task</title>
    </head>
    <body bgcolor="black">
    <center>
        <form action="insertWeeklyTask.jsp">
       
            <h1><font color="red"><u>Weekly Task</u><img src="https://thumbs.dreamstime.com/z/software-engineer-concept-people-front-many-computer-38321157.jpg" width="100" height="50"/>
                </font></h1>
        <table border="0">
            
            <tbody>
                <tr>
                    <td><font color="orange">Enter ID:</font></td>
                    <td><input type="text" name="weektask" value="" required /></td>
                </tr>
                <tr>
                    <td><font color="orange">Description:</font></td>
                    <td><textarea name="des" rows="5" cols="20" required>
Enter weekly task description
                        </textarea></td>
                </tr>
                <tr>
                    <td><font color="orange">Select Week</font></td>
                    <td><input type="week" name="week" value="" required/></td>
                </tr>
            </tbody>
        </table><br><br>
        <input type="submit" value="submit" /> </form>
    </center>
    </body>
</html>
