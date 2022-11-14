<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

        <title>JSP Page</title>
    </head>
    <body>
        <h1>James's User Management System</h1>
        <form action="user" method="post">

            <table class="table table-striped">
                <thead>
                    <tr>
                        <th></th>
                        <th>Email</th>
                        <th>First name</th>
                        <th>Last name</th>
                        <th>Role</th>
                        <th>Active</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${users}" var="user">
                        <tr>
                            <th><input type="radio" name="email" value="${user.email}"></th>
                            <th>${user.email}</th>
                            <th>${user.firstName}</th>
                            <th>${user.lastName}</th>
                            <th>${user.role.getName()}</th>
                            <th>${user.active ? 'Y' : 'N'}</th>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <table>
                <tr>
                    <th><button type="submit" class="btn btn-primary" name="action" value="delete">Delete</button></th>
                    <th><button type="submit" class="btn btn-primary" name="action" value="remove">Remove</button></th>
                    <th><button type="submit" class="btn btn-primary" name="action" value="update">Edit</button></th>
                    <th><button type="submit" class="btn btn-primary" name="action" value="create">Create</button></th>
                </tr>
            </table>
            <div class="d-grid gap-5 col-5">
                <table class="table table-borderless">
                    <tr>
                        <th>Email:</th>
                        <th><input type="text" name="emailText" placeholder="For create account only!"></th>
                    </tr>
                    <tr>
                        <th>First Name:</th>
                        <th><input type="text" name="fname"></th>
                    </tr>
                    <tr>
                        <th>Last Name:</th>
                        <th><input type="text" name="lname"></th>
                    </tr>
                    <tr>
                        <th>Password:</th>
                        <th><input type="password" name="password"></th>
                    </tr>
                    <tr>
                        <th>Role ID:</th>
                        <th><input type="number" name="role" max=3 min=1></th>
                    </tr>
                </table>
            </div>
        </form>

    </body>
</html>
