<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro</title>
    <link rel="stylesheet" href="styles_CDT.css">
</head>
<body>
<div class="container">
    <div class="campos">
        <img src="../img/logo.png" alt="Imagem" class="logo">
        <h1 class="titulo">Cadastro</h1>
        <form action="/CadastroServlet" method="post" onsubmit="return validarFormulario()">
            <div class="campo">
                <label for="nome">Nome:</label>
                <input type="text" id="nome" name="nome" class="input-campo">
            </div>
            <div class="campo">
                <label for="nick">Nick:</label>
                <input type="text" id="nick" name="nick" class="input-campo">
            </div>
            <div class="campo">
                <label for="email">Email:</label>
                <input type="text" id="email" name="email" class="input-campo">
            </div>
            <div class="campo">
                <label for="senha">Senha:</label>
                <input type="password" id="senha" name="senha" class="input-campo">
            </div>
            <button type="submit" class="botao">Cadastrar</button>
        </form>
    </div>
    <img src="https://www.adrenaline.com.br/wp-content/plugins/seox-image-magick/imagick_convert.php?width=910&height=568&format=webp&quality=91&imagick=/wp-content/uploads/2022/04/Death_Stranding_Banner_PlayStation_Studios.jpg" alt="Minha imagem" class="minha-imagem">
</div>

<script>
    function validarFormulario() {
        var nome = document.getElementById('nome').value;
        var nick = document.getElementById('nick').value;
        var email = document.getElementById('email').value;
        var senha = document.getElementById('senha').value;

        if (nome === '' || nick === '' || email === '' || senha === '') {
            alert('Por favor, preencha todos os campos.');
            return false;
        }

        // Verifica se o email contém o símbolo "@"
        if (email.indexOf('@') === -1) {
            alert('Por favor, insira um endereço de e-mail válido.');
            return false;
        }

        return true;
    }
</script>
</body>
</html>