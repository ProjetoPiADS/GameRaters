function loadImage() {
      var imageUrl = document.getElementById('imageInput').value;
      var profileImage = document.getElementById('profileImage');

      // Limpar a imagem existente
      profileImage.innerHTML = '';

      // Criar uma nova imagem
      var img = new Image();
      img.src = imageUrl;
      img.alt = 'Imagem de Perfil';

      // Adicionar a nova imagem ao elemento div
      profileImage.appendChild(img);
    }

