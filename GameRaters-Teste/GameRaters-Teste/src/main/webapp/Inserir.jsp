<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GameRaters</title>

    <!-- Inclua os links para os arquivos CSS e JavaScript do Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container mt-5">
    <div class="col-md-6 offset-md-3">
        <h2 class="text-center">Inserir Jogos</h2>

        <form action="/create-car" method="post" id="registration-form">

            <div class="form-group">
                <label for="car-name">Jogos Nome</label>
                <input type="text" class="form-control" name="car-name" id="car-name" required>
            </div>

            <div class="form-group">
                <label for="car-description">Descrição jogos</label>
                <input type="text" class="form-control" name="car-description" id="car-description">
            </div>

            <div class="form-group">
                <label for="car-imgurl">Jogos img urL</label>
                <input type="text" class="form-control" name="car-imgurl" id="car-imgurl">
            </div>

            <div class="text-center">
                <button type="submit" class="btn btn-primary" id="register-button">Registrar</button>
            </div>

        </form>
    </div>
</div>

<script>
    // Adicione um ouvinte de evento para o envio do formulário
    document.getElementById("registration-form").addEventListener("submit", function(event) {
        // Verifique se algum campo está vazio antes de permitir o envio
        if (!document.getElementById("car-name").value ||
            !document.getElementById("car-description").value ||
            !document.getElementById("car-imgurl").value) {
            // Impede o envio do formulário se algum campo estiver vazio
            event.preventDefault();
            alert("Por favor, preencha todos os campos antes de registrar.");
        }
    });
</script>

</body>
</html>

