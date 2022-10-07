<%-- 
    Document   : login
    Created on : Oct 7, 2022, 7:14:55 AM
    Author     : huyth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h1>Login</h1>
                <form action="login" method="post">
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="floatingInput" name="username">
                        <label for="floatingInput">Username</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="password" class="form-control" id="floatingPassword" name="password">
                        <label for="floatingPassword">Password</label>
                    </div>
                    
                    <button type="submit" class="btn btn-primary">Submit</button>

                </form>
                <p>${message}</p>
            </div>
        </div>
    </div>
    <body>


    </body>
</html>
