<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html lang="pt-br">

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
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <!--===============================================================================================-->
    <link rel="stylesheet" href="style.css">
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
                            <li><a class="dropdown-item" href="profile.jsp">Perfil</a></li>
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
    <div id="hero-carousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active c-item">
                <a href="jogos.jsp"><img
                        src="https://www.ytechb.com/wp-content/uploads/2023/04/gaming-wallpapers-for-desktop-5.webp"
                        class="d-block w-100 c-img" alt="Slide 2"></a>
            </div>
            <div class="carousel-item c-item">
                <a href="jogos.jsp"><img src="https://wallpapercave.com/wp/wp4531198.jpg" class="d-block w-100 c-img"
                                            alt="Slide 3"></a>
            </div>
            <div class="carousel-item c-item">
                <a href="jogos.jsp"><img src="https://images2.alphacoders.com/118/1182375.jpg" class="d-block w-100 c-img"
                                 alt="Slide 3"></a>
            </div>
        </div>
    </div>
    <br>
    <h2 class="text">Top Games Rattings</h2>

    <div class="row game-image" id="carDisplay1"></div>



    <div class="container">
        <div class="row mt-3 test2">
            <div class="col-md-3">
                <div class="">
                    <a href="jogos.jsp">
                        <button class="cbtn">View All</button>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div style="margin-top: 20px;"></div>
    <div class="container text-center  test1">
        <div class="w-75 mx-auto">

            <a href="jogos.jsp">
                <img src="https://wallpapercave.com/wp/wp4531198.jpg" alt="Banner" class="img-fluid bnn">
            </a>
        </div>
    </div>
    <h2 class="text-center" style="color: #fff;">Fav Games</h2>
    <div class="row game-image" id="carDisplay2"></div>



    <div class="container h-100">
        <div class="row h-100 justify-content-center align-items-center">
            <div class="col-md-3">
                <div class="text-center">
                    <a href="jogos.jsp">
                        <button class="cbtn">View All</button>
                    </a>
                </div>
            </div>
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
                        <li><a href="index.jsp" style="text-decoration: none; color: #fff;">Home</a></li>
                        <li><a href="jogos.jsp" style="text-decoration: none; color: #fff;">Jogos</a></li>
                        <li><a href="new.jsp" style="text-decoration: none; color: #fff;">News</a></li>

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
<script>
    function getCars() {
        fetch('/display-page') // Substitua pela URL correta da sua servlet
            .then(response => response.json())
            .then(data => {
                displayCars(data, 'carDisplay1'); // primeira div
                displayCars(data, 'carDisplay2'); // segunda div
            })
            .catch(error => console.error('Erro ao obter os carros:', error));
    }

    function displayCars(cars, containerId) {
        var carDisplay = document.getElementById(containerId);

        cars.slice(0, 4).forEach(function(car) {
            var colDiv = document.createElement('div');
            colDiv.className = 'col-md-3 test1';

            var aTag = document.createElement('a');
            aTag.href = 'interno.jsp?id=' + encodeURIComponent(car.id) +
                '&imgurl=' + encodeURIComponent(car.imgurl) +
                '&name=' + encodeURIComponent(car.name) +
                '&description=' + encodeURIComponent(car.descricao);
            aTag.className = 'deco';

            var squareImageDiv = document.createElement('div');
            squareImageDiv.className = 'square-image';

            var img = document.createElement('img');
            img.src = car.imgurl;
            img.alt = car.name;
            img.className = 'img-fluid rounded';

            var pTag = document.createElement('p');
            pTag.className = 'text tt1';
            pTag.innerHTML = '<strong>' + car.name + '</strong>';

            squareImageDiv.appendChild(img);
            aTag.appendChild(squareImageDiv);
            aTag.appendChild(pTag);
            colDiv.appendChild(aTag);
            carDisplay.appendChild(colDiv);
        });
    }

    getCars();
</script>
<script>
    // Ativar o carrossel automático
    $(document).ready(function () {
        $('#hero-carousel').carousel({
            interval: 3000 // Tempo em milissegundos
        });
    });

</script>
</body>

</html>