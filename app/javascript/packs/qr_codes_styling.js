
const addAttributesToRect = () => {
  const rect = document.querySelectorAll("rect");
  rect.forEach ((f) => {
    f.setAttribute("style", "fill: green");
  });
};

export { addAttributesToRect }
