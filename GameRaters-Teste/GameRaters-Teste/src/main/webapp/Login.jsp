<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="style_Login.css">
</head>
<body>
<div class="container">
    <img src="https://www.womendailymagazine.com/wp-content/uploads/2017/10/top-6-video-games-1-1.jpg" alt="Minha imagem" class="minha-imagem">
    <div class="campos">
        <img src="img/logo.png" alt="Imagem" class="imagem-login">
        <h1 class="titulo">Login</h1>
        <form action="LoginServelet" method="post"> <!-- Atualizado o action para chamar o servlet -->
            <div class="campo">
                <label for="usuario">Email:</label>
                <input type="text" id="usuario" name="email" class="input-campo">
            </div>
            <div class="espaco"></div>
            <div class="campo">
                <label for="senha">Senha:</label>
                <input type="password" id="senha" name="senha" class="input-campo">
            </div>

            <button type="submit" class="botao">Enviar</button>
        </form>
        <p>Não tem uma conta? <a href="Cadastro/Cadastro.jsp" id="criar-conta">Crie uma aqui</a>.</p>
    </div>
</div>

<script>
    var urlParams = new URLSearchParams(window.location.search);
    var erroParam = urlParams.get('erro');
    if (erroParam === '1') {
        alert("Login falhou. Verifique seu email e senha.");
    }
</script>
</body>
</html>
