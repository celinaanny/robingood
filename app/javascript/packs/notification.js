const bullseye = document.querySelector('.fa-bullseye');
const new_finding = document.querySelector('.form-finding');

const items = [ bullseye, new_finding];

items.forEach((item) => {
  if (item !== null) {
    if (item === new_finding) {
      item.addEventListener("submit", (event) => {
      event.preventDefault();
      bullseye.classList.remove("hidden");
      });
    };
    if (item === bullseye) {
      item.addEventListener("click", (event) => {
        bullseye.classList.add("hidden");
      });
    };
  }
});
