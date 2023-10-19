document.addEventListener("DOMContentLoaded", function() {
    const itemsPerPage = 20; // Número de cards por página
    const currentPage = 1; // Página atual (você pode ajustar isso conforme necessário)

    fetch('/display-page?page=' + currentPage) // Passa o número da página para a servlet
        .then(response => response.json())
        .then(data => {
            const carList = document.getElementById("car-list");
            let cardsHTML = '';

            const startIndex = (currentPage - 1) * itemsPerPage;
            const endIndex = startIndex + itemsPerPage;

            data.slice(startIndex, endIndex).forEach((car, index) => {
                if (index % 4 === 0) {
                    cardsHTML += '<div class="row">';
                }

                cardsHTML += `
                    <div class="col-md-3">
                        <div class="card ">
                            <img src="${car.imgurl}" class="card-img-top " alt="${car.name}">
                            <div class="card-body">
                                <h5 class="card-title deco">${car.name}</h5>
                            </div>
                        </div>
                    </div>
                `;

                if (index % 4 === 3 || index === data.length - 1) {
                    cardsHTML += '</div>';
                }
            });

            carList.innerHTML = cardsHTML;
        })
        .catch(error => console.error(error));
});