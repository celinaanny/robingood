const box = document.querySelectorAll(".form-check")

const addButtonToAddress = () => {
  box.forEach ((box) => {
    box.insertAdjacentHTML("beforeend", '<span class="form-btn select-address-btn">"Select this item"</span>')
  });
}

export {addButtonToAddress}
