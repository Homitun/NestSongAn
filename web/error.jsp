<%-- 
    Document   : error
    Created on : Oct 1, 2022, 10:05:14 PM
    Author     : SE151471 Hoang Minh Tuan>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>error</title>
    </head>
    <body>
         <%
            String error =(String)request.getAttribute("ERROR");
            if(error == null) error="";
            
            %>
    </body>
</html>
