function init_notification() {
  const bullseye = document.querySelector('.fa-bullseye');
  const bell = document.querySelector('.fa-bell');
  if (bell) {
    bell.addEventListener("click", () => {
        bullseye.classList.add("hidden");
    });
  }
}

export { init_notification };
