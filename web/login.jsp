<%-- 
    Document   : login
    Created on : Sep 29, 2022, 11:16:29 PM
    Author     : SE151471 Hoang Minh Tuan>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Chính Sách</title>
    <!-- CSS -->
    <link rel="stylesheet" href="./Css/StyleGioiThieu.css" />
    <link rel="stylesheet" href="./Css/Style.css" />
    <link rel="stylesheet" href="./Css/StyleSanPham.css" />
    <link rel="stylesheet" href="./Css/StyleChinhSach.css" />
    
    <link rel="stylesheet" href="Css/StyleLogin.css" />
    <!-- FONT -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Dancing+Script&family=IBM+Plex+Serif:wght@400;500;600&family=Raleway&display=swap"
      rel="stylesheet"
    />
    <!-- FONT AWSOME -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
      integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <!-- OWl-Carousel -->
    <link
      rel="stylesheet"
      href="./OwlCarousel2-2.3.4/dist/assets/owl.carousel.min.css"
    />
    <link
      rel="stylesheet"
      href="OwlCarousel2-2.3.4/dist/assets/owl.theme.default.min.css"
    />
  </head>
  <body>
    <header>
      <div class="header_container">
        <div class="header_content">
          <ul>
            <li>
              <a href="./index.jsp"> Trang Chủ </a>
            </li>
            <li>
              <a href="./gioithieu.jsp"> Giới Thiệu </a>
            </li>
            <li>
              <a href="./sanpham.jsp"> Sản Phẩm </a>
            </li>
            <li>
              <a href="./index.jsp"> <img src="./Image/Logo.png" alt="" /> </a>
            </li>
            <li>
              <a href="./tintuc.jsp"> Tin Tức </a>
            </li>
            <li class="active">
              <a href="./chinhsach.jsp"> Chính Sách </a>
            </li>
            <li>
              <a href="./lienhe.jsp"> Liên Hệ </a>
            </li>
            <li>
              <a href="#"> <i class="fa fa-shopping-cart"></i> </a>
            </li>
            <li>
              <a href="#"> <i class="fa fa-user"></i> </a>
            </li>
          </ul>
        </div>
      </div>
    </header>
<div class="login">
      <div class="login_content">
          <h1>Đăng Nhập</h1>
<form action="MainController" method="POST">
    <h3>Email</h3>
    <div class="form-outline mb-4">
        <input name="email" type="email"  class="form-control" />
        <label class="form-label" for="form2Example1">Email address</label>
    </div>
    <div class="form-outline mb-4">
        <input name="password" type="password" id="form2Example2" class="form-control" />
        <label class="form-label" for="form2Example2">Password</label>
    </div>
    <!-- 2 column grid layout for inline styling -->
    <div class="row mb-4">
        <div class="col d-flex justify-content-center">
            <!-- Checkbox -->
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="form2Example31" checked />
                <label class="form-check-label" for="form2Example31"> Remember me </label>
            </div>
        </div>

        <div class="col">
            <!-- Simple link -->
            <a href="#!">Forgot password?</a>
        </div>
    </div>

    <!-- Submit button -->
<!--    <button type="button" name="action" value="login" class="btn btn-primary btn-block mb-4">Sign in</button>-->
   <input type="submit" name="action" value="login"/>

    <!-- Register buttons -->
    <div class="text-center">
        <p>Not a member? <a href="#!">Register</a></p>
        <p>or sign up with:</p>
        <button type="button"  class="btn btn-link btn-floating mx-1">
            <i class="fab fa-facebook-f"></i>
        </button>

        <button type="button" class="btn btn-link btn-floating mx-1">
            <i class="fab fa-google"></i>
        </button>


    </div>
    <h2
            style="
              color: red;
              font-size: 15px;
              font-family: 'IBM Plex Serif', serif;
            "
          >
            ${requestScope.ERROR}
          </h2>
</form>
          </div>
    </div>
      <div class="login">
      <div class="login_content">
        <h1>Đăng Nhập</h1>
        <form action="MainController" method="POST">
          <h3>Email</h3>
          <input
            type="email"
            name="email"
            placeholder="Email"
            required=""
          />
          <br />
          <h3>Password</h3>
          <input
            type="password"
            name="password"
            placeholder="Password"
            required=""
          />
          <br />
          <div class="submit">
            <input type="submit" name="action" value="login" />
            <input type="reset" value="reset" />
          </div>
          <div>
            <a href="signUpPage.jsp">
              Don't Have Account! Let Sign Up To My Shop
              <i class=""></i
            ></a>
<!--               <p>or sign up with:</p>
        <button type="button"  class="btn btn-link btn-floating mx-1">
            <i class="fab fa-facebook-f"></i>
        </button>

        <button type="button" class="btn btn-link btn-floating mx-1">
            <i class="fab fa-google"></i>
        </button>-->
          </div>
         
          <h2
            style="
              color: red;
              font-size: 15px;
              font-family: 'IBM Plex Serif', serif;
            "
          >
            ${requestScope.ERROR}
          </h2>
        </form>
      </div>
    </div>
<%
//            String error =(String)request.getAttribute("ERROR");
//            if(error == null) error="";
//            
            %>
<!--            <h1><%= error%></h1>-->




</body>
<footer>
      <div class="footer_container">
        <div class="footer_title">
          <ul>
            <li>
              <img src="./Image/divider-left-1.png" alt="" />
            </li>
            <li>
              <img style="max-width: 100px" src="./Image/Logo.png" alt="" />
            </li>
            <li>
              <img src="./Image/divider-right-1.png" alt="" />
            </li>
          </ul>
        </div>
        <div class="footer_content">
          <ul class="ul_icon">
            <li>
              <h1>FOLLOW US ON</h1>
            </li>
            <li>
              <a href="#">
                <i class="fab fa-facebook"></i>
              </a>
            </li>
            <li>
              <a href="#">
                <i class="fab fa-twitter"></i>
              </a>
            </li>
            <li>
              <a href="#">
                <i class="fab fa-google"></i>
              </a>
            </li>
          </ul>
          <ul class="ul_contact">
            <li><h1>CONTACT US</h1></li>
            <li>ADRESS: <span>Ho Chi Minh</span></li>
            <li>PHONE: <span>09666666</span></li>
            <li>EMAIL: <span>Songan@gmail.com</span></li>
          </ul>
          <ul class="ul_page">
            <li><h1>Điều Hướng</h1></li>
            <li><a href="./index.html">Trang Chủ</a></li>
            <li><a href="./GioiThieu.html">Giới thiệu</a></li>
            <li><a href="./SanPham.html">S?n Ph?m</a></li>
            <li><a href="./TinTuc.html">Tin T?c</a></li>
            <li><a href="./ChinhSach.html">Chính Sách</a></li>
            <li><a href="./LienHe.html">Liên H?</a></li>
          </ul>
        </div>
      </div>
    </footer>
<!-- jquery -->
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"
      integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    ></script>
    <!-- OWL-Carousel -->
    <script>
      $(document).ready(function () {
        $(".owl-carousel").owlCarousel({
          loop: true,
          margin: 80,
          nav: true,
          responsive: {
            0: {
              items: 1,
            },
            600: {
              items: 2,
            },
            1000: {
              items: 4,
            },
          },
        });
      });
    </script>
    <script src="./OwlCarousel2-2.3.4/docs/assets/vendors/jquery.min.js"></script>
    <script src="./OwlCarousel2-2.3.4/dist/owl.carousel.min.js"></script>
  </body>
</html>

