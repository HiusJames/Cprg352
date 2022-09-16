<%-- 
    Document   : arithmethic
    Created on : Sep 14, 2022, 10:02:40 AM
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
        <div class="box">
            <h1>Arithmetic Calculator</h1>

            <form method="post" action="arithmetic">
                <p>
                    <label>
                        First:
                        <input type="number" name="first" id="first" value="">
                    </label>
                </p>

                <p>
                    <label>
                        Second
                        <input type="number" name="second" id="second" value="">
                    </label>
                </p>

                <p>
                    <button type="submit" name="operation" value="+">+</button>
                    <button type="submit" name="operation" value="-">-</button>
                    <button type="submit" name="operation" value="*">*</button>
                    <button type="submit" name="operation" value="%">%</button>
                </p>

                <p>Result: <%= request.getAttribute("message")%></p>

                <a href="/Lab_2/Age">Age Calculator</a>


            </form>
        </div>
    </body>
</html>
