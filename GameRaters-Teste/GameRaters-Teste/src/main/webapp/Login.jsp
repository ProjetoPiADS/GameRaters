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
    <img src="https://www.adrenaline.com.br/wp-content/plugins/seox-image-magick/imagick_convert.php?width=910&height=568&format=webp&quality=91&imagick=/wp-content/uploads/2022/04/Death_Stranding_Banner_PlayStation_Studios.jpg" alt="Minha imagem" class="minha-imagem">
    <div class="campos">
        <img src="img/logo.png" alt="Imagem" class="imagem-login">
        <h1 class="titulo">Login</h1>
        <form action="index.jsp" method="post">
            <div class="campo">
                <label for="usuario">Email:</label>
                <input type="text" id="usuario" name="Email" class="input-campo">
            </div>
            <div class="espaco"></div>
            <div class="campo">
                <label for="senha">Senha:</label>
                <input type="password" id="senha" name="password" class="input-campo">
            </div>

            <button class="botao" type="submit">Enviar</button>
        </form>
        <p>Não tem uma conta? <a href="./Cadastro/Cadastro.html" id="criar-conta">Crie uma aqui</a>.</p>
    </div>
</div>
</body>
</html>