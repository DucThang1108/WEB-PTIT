/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


window.onload = function () {
  loadHTMLPart("/HTML/header-home.html", "header");
  loadHTMLPart("/HTML/app-container.html", "app-container");
  loadHTMLPart("/HTML/footer.html", "footer");

  // Khởi chạy slider sau khi các phần HTML được tải
  setTimeout(initializeSlider, 1000); // Đợi một chút để đảm bảo HTML đã được tải
};

function loadHTMLPart(url, targetId) {
  fetch(url)
    .then((response) => {
      if (!response.ok) {
        throw new Error("Network response was not ok");
      }
      return response.text();
    })
    .then((html) => {
      document.getElementById(targetId).innerHTML = html;
    })
    .catch((error) => {
      console.error("There was a problem loading the HTML:", error);
      // Thêm các xử lý khác ở đây nếu cần
    });
}
/* Run Slider */
function initializeSlider() {
  const imgs = document.querySelector("#imgs");
  const img = document.querySelectorAll("#imgs img");
  const root = document.documentElement;
  let rootStyles = getComputedStyle(root);
  let widthImg = rootStyles.getPropertyValue("--width_img").trim();

  let idx = 0;
  let interval = setInterval(run, 2000);

  function run() {
    idx++;
    changeImage();
  }

  function changeImage() {
    if (idx > img.length - 1) {
      idx = 0;
    } else if (idx < 0) {
      idx = img.length - 1;
    }

    imgs.style.transform = `translateX(${-idx * parseInt(widthImg)}px)`;
  }

  function resetInterval() {
    clearInterval(interval);
    interval = setInterval(run, 2000);
  }

  window.addEventListener("resize", () => {
    rootStyles = getComputedStyle(root);
    widthImg = rootStyles.getPropertyValue("--width_img").trim();
    changeImage();
  });
}

/* NAVBAR MOBILE */

