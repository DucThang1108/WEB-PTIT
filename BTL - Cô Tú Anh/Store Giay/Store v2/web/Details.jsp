<%-- 
    Document   : Details
    Created on : May 25, 2024, 2:42:07 PM
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
    <link rel="stylesheet" href="/Store/css/Details.css" />
    <!-- <link rel="icon" href="assets/css/img/Shoes.png" /> -->
    <link
      rel="stylesheet"
      href="/Store/fonts/fontawesome-free-6.5.1-web/fontawesome-free-6.5.1-web/css/all.min.css"
    />
  </head>

  <body>
    <div id="main">
      <div id="header" style="background-color: white">
        <div id="logo">
          <a href="#"><img src="/Store/img/Home/logo2.png" /></a>
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
        <form action="Search" method="post">
            <ul id="search">
                <li>
                    <input style="width: 200px" placeholder="Tìm kiếm" value="${txtS}" name="txt" type="text" /><button class="btn-search" style="color: black; margin-top: 20px; background-color: white; border: none"><i class="fa-solid fa-magnifying-glass"></i></button>                
                </li>
            </ul>
        </form>
        
        <c:if test="${sessionScope.acc != null}">
            <div class="Hello" style="padding: 0; margin-top: 22px">
                <P style="font-weight: 600">Hello ${sessionScope.acc.username}!</P>
            </div>
        </c:if>        
        <ul id="login">
          <a href="#"><i class="fa-solid fa-cart-plus"></i></a>
          <i><i class="fa-solid fa-user-large"></i></i>
          <li><a href="/Store/Home">Đăng Xuất</a></li>
        </ul>
      </div>
<!-- --------------------------------------------------Details-------------------------------------------------------- -->
      <section class="product">
          <div class="container">
            <div class="product-top">
              <p>Trang chủ</p> <span>&#8594; </span> <p>${detail.loaiHang}</p> <span>&#8594; </span> <p>${detail.name}</p>
            </div>
          </div>
          <div class="container">
            <div class="product-left">
              <div class="product-left-category">
                <div class="product-left-item">
                  <a href=""><img src="${detail.image}"></a>
                </div>

                <div class="product-left-item">
                  <a href=""><img src="${detail.image}"></a>
                </div>

                <div class="product-left-item">
                  <a href=""><img src="${detail.image}"></a>
                </div>

                <div class="product-left-item" id="relative">
                  <a href=""><img src="${detail.image}"></a>
                </div>
              </div>

              <div class="product-left-bottom">
                <div class="product-left-bottom-header">
                  <div class="product-left-bottom-top mota">
                    <h3>Mô tả</h3>
                    <i><i class="fa-solid fa-angle-down"></i></i>
                  </div>

                  <div class="product-left-bottom-content1">
                    <div class="product-left-bottom-content1-left">
                      <h2>${detail.name}</h2><br>
                      <p>${detail.description}</p>
                    </div>

                    <div class="product-left-bottom-content1-right">
                      <img src="${detail.image}" alt="">
                    </div>
                  </div>
                </div>

                <div class="product-left-bottom-header">
                  <div class="product-left-bottom-top chitiet">
                    <h3>Thông tin chi tiết</h3>
                    <i><i class="fa-solid fa-angle-down"></i></i>
                  </div>

                  <div class="product-left-bottom-content">
                    <div class="product-left-bottom-content-left">
                      <li>Dáng regular fit</li>
                      <li>Có dây giày</li>
                      <li>Thân giày ${detail.name}</li>
                      <li>Lớp đệm Lightstrike</li>
                    </div>

                    <div class="product-left-bottom-content-right">
                      <li>Đế ngoài bằng cao su phù hợp với sân cỏ nhân tạo</li>
                      <li>Có chứa tối thiểu 20% thành phần tái chế</li>
                      <li>Màu sản phẩm: ${detail.mau}</li>
                      <li>Mã sản phẩm: ${detail.id}</li>
                    </div>
                  </div>
                </div>

                <div class="product-left-bottom-header">
                  <div class="product-left-bottom-top chitiet">
                  </div>
                </div>
              </div>

              <script src="/Store/js/Details.js"></script>
            </div>

            <div class="product-right">
              <div class="product-right-sticky">
                <div class="product-right-item1">
                  <h4>${detail.loaiHang} ${detail.loaiSP}</h4>
                  <h1>${detail.name}</h1>
                  <p>${detail.giaSP}<sup>đ</sup></p>
                </div>

                <div class="product-right-item2">
                  <div class="product-right-item-header">
                    <h2>Màu sắc</h2>
                  </div>
                  
                  <div class="product-right-color-item2">
                    <div class="product-right-color-img"> 
                      <p>${detail.mau}</p>
                    </div>
                  </div>
                </div>

                <div class="product-right-item3">
                  <div class="product-right-item-header">
                    <h2>Kích cỡ</h2>
                  </div>

                  <div class="product-right-item-size">
                    <button class="lable-size">
                      <span>${detail.size}</span>
                    </button>
                  </div>

                  <div class="product-right-quantity">
                    <p style="font-weight: bold;">Số lượng:</p>
                    <input type="number" min="0" value="1" max="4">
                  </div>

                  <div class="product-right-cart">
                    <a href="#"><button><i class="fa-solid fa-cart-arrow-down"></i> Thêm vào giỏ hàng</button></a>
                    <a href="#"><button><i class="fa-solid fa-cart-shopping"></i> Mua Hàng</button></a>
                  </div>

                  <div class="product-right-icon">
                    <div class="product-right-icon-item">
                      <a href=""><i class="fa-solid fa-phone"></i> <P>Hotline</P></a>
                    </div>

                    <div class="product-right-icon-item">
                      <a href=""><i class="fa-regular fa-comments"></i> <P>Chat</P></a>
                    </div>

                    <div class="product-right-icon-item">
                      <a href=""><i class="fa-regular fa-envelope"></i> <P>Mail</P></a>
                    </div>
                  </div>

                  <div class="product-right-QR">
                    <img src="/assets/css/img/product_Adidas/TURF X CRAZYFAST ELITE/QR.png" alt="">
                  </div>
                </div>
              </div>

            </div>
          </div>
        </section>

                    
        <section class="product-bottom-related">
          <div class="product-bottom-related-header">
            <p>Sản phẩm mới</p>
          </div>

          <div class="product-bottom-related-content">
              
            <c:forEach items="${listP5}" var="o">
                <div class="product-bottom-related-content-item">
                  <a href="Details?pid=${o.id}"><img src="${o.image}" alt=""></a>
                  <h1>${o.name}</h1>
                  <h4>${o.loaiHang} ${o.loaiSP}</h4>
                  <p>${o.giaSP}<sup>đ</sup></p>
                </div>
            </c:forEach>

          </div>
        </section>
                    
                    
<!-- -----------------------------------------------------footer------------------------------------------- -->
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