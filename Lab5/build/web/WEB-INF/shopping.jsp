<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
        <h1>Hello <c:out value="${name}" />!</h1>

        <h1>List</h1>

        <form action="shoppingList" method="post">
            <input type="hidden" name="action" value="add">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" id="item" name="item" placeholder="something here">
                <label for="item">Enter item:</label>
            </div>
            <button type="submit" class="btn btn-outline-primary">Submit</button>            
        </form>

        <br>

        <form action="shoppingList" method="post">
            <input type="hidden" name="action" value="delete">
            <c:forEach var="item" items="${items}">
                <label> <input type="radio" class="form-check-input" name="item" value="${item}"><c:out value="${item}" /></label><br>
                </c:forEach>        
            <br>
            <button type="submit" class="btn btn-outline-primary">Delete</button>
        </form>
        <form action="shoppingList" method="post">
            <div class="d-grid gap-2 col-2 mx-auto">
                <button type="submit" class="btn btn-primary" name="action" value="logout">Logout</button>
            </div>

        </form>
    </body>
</html>
