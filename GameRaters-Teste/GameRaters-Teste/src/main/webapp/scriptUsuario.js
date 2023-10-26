document.addEventListener("DOMContentLoaded", function() {
    const imageUpload = document.getElementById("image-upload");
    const profileImage = document.getElementById("profile-image");

    imageUpload.addEventListener("change", function() {
        const file = imageUpload.files[0];

        if (file) {
            const reader = new FileReader();

            reader.onload = function(e) {
                profileImage.innerHTML = `<img src="${e.target.result}" alt="Foto de Perfil">`;
            };

            reader.readAsDataURL(file);
        }
    });
});

