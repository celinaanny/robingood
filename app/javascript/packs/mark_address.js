const addressSelectStyle = () => {
  const address = document.querySelectorAll(".select-address-btn");
  address.forEach ((btn) => {
    btn.addEventListener ("click", (event) => {
      event.target.parentElement.classList.toggle("address-box-active");
    })
  })
}


  // const address = document.querySelectorAll(".select-address-btn");
  // address.forEach ((btn) => {
  //   btn.addEventListener("click", (event) => {
  //       event.target.parentElement.setAttribute("active", "yes");
  //       event.target.parentElement.setAttribute("style", "box-shadow: 0 0 15px rgba(0,0,0,0.4)");
  //       event.target.innerHTML = "<strong>Unselect this address</strong>";
  //   });
  // });

// const addressUnselect = () => {
//   const address = document.querySelectorAll(".select-address-btn");
//      address.forEach ((btn) => {
//       if (btn.parentElement.getAttribute("active") === "yes") {
//         btn.addEventListener("click", (event) => {
//             event.target.parentElement.setAttribute("style", "");
//             event.target.parentElement.setAttribute("active", "no");
//             event.target.innerHTML = "<strong>Select this address</strong>";
//         });
//       }
//     });
// };

export {addressSelectStyle}
