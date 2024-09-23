<%-- 
    Document   : Category
    Created on : May 22, 2024, 11:26:12 AM
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
    <link rel="stylesheet" href="/Store/css/Category.css" />
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
      <section class="category">
        <div class="container">
          <div class="category-top">
            <c:set var="currentURL" value="${pageContext.request.requestURL.toString()}?${pageContext.request.queryString}" />
            <c:set var="cidParam" value="${param.cid}" />
                <c:choose>
                    <c:when test="${cidParam == 1}">
                        <p>Trang chủ</p> <span>&#8594; </span> <p>Sản phẩm</p> <span>&#8594;</span> <p>Nike</p>
                    </c:when>
                    <c:when test="${cidParam == 2}">
                        <p>Trang chủ</p> <span>&#8594; </span> <p>Sản phẩm</p> <span>&#8594;</span> <p>Adidas</p>
                    </c:when>
                    <c:otherwise>
                        <p>Trang chủ</p> <span>&#8594; </span> <p>Sản phẩm</p> <span>&#8594;</span> <p>Converse</p>
                    </c:otherwise>
                </c:choose>
          </div>
        </div>

        <div class="container">
          <div class="row">
            <div class="category-left">
              <ul class="subnav-menu">
                <li class="category-left-li"><a href="">NAM</a>
                    
                    <c:set var="currentURL" value="${pageContext.request.requestURL.toString()}?${pageContext.request.queryString}" />
                    <c:set var="cidParam" value="${param.cid}" />
                    
                    <c:choose>
                        <c:when test="${cidParam == 1}">
                            <ul class="subnav-menu-item">
                                <li>
                                    <a href="ProductBoyNew?LH=nam&cid=${cidParam}">Hàng nam mới về</a>
                                </li>
                                <li>
                                    <a href="Originals?LH=nam&LSP=Originals&cid=${cidParam}">Originals</a>
                                </li>
                                <li>
                                    <a href="BongDa?LH=nam&LSP=Bóng Đá&cid=${cidParam}">Bóng đá</a>
                                </li>
                                <li>
                                    <a href="ChayBo?LH=nam&LSP=Chạy&cid=${cidParam}">Chạy bộ</a>
                                </li>
                            </ul>
                        </c:when>
                            
                        <c:when test="${cidParam == 2}">
                            <ul class="subnav-menu-item">
                                <li>
                                    <a href="ProductBoyNew?LH=nam&cid=${cidParam}">Hàng nam mới về</a>
                                </li>
                                <li>
                                    <a href="Originals?LH=nam&LSP=Originals&cid=${cidParam}">Originals</a>
                                </li>
                                <li>
                                    <a href="BongDa?LH=nam&LSP=Bóng Đá&cid=${cidParam}">Bóng đá</a>
                                </li>
                                <li>
                                    <a href="ChayBo?LH=nam&LSP=Chạy&cid=${cidParam}">Chạy bộ</a>
                                </li>
                            </ul>
                        </c:when>
                        
                        <c:when test="${cidParam == 3}">
                            <ul class="subnav-menu-item">
                                <li>
                                    <a href="ProductBoyNew?LH=nam&cid=${cidParam}">Hàng nam mới về</a>
                                </li>
                                <li>
                                    <a href="Originals?LH=nam&LSP=Originals&cid=${cidParam}">Originals</a>
                                </li>
                            </ul>
                        </c:when>
                    </c:choose>

                </li>
                
                <li class="category-left-li"><a href="">NỮ</a>
                  <c:choose>
                        <c:when test="${cidParam == 1}">
                            <ul class="subnav-menu-item">
                                <li>
                                    <a href="ProductGirlNew?LH=Nữ&cid=${cidParam}">Hàng nữ mới về</a>
                                </li>
                                <li>
                                    <a href="OriginalsGirl?LH=Nữ&LSP=Originals&cid=${cidParam}">Originals</a>
                                </li>
                                <li>
                                    <a href="ChayBoGirl?LH=Nữ&LSP=Chạy&cid=${cidParam}">Chạy bộ</a>
                                </li>
                            </ul>
                        </c:when>
                        
                        <c:when test="${cidParam == 2}">
                            <ul class="subnav-menu-item">
                                <li>
                                    <a href="ProductGirlNew?LH=Nữ&cid=${cidParam}">Hàng nữ mới về</a>
                                </li>
                                <li>
                                    <a href="OriginalsGirl?LH=Nữ&LSP=Originals&cid=${cidParam}">Originals</a>
                                </li>
                                <li>
                                    <a href="ChayBoGirl?LH=Nữ&LSP=Chạy&cid=${cidParam}">Chạy bộ</a>
                                </li>
                            </ul>
                        </c:when>
                        
                        <c:otherwise>
                            <ul class="subnav-menu-item">
                                <li>
                                    <a href="ProductGirlNew?LH=Nữ&cid=${cidParam}">Hàng nữ mới về</a>
                                </li>
                                <li>
                                    <a href="OriginalsGirl?LH=Nữ&LSP=Originals&cid=${cidParam}">Originals</a>
                                </li>
                            </ul>
                        </c:otherwise>
                    </c:choose>
                </li>
                <li class="category-left-li"><a href="">BỘ SƯU TẬP</a></li>
              </ul>
            </div>

            <div class="category-right row">
              <div class="category-right-top-item">
                <p>Hàng mới về</p>
              </div>

<!--              <div class="category-right-top-item">
                <button><span>Bộ lọc</span> <i class="fa-solid fa-caret-down"></i></button>
              </div>-->

              <div class="category-right-top-item">
                <select name="" id="">
                  <option value="#">Sắp xếp</option>
                  <option value="#">Giá: Thấp đến cao</option>
                  <option value="#">Giá: Cao đến thấp</option>
                </select>
              </div>


              <div class="category-right-content row">   
                <c:forEach items="${ProductBycateID}" var="o">
                    <div class="category-right-content-item">
                        <a href="Details?pid=${o.id}"><img style="" src="${o.image}" alt=""></a>      <!--Lấy cái pid của sản phẩm-->
                        <h1>${o.name}</h1>
                        <h4>${o.loaiHang} ${o.loaiSP}</h4>
                        <p>${o.giaSP}<sup>đ</sup></p>
                    </div>
                </c:forEach>
              </div>
              <div class="category-right-bottom row">
                <div class="category-right-bottom-item">
                  <p><span><i><i class="fa-solid fa-angles-left"></i></i> 1 2 3 4 5 <i><i class="fa-solid fa-angles-right"></i></i></span> <span>Trang cuối</span></p>
                </div>
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
