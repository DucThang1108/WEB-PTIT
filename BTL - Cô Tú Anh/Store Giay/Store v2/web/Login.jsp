<%-- 
    Document   : Login
    Created on : Apr 12, 2024, 5:32:51 PM
    Author     : LE VIET TRUNG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP TRung</title>
    </head>
    <body>
        <h1>Login Trung</h1>
        <form action="Logincontrol" method="post">
            acction="" là tên của phần control
            Username: <input type="text" name="Username"/><br>
            Password: <input type="text" name="Password"/><br>
            <input type="submit" value="login"/>
        </form>
    </body>
</html>-->

<!DOCTYPE html>
<html lang="vi">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="text/html; charset=UTF-8">
    <title>TTBD - Shop</title>
    <link rel="stylesheet" href="/Store/css/login.css" />
    <link rel="icon" href="Store/css/img/Shoes.png" />
    <link
      rel="stylesheet"
      href="/Store/fonts/fontawesome-free-6.5.1-web/fontawesome-free-6.5.1-web/css/all.css"
    />
    
    <style>
        #error-message {
            color: yellow; /* Màu chữ đỏ */
            margin-top: 20px;
            font-size: 14px;
            font-weight: 600;
        }
    </style>
  </head>

  <body>
    
    <div class="wrapper">
      <form action="Logincontrol" method="post">          <!-- Thêm đường dẫn đến Servlet*/ -->
        <h1>Đăng nhập</h1>
        <p style="margin-top: 13px; color: yellow; font-weight: 600">${success}</p>
        <div class="input-box">
            <input type="text" name="Username" value="${username}" placeholder="Username" required />
          <i class="fa-solid fa-user"></i>
        </div>     

        <div class="input-box">
            <input type="password" name="Password" value="${password}" class="pass" placeholder="Password" required />

          <i class="eye"><i class="fa-solid fa-eye-slash"></i></i>

          <i class="fa-solid fa-lock"></i>
        </div>
        <div class="remember-forgot">
          <label><input type="checkbox" />Ghi nhớ đăng nhập</label>
          <a href="">Quên mật khẩu?</a>
        </div>
        <button type="submit" class="btn">Đăng nhập</button>
<!--            <input type="submit" value="login"/>-->

        <div id="error-message">
            <% if (request.getAttribute("error") != null) { %>
                <p><%= request.getAttribute("error") %></p>
            <% } %>
        </div>
        
    
        <div class="register-link">
          <p>
            Bạn chưa có tài khoản?
            <a href="/Store/Register.jsp"> Đăng ký</a>
          </p>
        </div>

<!--        <div class="connect">
          <a href="https://www.facebook.com/"
            ><i><i class="fa-brands fa-square-facebook"></i></i>
            <p>facebook</p>
          </a>
          <a href="https://myaccount.google.com/?hl=vi"
            ><i
              ><i style="color: blueviolet" class="fa-brands fa-google"></i
            ></i>
            <p>Google</p>
          </a>
        </div>-->
      </form>
    </div>
  </body>
  <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
  <script src="/Store/js/login.js"></script>
</html>

