<%-- 
    Document   : Home1
    Created on : May 22, 2024, 2:05:20 AM
    Author     : LE VIET TRUNG
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="vi">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>BDTT - Shop</title>
    <link rel="stylesheet" href="/Store/css/Home1.css" />
    <!-- <link rel="icon" href="assets/css/img/Shoes.png" /> -->
    <link
      rel="stylesheet"
      href="/Store/fonts/fontawesome-free-6.5.1-web/fontawesome-free-6.5.1-web/css/all.min.css"
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
          <li>
                <a href="#">Sản Phẩm</a>
                <ul class="subnav">
                    <c:forEach items= "${listC}" var="o">
                        <li><a href="Category?cid=${o.cid}">${o.name}</a></li>
                    </c:forEach>
                </ul>
          </li>
          <!-- <li><a href="">Gi?i Thi?u</a></li> -->
          <li><a href="">Khuyến Mại</a></li>
        </ul>
          
        <form action="Search">
            <ul id="search">
                <li>
                    <input style="width: 200px" placeholder="Tìm kiếm" value="${txtS}" name="txt" type="text" /><button class="btn-search" style="color: black; margin-top: 20px; background-color: white; border: none"><i class="fa-solid fa-magnifying-glass"></i></button>                
                </li>
            </ul>
        </form>

            <div class="Hello" style="padding: 0; margin-top: 22px">
                <P style="font-weight: 600">Hello ${sessionScope.acc.username}!</P>
            </div>

        <ul id="login">
          <a href="#"><i class="fa-solid fa-cart-plus"></i></a>
          <i><i class="fa-solid fa-user-large"></i></i>
          
          <c:if test="${sessionScope.acc.isAdmin == 1}">
            <li>
              <a href="">Manager Account</a>
            </li>
          </c:if>
          
          <c:if test="${sessionScope.acc.isSel == 1}">
            <li>
              <a href="">Manager Product</a>
            </li>
          </c:if>
          
          <c:if test="${sessionScope.acc != null}">
            <li>
              <a href="Logout">Đăng Xuất</a>
            </li>
          </c:if>
          
          <c:if test="${sessionScope.acc == null}">
            <li>
                <a href="">Đăng Nhập</a>
            </li>
          </c:if>
        </ul>
      </div>
      <!-- ----------------------------------slider-------------------------------- -->
      
      <section id="slider">
        <div id="list-img">
          <img src="/Store/img/Home/Slide9.jpg" />
        </div>
      </section>
      
      <section id="slider">
          <p style="font-weight: 600; font-size: 35px; ">Don't Miss</p>
      </section>
      
      <section id="Text">
          <p style="text-align: center; font-size: 25px; margin-top: 15px ">Tame the Terrain</p>
      </section>
      
      <section id="Text">
          <p style="text-align: center; font-weight: 600; font-size: 45px; ">NIKE ZEGAMA 2</p>
      </section>
          
          
      <section id="slider">
        <div id="list-img">
          <img src="/Store/img/Home/slider10.jpg" />
        </div>
      </section>

      <div class="product">
        <div class="product-top">
          <p>Sản phẩm mới về</p>
        </div>
        <div class="row">
          <c:forEach items="${listP5}" var="o">
            <div class="product-item">
                <a href="Details?pid=${o.id}"><img src="${o.image}"></a>
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

