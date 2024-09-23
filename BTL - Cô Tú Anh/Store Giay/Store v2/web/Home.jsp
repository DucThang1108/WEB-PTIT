<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="vi">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>BDTT - Shop</title>
    <link rel="stylesheet" href="/Store/css/style.css" />
<!--    <link rel="stylesheet" href="/Store/css/grid.css" />-->
    
    <!-- <link rel="icon" href="assets/css/img/Shoes.png" /> -->
    <link
      rel="stylesheet"
      href="/Store/fonts/fontawesome-free-6.5.1-web/fontawesome-free-6.5.1-web/css/all.css"
    />
  </head>

  <body>
    <div id="main">
      <div id="header">
        <div id="logo">
          <a href="/Store/Home"><img src="/Store/img/Home/logo2.png" /></a>
        </div>

        <ul id="nav">
          <li><a href="">Tin Tức</a></li>
<!--          <li>
            <a href="">Sản Phẩm</a>
            <ul class="subnav">
              <li><a href="#">Nike</a></li>
              <li><a href="#">Adidas</a></li>
              <li><a href="#">Puma</a></li>
              <li><a href="#">Converse</a></li>
            </ul>
          </li>-->
          <!-- <li><a href="">Gi?i Thi?u</a></li> -->
          <li><a href="">Khuyến Mại</a></li>
        </ul>
        <ul id="search">
          <li>
            <input placeholder="Tìm kiếm" type="text" /><a href=""><i style="color: black; margin-top: 20px;" class="fa-solid fa-magnifying-glass"></i></a>
          </li>
        </ul>
        <ul id="login">
          <a href=""><i class="fa-solid fa-cart-plus"></i></a>
          <i><i class="fa-solid fa-user-large"></i></i>
          <li><a href="/Store/Login.jsp">Đăng Nhập</a></li>
          <li><a href="/Store/Register.jsp">Đăng Ký</a></li>
        </ul>
      </div>
      <!-- ----------------------------------slider-------------------------------- -->
      <section id="slider">
        <div class="container">
            <div class="image-container" id="imgs">
                <img src="/Store/img/Home/slider1.jpg" alt="first-image" />
<!--                <img src="/Store/img/Home/slider2.jpg" alt="second-image" />-->
                <img src="/Store/img/Home/slider3.jpg" alt="third-image" />
                <img src="/Store/img/Home/slider4.jpg" alt="fourth-image" />
                <img src="/Store/img/Home/slider5.jpg" alt="fifth-image" />
                <img src="/Store/img/Home/slider6.jpg" alt="sixth-image" />
                <img src="/Store/img/Home/slider7.jpg" alt="seventh-image" />
                <img src="/Store/img/Home/slider8.jpg" alt="eighth-image" />
            </div>
        </div>
      </section>
      <script src="/Store/js/Home.js"></script> 

      <div class="product">
        <div class="product-top">
          <p>Sản phẩm mới về</p>
        </div>
        <div class="row">
          <c:forEach items="${listP5}" var="o">
            <div class="product-item">
                <a href="Logincontrol"><img src="${o.image}"></a>
                <h1>${o.name}</h1>
                <h4>${o.loaiHang} ${o.loaiSP}</h4>
                <p>${o.giaSP}<sup>đ</sup></p>
            </div>
          </c:forEach>
        </div>
      </div>
<!-- ----------------------------------------------------------footer--------------------------------- -->
      <div class="footer">
        <div id="footer-top">
          <li>
            <a href=""><img src="/Store/img/Home/dathongbao.png" /></a>
          </li>
          <li><a href="">Liên Hệ</a></li>
          <li><a href="">Tuyển Dụng</a></li>
          <li><a href="">Giới Thiệu</a></li>
          <li>
            <a href="https://www.facebook.com/facebk.coder/"
              ><i><i class="fa-brands fa-facebook"></i></i
            ></a>
            <a href=""
              ><i><i class="fa-brands fa-twitter"></i></i
            ></a>
            <a href=""
              ><i><i class="fa-brands fa-instagram"></i></i
            ></a>
          </li>
        </div>
        <div id="footer-center">
          <p>
          Địa chỉ đăng ký: 181 Trần Phú, P.Văn Quán, Q.Hà Đông, TP.Hà Nội, Việt Nam - 0327950819 </br>
          Đặt hàng online : <b>0327950819</b> <b class="email">Email: viettrungjr6868@gmail.com</b>
          </p>
        </div>
        <div id="footer-bottom">
          © BDTT - Bản quyền thuộc về Công ty cổ phần thời trang BDTT
        </div>
      </div>
    </div>
  </body>
</html>
