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
                        <button class="btn btn-danger dropdown-toggle" type="button" id="userDropdown" data-bs-toggle="dropdown" aria-expanded="false">
                            Bem-vindo, ${sessionScope.usuario.name} <!-- Substitua 'name' pelo atributo correto do seu objeto Usuario -->
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="userDropdown">
                            <li><a class="dropdown-item" href="profile.jsp">Perfil</a></li>
                            <li><a class="dropdown-item" href="logout.jsp">Logout</a></li>
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
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrt9pN1mLwwnVRHG2ALMO5xCLqCtzXz0NLbw&usqp=CAU" alt="Foto de perfil">
            <div class="button-profile-image">
                <input type="file" id="image-upload" accept="image/*" >
                <label for="image-upload" class="upload-button">Editar foto de perfil</label>
            </div>
        </div>
            <div class="profile-text">
                <c:forEach var="User" items="${users}">
                    <h1>${User.name}</h1>
                </c:forEach>
                    <p>10 Seguidores</p>
                    <p>3 Comentários</p>
            </div>
    </div>
        <script src="scriptUsuario.js"></script>
    <br>
    <h2 class="text">Comentários</h2>

    <div id="container1">
        <div class="perfil">
            <img src="https://static.wikia.nocookie.net/spidermanps4/images/d/d9/IMG_4563.PNG/revision/latest/thumbnail/width/360/height/360?cb=20230721010243" alt="">
            <c:forEach var="User" items="${users}">
                <h6>${User.name}</h6>
            </c:forEach>

            <p>Jogo incrível, gameplay dinâmica e história cativante.</p>

        </div>
    </div>

    <div id="container2">
        <div class="perfil">
            <img src="https://static.wikia.nocookie.net/spidermanps4/images/d/d9/IMG_4563.PNG/revision/latest/thumbnail/width/360/height/360?cb=20230721010243" alt="">
            <c:forEach var="User" items="${users}">
            <h6>${User.name}</h6>
            </c:forEach>
            <p>Gostei muito do jogo, não vejo a hora de uma sequência.</p>

        </div>
    </div>

    <div id="container3">
        <div class="perfil">
            <img src="https://static.wikia.nocookie.net/spidermanps4/images/d/d9/IMG_4563.PNG/revision/latest/thumbnail/width/360/height/360?cb=20230721010243" alt="">
            <c:forEach var="User" items="${users}">
                <h6>${User.name}</h6>
            </c:forEach>

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