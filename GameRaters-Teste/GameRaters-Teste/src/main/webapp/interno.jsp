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
                        <a class="nav-link text-white font-weight-bold active" aria-current="page" href="jogos.jsp">Jogos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white font-weight-bold" href="new.jsp">News</a>
                    </li>
                </ul>

                <a class="btn btn-danger" type="submit">Login</a>

            </div>
        </div>
    </nav>
</header>
<main>
    <div class="Corpo">
        <div class="JGimage">
            <img src="" alt="" id="card-img">
            <p id="card-description"></p>

        </div>


        <ul class="avaliacao">
            <li class="star-icon ativo" data-avaliacao="1"></li>
            <li class="star-icon" data-avaliacao="2"></li>
            <li class="star-icon" data-avaliacao="3"></li>
            <li class="star-icon" data-avaliacao="4"></li>
            <li class="star-icon" data-avaliacao="5"></li>
        </ul>


        <script>
            var stars = document.querySelectorAll('.star-icon');

            document.addEventListener('click', function(e){
                var classStar = e.target.classList;
                if(!classStar.contains('ativo')){
                    stars.forEach(function(star){
                        star.classList.remove('ativo');
                    });
                    classStar.add('ativo');
                    console.log(e.target.getAttribute('data-avaliacao'));
                }
            });
        </script>

        <div class = "p-5">
            <label for="Comentario">Deixe seu comentário</label>
            <textarea class="form-control Comments" name="Comentario" id="Comentario" rows="4" required></textarea>
            <br>
            <button class="Comentar">ENVIAR</button>
        </div>
        <div id="container1">
            <h1>Comentarios</h1>
            <div class="perfil">
                <img src="https://png.pngtree.com/png-vector/20190710/ourlarge/pngtree-user-vector-avatar-png-image_1541962.jpg" alt="">
                <h6>Mauricio de souza</h6>

                <p>Mui Buneo o jogo juguem</p>

            </div>
            <div class="perfil">
                <img src="https://png.pngtree.com/png-vector/20190710/ourlarge/pngtree-user-vector-avatar-png-image_1541962.jpg" alt="">
                <h6>Lucas da silva</h6>

                <p>Mui Buneo o jogo juguem</p>

            </div>
            <div class="perfil">
                <img src="https://png.pngtree.com/png-vector/20190710/ourlarge/pngtree-user-vector-avatar-png-image_1541962.jpg" alt="">
                <h6>Gabriel Barbosa Maia</h6>

                <p>Mui Buneo o jogo juguem</p>

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
<script>
    document.addEventListener("DOMContentLoaded", function () {
        const urlParams = new URLSearchParams(window.location.search);
        const cardImgElement = document.getElementById("card-img");
        const cardDescriptionElement = document.getElementById("card-description");

        if (urlParams.has("imgurl")) {
            cardImgElement.src = urlParams.get("imgurl");
        }

        if (urlParams.has("description")) {
            cardDescriptionElement.textContent = urlParams.get("description");
        }
    });
</script>
</body>