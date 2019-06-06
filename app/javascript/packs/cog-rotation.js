function cog_rotation() {
  const cogs = document.querySelectorAll(".fa-cog");
  if (cogs) {
    cogs.forEach((cog) => { cog.addEventListener("click", (event) => {
        event.currentTarget.classList.toggle("rotated-image");
      });
    });
  }
}

export { cog_rotation };
