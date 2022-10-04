<%-- 
    Document   : login
    Created on : Sep 28, 2022, 5:06:07 PM
    Author     : SE151471 Hoang Minh Tuan>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <form action="MainController" method ="POST">
            User ID<input type ="text" name="userID"/></br>
            Password<input type ="password" name="password"/></br>
            <input type="submit" name="action" value="login"/>
            <input type="reset"  value="Reset"/>
            
        </form>
         <%
            String error =(String)request.getAttribute("ERROR");
            if(error == null) error="";
            
            %>
            <h1><%= error%></h1>
    </body>
</html>

