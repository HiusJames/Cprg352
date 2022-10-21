<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
        <h1>Shopping List</h1>

        <form action="shoppingList" method="post">
            <input type="hidden" name="action" value="register">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" id="nameid" name="name" placeholder="something here">
                <label for="nameid">Name</label>
            </div>
            <button type="submit" class="btn btn-outline-primary">Submit</button>
        </form>

    </body>
</html>
