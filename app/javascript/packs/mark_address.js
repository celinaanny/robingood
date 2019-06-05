const addClassToAddressBox = () => {
  const existingAddressBox = document.querySelectorAll(".form-check")
  existingAddressBox.forEach ((box) => {
    box.classList.add("user-address-box");
  });
};

const addressSelect = () => {
  const addresses = document.querySelectorAll(".select-existing-address-btn");
  addresses.forEach ((address) => {
    address.addEventListener ("click", (event) => {
      document.querySelectorAll(".user-address-box").forEach ((box) => {
        // checkbox.setAttribute("active", "no");
        box.classList.remove("address-box-active")
      });
      document.querySelectorAll(".select-existing-address-btn").forEach ((button) => {
        button.innerHTML = "Select this address";
      });
      event.currentTarget.parentElement.classList.add("address-box-active");
      event.currentTarget.innerHTML = "<strong>Selected</strong>";
      event.currentTarget.parentElement.firstChild.click();
    });
  })
}

export { addClassToAddressBox };
export { addressSelect };
