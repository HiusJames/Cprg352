<%-- 
    Document   : editnote
    Created on : Sep 21, 2022, 11:49:01 AM
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
        <h2>Edit Note</h2>
        <form action="Note" method="post">
            <p>
                <label>
                    <strong>Title:</strong>
                    <input type ="text" name="title">
                </label>
            </p>
            <p>
                <label for="contents">
                    Content
                </label>
                <textarea id="contents" name="content"></textarea>
            </p>

            <button type="submit"> Submit</button>
        </form>
    </body>
</html>
