const addButtonToAddress = () => {
  const box = document.querySelectorAll(".form-check")
  box.forEach ((box) => {
    box.insertAdjacentHTML("beforeend", '<br><span class="form-btn select-existing-address-btn">"Select this item"</span>')
  });
}

export {addButtonToAddress}
