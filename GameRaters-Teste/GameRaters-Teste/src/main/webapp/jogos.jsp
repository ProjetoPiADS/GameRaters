<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GameRaters</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<header>
    <nav class="navbar navbar-expand-lg custom-navbar">
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
<div class="container">
    <div class="row" id="car-list"></div>
</div>
<div class="text-center p-3">
    <button class="cbtn" id="load-more">Ver Mais</button>
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
<!-- Inclua o Bootstrap JavaScript e seu script personalizado -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
<script src="script.js"></script>
</body>
</html>