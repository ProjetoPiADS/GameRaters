<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--===============================================================================================-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <!--===============================================================================================-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <!--===============================================================================================-->
    <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
            crossorigin="anonymous"></script>
    <!--===============================================================================================-->
    <link rel="stylesheet" href="styleUser.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <title>GameRaters</title>
</head>
<body>
<header>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
            <a class="navbar-brand text-white font-weight-bold" href="#">
                <img class="img" src="img/logo.png" alt="Sua Logo">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link text-white font-weight-bold active" aria-current="page" href="index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white font-weight-bold" href="jogos.jsp">Jogos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white font-weight-bold" href="new.jsp">News</a>
                    </li>
                </ul>

                <c:if test="${not empty sessionScope.usuario}">
                    <!-- Usuário logado -->
                    <div class="dropdown">
                        <button class="btn btn-danger dropdown-toggle" type="button" id="userDropdown" data-bs-toggle="dropdown"
                                aria-expanded="false">
                            Bem-vindo, ${sessionScope.usuario.name} <!-- Substitua 'name' pelo atributo correto do seu objeto Usuario -->
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="userDropdown">
                            <li><a class="dropdown-item" href="/show-user-name">Perfil</a></li>
                            <!-- Adiciona a opção "Tela Adm" apenas para o usuário com email "admin@gmail.com" -->
                            <c:if test="${sessionScope.usuario.email eq 'admin@gmail.com'}">
                                <li><a class="dropdown-item" href="telaAdm.jsp">Tela Adm</a></li>
                            </c:if>
                            <li><a class="dropdown-item" href="logout">Logout</a></li>
                            <!-- Adicione mais opções se necessário (por exemplo, para usuários administradores) -->
                        </ul>
                    </div>
                </c:if>
                <c:if test="${empty sessionScope.usuario}">
                    <!-- Usuário não logado -->
                    <a class="btn btn-danger" href="Login.jsp">Login</a>
                </c:if>

            </div>
        </div>
    </nav>
</header>
<main>
    <div class="profile">
        <div class="profile-image" id="profile-image">
        <c:forEach var="user" items="${users}">
                <c:if test="${user.id eq sessionScope.usuario.id}">
                                <img src="${user.url}" alt="Foto de perfil">
                </c:if>
        </c:forEach>
        </div>
            <div class="profile-text">
                    <h1>${sessionScope.usuario.nick}</h1>
                    <p>3 Comentários</p>
                    <button type="button" id="mostrar-esconder" onclick="toggleVisibility()">Alterar foto de perfil</button>
                    <script>
                    function toggleVisibility() {
                        var container = document.getElementById("controls-container");
                        if (container.style.display === "none") {
                            container.style.display = "block";
                        } else {
                            container.style.display = "none";
                        }
                    }
                    </script>
                    <div class="profile-controls" id="controls-container">
                        <form action="/show-user-name" method="post">
                            <label for="url-imagem">Insira a URL da imagem:</label>
                            <input type="text" name="url" id="url" value="${usuario.url}" />
                            <input type="hidden" id="id" name="id" value="${usuario.id}">
                            <button type="submit">Confirmar</button>
                        </form>
                    </div>
            </div>

    </div>

    <br>
    <h2 class="text">Comentários</h2>

    <div id="container1">
        <div class="perfil">
            <c:forEach var="user" items="${users}">
                            <c:if test="${user.nick eq sessionScope.usuario.nick}">
                                            <img src="${user.url}" alt="Foto de perfil">
                            </c:if>
                    </c:forEach>
                <h6>${sessionScope.usuario.nick}</h6>
            <p>Jogo incrível, gameplay dinâmica e história cativante.</p>

        </div>
    </div>

    <div id="container2">
        <div class="perfil">
            <c:forEach var="user" items="${users}">
                            <c:if test="${user.nick eq sessionScope.usuario.nick}">
                                            <img src="${user.url}" alt="Foto de perfil">
                            </c:if>
                    </c:forEach>
            <h6>${sessionScope.usuario.nick}</h6>
            <p>Gostei muito do jogo, não vejo a hora de uma sequência.</p>

        </div>
    </div>

    <div id="container3">
        <div class="perfil">
            <c:forEach var="user" items="${users}">
                            <c:if test="${user.nick eq sessionScope.usuario.nick}">
                                            <img src="${user.url}" alt="Foto de perfil">
                            </c:if>
                    </c:forEach>
            <h6>${sessionScope.usuario.nick}</h6>

            <p>Achei um pouco decepcionante.</p>

        </div>
    </div>



    <footer class="text-light py-3" style="background-color: #1C1C1C;">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <a href="/">
                        <img src="img/logo.png" alt="GameRaters Logo" width="120" style="text-decoration: none; color: #fff;">
                    </a>
                </div>
                <div class="col-md-4">
                    <h4 style="color: #fff;">Useful Links</h4>
                    <ul class="list-unstyled">
                        <li><a href="#" style="text-decoration: none; color: #fff;">Home</a></li>
                        <li><a href="#" style="text-decoration: none; color: #fff;">Products</a></li>
                        <li><a href="#" style="text-decoration: none; color: #fff;">Services</a></li>
                        <li><a href="#" style="text-decoration: none; color: #fff;">Contact</a></li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <h4 style="color: #fff;">Follow Us</h4>
                    <ul class="list-inline">
                        <li class="list-inline-item"><a href="#" style="text-decoration: none; color: #fff;"><i class="fab fa-twitter"></i></a></li>
                        <li class="list-inline-item"><a href="#" style="text-decoration: none; color: #fff;"><i class="fab fa-instagram"></i></a></li>
                        <li class="list-inline-item"><a href="#" style="text-decoration: none; color: #fff;"><i class="fab fa-facebook"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>

</main>
</body>

</html>