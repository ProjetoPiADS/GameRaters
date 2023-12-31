<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GameRaters</title>

    <!-- Inclua os links para os arquivos CSS e JavaScript do Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container mt-5">
    <div class="col-md-6 offset-md-3">
        <h2 class="text-center">Inserir Jogos</h2>

        <form action="/create-car" method="post" id="registration-form">

            <div class="form-group">
                <label for="car-name">Jogos Nome</label>
                <input type="text" class="form-control" name="car-name" id="car-name" value="${param.name}" required>
            </div>

            <div class="form-group">
                <label for="car-description">Descrição do Jogo</label>
                <input type="text" class="form-control" name="car-description" id="car-description" oninput="exibirDescricao(this.value)" value="${param.description}">
            </div>

            <div class="form-group">
                <label for="car-imgurl">Jogos img urL</label>
                <input type="text" class="form-control" name="car-imgurl" id="car-imgurl" value="${param.imgurl}">
            </div>

            <input type="hidden" class="form-control" name="car-id" id="car-id" value="${param.id}">

            <div class="text-center">
                <button type="submit" class="btn btn-primary" id="register-button">Registrar</button>
            </div>

        </form>
    </div>
</div>

<script>

    document.getElementById("registration-form").addEventListener("submit", function(event) {

        if (!document.getElementById("car-name").value ||
            !document.getElementById("car-description").value ||
            !document.getElementById("car-imgurl").value) {

            event.preventDefault();
            alert("Por favor, preencha todos os campos antes de registrar.");
        }
    });
</script>

</body>
</html>

