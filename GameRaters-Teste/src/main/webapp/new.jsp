<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
     <link rel="stylesheet" href="Stylenw.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <title>News</title>
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
    <h1>Novidades</h1>
    <br>
    <main>
        <div>
            <div class="container">
                <img src="https://viciados.net/wp-content/uploads/2021/09/Spider-Man-2-PlayStation-4-PS4-Sony-PS5-Game-Jogo-Exclusivo.webp" alt="Spider-Man 2" class="img-fluid float-left">
                <div class="text">
                    <h2>Spider-Man 2 bate recorde de vendas no lançamento de exclusivos de PlayStation</h2>
                    <p>Spider-Man 2 é um enorme sucesso de vendas, tornando-se o jogo do PlayStation Studios com os melhores números de venda em um único dia.</p>
                    <p>O exclusivo PlayStation 5 da Insomniac vendeu mais de 2,5 milhões de cópias em 24 horas, revelou a Sony. Esse número inclui vendas pré-compradas e unidades vendidas no bundle junto com o PS5. O marco de vendas significa que o Spider-Man 2 ultrapassou God of War Ragnarok no topo da tabela de vendas no lançamento de PlayStation no primeiro dia de lançamento.</p>
                    <p>Clique em <a href="https://br.ign.com/spider-man-2/115194/news/spider-man-2-bate-recorde-de-vendas-no-lancamento-de-exclusivos-de-playstation">Saiba Mais</a> para saber mais das novidades de Spider-Man 2.</p>
                </div>
            </div>
            <div class="container">
                <img src="https://i.ytimg.com/vi/MDErQ1KTzaI/maxresdefault.jpg" alt="Heartstell" class="img-fluid float-right">
                <div class="text">
                    <h2>League Of Legends: HEARTSTEEL lança primeira música, PARANOIA</h2>
                    <p>Boy Band com seis campeões do jogo também ganhou linha de skins, conheça a nova coleção de Skins HeartStell de League of Legends e assista ao clipe.</p>
                    <p><a href="https://www.youtube.com/watch?v=MDErQ1KTzaI">Clique aqui para conhecer</a></p>
                </div>
            </div>
        </div>
        <div class="container">
            <img class="img3" src="https://evilhazard.com.br/wp-content/uploads/2023/10/maxresdefault-1.jpg">
            <div class="texto">
                <h2>Estreia nos cinemas: Five Nights at Freddy</h2>
                Five Nights at Freddy's é baseado na franquia de videogame de sucesso que coloca o jogador contra uma horda de personagens animatrônicos depois que aceita um novo emprego cobrindo o turno da noite na Freddy Fazbear's Pizza. E sua adaptação live action chega ainda essa semana nos cinemas.
                <a href="https://br.ign.com/five-nights-at-freddys-theater/115288/news/fnaf-live-action-nao-ganhara-versao-18-entenda">Confira</a>
            </div>
        </div>
        <div class="container">
            <img class="img4" src="https://assets-prd.ignimgs.com/2023/10/31/patchnotes7-09websitebanner-1-1698757773491.png?width=1280" alt="Agente Valorant ISO">
            <div class="texto">
                <h2>Valorant: Iso, novo agente, é revelado; veja habilidades</h2>
                A Riot Games anunciou o lançamento de Iso, novo agente do Valorant. O operador, que tem nacionalidade chinesa, será o sétimo duelista do First-Person Shooter (FPS) e chegará aos servidores em 31 de outubro, quando será iniciado o Ato 3 Episódio 7. Além do vídeo de apresentação, a desenvolvedora revelou as habilidades do novo personagem.
                <a href="https://www.youtube.com/watch?v=jaUJO3uAu5s">Confira</a>
            </div>
        </div>
        <div class="container">
            <img class="img5" src="https://i.ytimg.com/vi/WSGdMv72ghI/maxresdefault.jpg" alt="Final Fantasy logo">
            <div class="texto">
                <h2>Final Fantasy XIV: Dawntrail revela novo job em trailer</h2>
                Final Fantasy XIV: Dawntrail, nova expansão do MMORPG da Square Enix, recebem um novo trailer que revela um dos jobs inéditos do DLC. Não se tratando especificamente de um trailer completamente inédito, um novo vídeo revelado no último sábado (21) mostra uma versão estendida do primeiro teaser de Dawntrail.
                <a href="https://www.youtube.com/watch?v=2ISoqghadkE">Veja</a>
             </div>
        </div>
        <div class="container">
            <img class="" src="https://manualdosgames.com/wp-content/uploads/2023/05/Mortal-Kombat-1.jpg.webp" alt="Mortal Kombat 1">
            <div class="text">
                <h2>Mortal Kombat 1: Lançamento de Omni-Man tem data confirmada</h2>
                Mortal Kombat 1 tem data para receber o primeiro personagem de DLC. Omni-Man inaugura o primeiro Kombat Pack do game da NetherRealm em novembro.
                <a href="https://www.theenemy.com.br/xbox/mk1-omni-man-data-leak">Veja</a>
            </div>
        </div>
    </main>
</body>
</html>