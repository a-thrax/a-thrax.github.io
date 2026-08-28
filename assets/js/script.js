document.addEventListener("DOMContentLoaded", () => {
  const header = document.querySelector(".site-header");
  const menuBtn = document.getElementById("menuBtn");
  if (menuBtn && header) {
    menuBtn.addEventListener("click", () => {
      header.classList.toggle("nav-open");
    });
  }
});
