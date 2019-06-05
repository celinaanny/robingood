const addressSelect = () => {
  const address = document.querySelectorAll(".select-address-btn");
  address.forEach ((address) => {
    address.addEventListener ("click", (event) => {
      event.target.parentElement.classList.toggle("address-box-active");
      event.target.innerHTML = "<strong>Unselect this address</strong>";
      event.target.parentElement.setAttribute("active", "yes");
    })
  })
}

  // const address = document.querySelectorAll(".select-address-btn");
  // address.forEach ((btn) => {
  //   btn.addEventListener("click", (event) => {
  //       event.target.parentElement.setAttribute("active", "yes");
  //       event.target.parentElement.setAttribute("style", "box-shadow: 0 0 15px rgba(0,0,0,0.4)");
  //   });
  // });

// const addressUnselect = () => {
//   const address = document.querySelectorAll(".select-address-btn");
//      address.forEach ((btn) => {
//       if (btn.parentElement.getAttribute("active") === "yes") {
//         btn.addEventListener("click", (event) => {
//             event.target.parentElement.setAttribute("style", "");
//             event.target.innerHTML = "<strong>Select this address</strong>";
//         });
//       }
//     });
// };

export { addressSelect };
