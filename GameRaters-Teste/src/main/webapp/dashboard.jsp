<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h1>Jogos</h1>
    <table class="table table-bordered">
        <thead class="thead-dark">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Descrição</th>
            <th>Img Url</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="car" items="${cars}">
            <tr>
                <td>${car.id}</td>
                <td>${car.name}</td>
                <td>${car.descricao}</td>
                <td>${car.imgurl}</td>
                 <td>
                     <form action="/delete-car" method="post">
                       <input type="hidden" id="id" name="id" value="${car.id}">
                       <button type="submit">Delete</button>
                    </form>
                  </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>


</body>
</html>
