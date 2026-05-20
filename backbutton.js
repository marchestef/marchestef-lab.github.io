function isHomePage() {
  const path = window.location.pathname.replace(/\/$/, "");
  return path === "" || path === "/" || path.endsWith("/index.html") && path.split("/").length <= 2;
}

function createBackButton() {
  const btn = document.createElement("button");

  btn.textContent = "← Indietro";

  btn.style.cssText = `
    position: fixed;
    top: 10px;
    right: 10px;
    padding: 8px 12px;
    border: none;
    background: black;
    color: white;
    border-radius: 6px;
    cursor: pointer;
    z-index: 9999;
  `;

  btn.onclick = () => {
    history.back();
  };

  document.body.appendChild(btn);
}

document.addEventListener("DOMContentLoaded", () => {
  if (!isHomePage()) {
    createBackButton();
  }
});