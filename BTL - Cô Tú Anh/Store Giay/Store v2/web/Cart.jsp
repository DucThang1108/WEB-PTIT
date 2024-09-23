<%-- 
    Document   : Cart.jsp
    Created on : May 25, 2024, 8:20:02 PM
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
    <link rel="stylesheet" href="/Store/css/Cart.css" />
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
                
      <!-- ----------------------------------Category-------------------------------- -->
      
        <section class="cart">
            <div class="containern">
                <div class="cart-top-wrap">
                    <div class="cart-top">
                        <div class="cart-top-item1 cart-top-radius">
                            <i class="fa-solid fa-cart-shopping "></i>
                        </div>

                        <div class="cart-top-item2 cart-top-radius">
                            <i class="fa-solid fa-location-dot "></i>
                        </div>  

                        <div class="cart-top-item3 cart-top-radius">
                            <i class="fa-regular fa-credit-card "></i>
                        </div>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="cart-content">
                    <div class="cart-content-left">
                        <table>
                            <thead>
                                <tr>
                                    <th>Sản phẩm</th>
                                    <th>Tên sản phẩm</th>
                                    <th>Màu</th>
                                    <th>Size</th>
                                    <th>Số lượng</th>
                                    <th>Thành tiền</th>
                                    <th>Xóa</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><img src="/assets/css/img/adidas/sp20.png" alt=""></td>
                                    <td><p>GIÀY ĐÁ BÓNG TURF X CRAZYFAST ELITE</p></td>
                                    <td><p>Cam</p></td>
                                    <td><p>40</p></td>
                                    <td><input type="number" value="1" min="1"></td>
                                    <td><p>3.500.000<sup>đ</sup></p></td>
                                    <td><span class="remove-item">X</span></td>
                                </tr>

                                <tr>
                                    <td><img src="/assets/css/img/adidas/sp20.png" alt=""></td>
                                    <td><p>GIÀY ĐÁ BÓNG TURF X CRAZYFAST ELITE</p></td>
                                    <td><p>Cam</p></td>
                                    <td><p>40</p></td>
                                    <td><input type="number" value="1" min="1"></td>
                                    <td><p>3.500.000<sup>đ</sup></p></td>
                                    <td><span class="remove-item">X</span></td>
                                </tr>


                                <tr>
                                    <td><img src="/assets/css/img/adidas/sp20.png" alt=""></td>
                                    <td><p>GIÀY ĐÁ BÓNG TURF X CRAZYFAST ELITE</p></td>
                                    <td><p>Cam</p></td>
                                    <td><p>40</p></td>
                                    <td><input type="number" value="1" min="1"></td>
                                    <td><p>3.500.000<sup>đ</sup></p></td>
                                    <td><span class="remove-item">X</span></td>
                                </tr>

                                <tr>
                                    <td><img src="/assets/css/img/adidas/sp20.png" alt=""></td>
                                    <td><p>GIÀY ĐÁ BÓNG TURF X CRAZYFAST ELITE</p></td>
                                    <td><p>Cam</p></td>
                                    <td><p>40</p></td>
                                    <td><input type="number" value="1" min="1"></td>
                                    <td><p>3.500.000<sup>đ</sup></p></td>
                                    <td><span class="remove-item">X</span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="cart-content-right">
                        <table>
                            <thead>
                                <tr>
                                    <th colspan="2">TỔNG TIỀN GIỎ HÀNG</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Tổng sản phẩm</td>
                                    <td>1</td>
                                </tr>
                                <tr>
                                    <td>Tổng tiền hàng</td>
                                    <td><p>3.500.000<sup>đ</sup></p></td>
                                </tr>
                                <tr>
                                    <td>Tạm tính</td>
                                    <td><p style="color: black; font-weight: 600;">3.500.000<sup>đ</sup></p></td>
                                </tr>
                            </tbody>
                        </table>

                        <div class="cart-content-right-bottom">
                            <button class="continue-shopping"><p>Tiếp tục mua hàng</p></button>
                            <a href="/html-fontend/delivery/delivery.html"><button class="checkout"><p>Thanh toán</p></button></a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
      
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