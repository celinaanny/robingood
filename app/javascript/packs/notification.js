const bullseye = document.querySelector('.fa-bullseye');
const bell = document.querySelector('.fa-bell');

bell.addEventListener("click", (event) => {
    bullseye.classList.add("hidden");
});


