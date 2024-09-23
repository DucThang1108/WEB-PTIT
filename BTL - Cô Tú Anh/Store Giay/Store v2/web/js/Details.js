/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
const mota = document.querySelector(".mota");
const chitiet = document.querySelector(".chitiet");
const productContent1 = document.querySelector(".product-left-bottom-content1");
const productContent = document.querySelector(".product-left-bottom-content");
const content_right = document.querySelector(
  ".product-left-bottom-content1-right img"
);
if (mota) {
  mota.addEventListener("click", function () {
    this.classList.toggle("open");
    if (this.classList.contains("open")) {
      const icon = this.querySelector("i");
      icon.innerHTML = '<i class="fa-solid fa-angle-up"></i>';

      productContent1.style.display = "block";
      productContent1.style.display = "flex";
    } else {
      const icon = this.querySelector("i");
      icon.innerHTML = '<i class="fa-solid fa-angle-down"></i>';

      productContent1.style.display = "none";
    }
  });
}

if (chitiet) {
  chitiet.addEventListener("click", function () {
    this.classList.toggle("open");
    if (this.classList.contains("open")) {
      const icon = this.querySelector("i");
      icon.innerHTML = '<i class="fa-solid fa-angle-up"></i>';

      productContent.style.display = "block";
      productContent.style.display = "flex";
    } else {
      const icon = this.querySelector("i");
      icon.innerHTML = '<i class="fa-solid fa-angle-down"></i>';

      productContent.style.display = "none";
    }
  });
}

// Size

// document.addEventListener("DOMContentLoaded", function () {
//   const labels = document.querySelector(".lable-size-item");
//   const size = document.querySelector(".lable-size");

//   if (labels) {
//     labels.addEventListener("click", function () {
//       this.classList.toggle("opensize");
//       if (this.classList.contains("opensize")) {
//         size.style.backgroundColor = "black";
//       } else {
//         size.style.backgroundColor = "white";
//       }
//     });
//   }
// });

document.addEventListener("DOMContentLoaded", function () {
  const size = document.querySelectorAll(
    ".product-right-item-size .lable-size"
  );

  if (size) {
    size.forEach((button) => {
      button.addEventListener("click", function () {
        // Loại bỏ lớp size-open từ tất cả các nút kích cỡ
        size.forEach((btn) => {
          btn.classList.remove("size-open");
          btn.style.backgroundColor = ""; // Đặt màu nền về mặc định
        });

        // Thêm hoặc loại bỏ lớp size-open từ nút được click
        this.classList.toggle("size-open");

        if (this.classList.contains("size-open")) {
          this.style.backgroundColor = "black";
        } else {
          this.style.backgroundColor = "";
        }
      });
    });
  }
});


