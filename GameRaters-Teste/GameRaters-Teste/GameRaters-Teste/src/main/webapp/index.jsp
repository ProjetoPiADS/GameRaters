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
                        <a class="nav-link text-white font-weight-bold" href="jogos.jsp">Jogos</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link text-white font-weight-bold" href="new.jsp">News</a>
                    </li>
                </ul>

                <a class="btn btn-danger" href="Login.jsp">Login</a>

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

    <div class="row game-image ">
        <div class="col-md-3 test1">
            <a href="pagina1.html" class="deco">
                <div class="square-image">
                    <img src="https://images2.alphacoders.com/118/1182375.jpg" alt="Game 1" class="img-fluid rounded">
                </div>
                <p class="text"><i class="fas fa-fire"></i> 800 Followers</p>
            </a>
        </div>
        <div class="col-md-3 test1">
            <a href="pagina2.html" class="deco">
                <div class="square-image">
                    <img src="https://images2.alphacoders.com/118/1182375.jpg" alt="Game 2" class="img-fluid rounded">
                </div>
                <p class="text"><i class="fas fa-fire"></i> 800 Followers</p>
            </a>
        </div>
        <div class="col-md-3 test1">
            <a href="pagina3.html" class="deco">
                <div class="square-image">
                    <img src="https://images2.alphacoders.com/118/1182375.jpg" alt="Game 3" class="img-fluid rounded">
                </div>
                <p class="text"><i class="fas fa-fire"></i> 800 Followers</p>
            </a>
        </div>
        <div class="col-md-3 test1">
            <a href="pagina4.html" class="deco">
                <div class="square-image">
                    <img src="https://images2.alphacoders.com/118/1182375.jpg" alt="Game 4" class="img-fluid rounded">
                </div>
                <p class="text"><i class="fas fa-fire"></i> 800 Followers</p>
            </a>
        </div>
    </div>

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
            <!-- Banner -->
            <a href="pagina-de-destino.html">
                <img src="https://wallpapercave.com/wp/wp4531198.jpg" alt="Banner" class="img-fluid bnn">
            </a>
        </div>
    </div>
    <h2 class="text-center" style="color: #fff;">Fav Games</h2>
    <div class="row game-image ">
        <div class="col-md-3 test1">
            <a href="pagina1.html" class="deco">
                <div class="square-image">
                    <div class="img-container">
                        <img src="https://pbs.twimg.com/media/F100zEyXwAAszNz.png" alt="Game 1" class="img-fluid rounded">
                    </div>
                </div>
                <p class="text">Counter Strike 2</p>
            </a>
        </div>
        <div class="col-md-3 test1">
            <a href="pagina2.html" class="deco">
                <div class="square-image">
                    <img src="https://seeklogo.com/images/V/valorant-logo-FAB2CA0E55-seeklogo.com.png" alt="Game 2"
                         class="img-fluid rounded">
                </div>
                <p class="text tt1">Valorant</p>
            </a>
        </div>
        <div class="col-md-3 test1">
            <a href="pagina3.html" class="deco">
                <div class="square-image">
                    <img
                            src="https://www.adrenaline.com.br/wp-content/plugins/seox-image-magick/imagick_convert.php?width=500&height=500&format=webp&quality=91&imagick=uploads.adrenaline.com.br/2023/05/mk1.jpg"
                            alt="Game 3" class="img-fluid rounded">
                </div>
                <p class="text">Mortal Kombat 1</p>
            </a>
        </div>
        <div class="col-md-3 test1">
            <a href="pagina4.html" class="deco">
                <div class="square-image">
                    <img
                            src="https://upload.wikimedia.org/wikipedia/pt/thumb/7/78/Spider-Man_jogo_2018_capa.png/270px-Spider-Man_jogo_2018_capa.png"
                            alt="Game 4" class="img-fluid rounded">
                </div>
                <p class="text tt1">Spider Man</p>
            </a>
        </div>
    </div>
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
    // Ativar o carrossel automático
    $(document).ready(function () {
        $('#hero-carousel').carousel({
            interval: 3000 // Tempo em milissegundos
        });
    });
</script>
</body>

</html>