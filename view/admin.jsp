<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container mt-3">
    <h2>GameManager </h2>
    <p>The .table-striped class adds zebra-stripes to a table:</p>
    <a type="button" class="btn btn-success" href="/game.jsp">Create</a>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>id</th>
            <th>name</th>
            <th>img</th>
            <th>price</th>
            <th>edit</th>
            <th>delete</th>
        </tr>
        </thead>
        <tbody>
        <
        <c:forEach items="${games}" var="sp">
            <tr>
                <td>${sp.id}</td>
                <td>${sp.name}</td>
                <td><img src="${sp.img}" height="200" width="250"></td>
                <td>${sp.price}</td>
                <td><a type="button" class="btn btn-warning" href="/edit?id=${sp.id}" >Edit</a></td>
                <td><button type="button" class="btn btn-danger">Danger</button></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>

