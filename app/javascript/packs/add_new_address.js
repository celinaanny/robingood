const addNewAddress = () => {
  const newAddressBtn = document.querySelector("#new-address-btn")
  newAddressBtn.addEventListener("click", (event) => {
    const button = document.querySelector('#hidden-add-address-btn');
    button.click();
  });
};
