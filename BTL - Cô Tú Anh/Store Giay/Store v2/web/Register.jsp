<%-- 
    Document   : Register
    Created on : Apr 13, 2024, 2:08:13 AM
    Author     : LE VIET TRUNG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>TTBD - Shop</title>
    <link rel="stylesheet" href="/Store/css/Register.css" />
<!--    <link rel="icon" href="assets/css/img/Shoes.png" />-->
    <link
      rel="stylesheet"
      href="/Store/fonts/fontawesome-free-6.5.1-web/fontawesome-free-6.5.1-web/css/all.css"
    />
  </head>
  <body>
    <div class="wrapper">
        <form action="registercontrol" method="post">               <!-- Thêm đường dẫn đến Servlet*/ -->
        <h4>chào mừng bạn đến với BDTT - Shop</h4>
        <h1>Đăng ký</h1>
        <p style="margin-top: 13px; color: yellow; font-weight: 600">${erro}</p>
        <div class="input-box">
            <input type="text" name="user" placeholder="Username" required />               <!--  -->
        </div>

        <div class="input-box">
            <input type="text" name="SDT" placeholder="Số điện thoại" />
        </div>

        <div class="input-box">
            <input type="text" name="eml" placeholder="Địa chỉ Email" />
        </div>

        <div class="input-box">
            <input type="password" name="pass" placeholder="Password" />
        </div>

        <button type="submit" class="btn">Đăng ký</button>

        <div class="login-link">
          <p>
            Bạn đã có tài khoản?
            <a href="/Store/Login.jsp"> Đăng nhập</a>
          </p>
        </div>

<!--        <div class="connect">
          <a href="https://www.facebook.com/"
            ><i><i class="fa-brands fa-square-facebook"></i></i>
            <p>facebook</p>
          </a>
          <a href="https://myaccount.google.com/?hl=vi"
            ><i><i class="fa-brands fa-google"></i></i>
            <p>Google</p>
          </a>
        </div>-->
      </form>
    </div>
  </body>
</html>

