<%-- 
    Document   : viewnote
    Created on : Sep 21, 2022, 11:48:47 AM
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
        <h1>Simple Note Keeper!</h1>
        <h2>View Note</h2>
        <p>
            <strong>Title:</strong>
            ${note.title}
        </p>
        <p>
            <strong>Content:</strong><br>
            ${note.content}
        </p>
        <a href="Note?edit">Edit</a>
    </body>
</html>
