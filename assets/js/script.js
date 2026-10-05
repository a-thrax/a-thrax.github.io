document.addEventListener("DOMContentLoaded", () => {
  const header = document.querySelector(".site-header");
  const menuBtn = document.getElementById("menuBtn");
  if (menuBtn && header) {
    menuBtn.addEventListener("click", () => {
      header.classList.toggle("nav-open");
    });
  }

  const share = document.querySelector(".share");
  if (share) {
    const { title, url } = share.dataset;
    const nativeBtn = share.querySelector(".share-native");
    if (navigator.share) {
      nativeBtn.hidden = false;
      nativeBtn.addEventListener("click", () => {
        navigator.share({ title, url }).catch(() => {});
      });
    }
    const copyBtn = share.querySelector(".share-copy");
    copyBtn.addEventListener("click", () => {
      navigator.clipboard.writeText(url).then(() => {
        const label = copyBtn.textContent;
        copyBtn.textContent = "Αντιγράφηκε!";
        setTimeout(() => { copyBtn.textContent = label; }, 2000);
      });
    });
  }
});
