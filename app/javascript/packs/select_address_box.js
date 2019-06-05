const addButtonToAddress = () => {
  const box = document.querySelectorAll(".form-check")
  box.forEach ((box) => {
    box.insertAdjacentHTML("beforeend", '<div></div><span class="form-btn select-existing-address-btn">Select this address</span>')
  });
}

export {addButtonToAddress}
