<%-- 
    Document   : agecalculator
    Created on : Sep 12, 2022, 1:05:19 PM
    Author     : huyth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style.css" type="text/css" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Age Calculator!</h1>
        
        <form action -"age" method="POST">
            <label>Enter your age:</label>
            <input type="number" id="age" name="age" value="">
            <br />
            <button type="submit"><strong>Age next Birthday</strong></button>
        </form>
        
        <% if (request.getAttribute("age") != null) { %>
        <p> Your age after next Birthday:  <%= request.getAttribute("age") %></p>
       <%  } %>
       
       <% if (request.getAttribute("message") != null) { %>
       <p><%= request.getAttribute("message") %></p>
       <% } %>
       
       <a href="/Lab_2/arithmetic">Arithmetic Calculator</a>
    </body>
</html>
     