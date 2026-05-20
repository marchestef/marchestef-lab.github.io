(function () {

  function isHomePage() {
    const path = window.location.pathname.toLowerCase();

    return (
      path === "/" ||
      path.endsWith("/index.html") &&
      path.split("/").filter(Boolean).length <= 1
    );
  }

  function createBackButton() {

    const btn = document.createElement("button");

    btn.innerHTML = "←";
    btn.className = "back-button";

    btn.onclick = () => history.back();

    document.body.appendChild(btn);
  }

  document.addEventListener("DOMContentLoaded", () => {
    if (!isHomePage()) {
      createBackButton();
    }
  });

})();