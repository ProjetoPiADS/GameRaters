document.addEventListener("DOMContentLoaded", function () {
    const itemsPerPage = 20; // Número de cartões a serem carregados por clique no botão "Ver Mais"
    let currentPage = 1; // Número da página atual
    let currentItemsDisplayed = 0; // Número atual de cartões exibidos
    let totalItems = 0; // Número total de cartões
    const loadMoreButton = document.getElementById("load-more");
    const carList = document.getElementById("car-list");

    function fetchItems() {
        fetch('/display-page?page=' + currentPage)
            .then(response => response.json())
            .then(data => {
                totalItems = data.length; // Defina o número total de cartões

                const itemsToDisplay = data.slice(currentItemsDisplayed, currentItemsDisplayed + itemsPerPage);

                if (itemsToDisplay.length === 0) {
                    loadMoreButton.style.display = "none"; // Oculte o botão "Ver Mais" quando todos os cartões forem carregados
                }

                let cardsHTML = '';

                itemsToDisplay.forEach(car => {
                    cardsHTML += `
                                    <div class="col-md-3 test1">
                                        <a href="interno.html?id=${car.id}&imgurl=${car.imgurl}&name=${car.name}&description=${car.descricao}" class="deco">
                                            <div class="square-image">
                                                <img src="${car.imgurl}" alt="${car.name}" class="img-fluid rounded">
                                            </div>
                                            <p class="text tt1"><strong>${car.name}</strong></p>
                                        </a>
                                    </div>
                                `;
                });

                carList.innerHTML += cardsHTML;
                currentItemsDisplayed += itemsToDisplay.length;
                currentPage++;
            })
            .catch(error => console.error(error));
    }

    loadMoreButton.addEventListener("click", () => {
        fetchItems();
    });

    // Carregue os primeiros cartões iniciais
    fetchItems();



});
