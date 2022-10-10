<%-- 
    Document   : index.jsp
    Created on : Sep 29, 2022, 10:49:39 PM
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
              <a href="login_2.jsp"> <i class="fa fa-user"></i> </a>
            </li>
          </ul>
        </div>
      </div>
    </header>
    <body>
        <div class="Carousel">
            <div class="Carousel_container">
                <div class="Carousel_banner">
                    <img src="./Image/ead5c0849d9af87736495f1797195644.png" alt="" />
                </div>
            </div>
        </div>
        <div class="product">
            <div class="product_container">
                <div class="product_tittle">
                    <h1>Sản Phẩm</h1>
                    <ul>
                        <li>
                            <img src="./Image/divider-left-1.png" alt="" />
                        </li>
                        <li>
                            <h3>Nổi Bật</h3>
                        </li>
                        <li>
                            <img src="./Image/divider-right-1.png" alt="" />
                        </li>
                    </ul>
                </div>
                <div class="product_content">
                    <div class="owl-carousel owl-theme">
                        <div class="product_item">
                            <a href="#"
                               ><img
                                    src="./Image/50G_tinhchethuonghang_ver2_tmdt-min.png-1-300x300.jpg"
                                    alt=""
                                    />
                                <h3>
                                    Tổ Yến Sào Tinh Chế Thượng Hạng  <br />
                                    Song Ân Loại 50g
                                </h3>
                                <p>2.835.000 ?</p>
                            </a>
                        </div>
                        <div class="product_item">
                            <a href="#"
                               ><img
                                    src="./Image/50G_tinhchethuonghang_ver2_tmdt-min.png-1-300x300.jpg"
                                    alt=""
                                    />
                                <h3>
                                    Tổ Yến Sào Tinh Chế Thượng Hạng  <br />
                                    Song Ân Loại 100g
                                    
                                </h3>
                                <p>5.460.000 ?</p>
                            </a>
                        </div>
                        <div class="product_item">
                            <a href="#"
                               ><img
                                    src="./Image/50G_tinhchethuonghang_ver2_tmdt-min.png-1-300x300.jpg"
                                    alt=""
                                    />
                                <h3>Tổ Yến Sào Tinh Chế Thượng Hạng  <br />
                                    Song Ân Loại 50g</h3>
                                <p>2.835.000 ?</p>
                            </a>
                        </div>
                        <div class="product_item">
                            <a href="#"
                               ><img
                                    src="./Image/50G_tinhchethuonghang_ver2_tmdt-min.png-1-300x300.jpg"
                                    alt=""
                                    />
                                <h3>Tổ Yến Sào Tinh Chế Thượng Hạng Song Ân Loại 50g</h3>
                                <p>2.835.000 ?</p>
                            </a>
                        </div>
                        <div class="product_item">
                            <a href="#"
                               ><img
                                    src="./Image/50G_tinhchethuonghang_ver2_tmdt-min.png-1-300x300.jpg"
                                    alt=""
                                    />
                                <h3>Tổ Yến Sào Tinh Chế Thượng Hạng Song Ân Loại 50g</h3>
                                <p>2.835.000 ?</p>
                            </a>
                        </div>
                        <div class="product_item">
                            <a href="#"
                               ><img
                                    src="./Image/50G_tinhchethuonghang_ver2_tmdt-min.png-1-300x300.jpg"
                                    alt=""
                                    />
                                <h3>Tổ Yến Sào Tinh Chế Thượng Hạng Song Ân Loại 50g</h3>
                                <p>2.835.000 ?</p>
                            </a>
                        </div>
                        <div class="product_item">
                            <a href="#"
                               ><img
                                    src="./Image/50G_tinhchethuonghang_ver2_tmdt-min.png-1-300x300.jpg"
                                    alt=""
                                    />
                                <h3>Tổ Yến Sào Tinh Chế Thượng Hạng Song Ân Loại 50g</h3>
                                <p>2.835.000 ?</p>
                            </a>
                        </div>
                        <div class="product_item">
                            <a href="#"
                               ><img
                                    src="./Image/50G_tinhchethuonghang_ver2_tmdt-min.png-1-300x300.jpg"
                                    alt=""
                                    />
                                <h3>Tổ Yến Sào Tinh Chế Thượng Hạng Song Ân Loại 50g</h3>
                                <p>2.835.000 ?</p>
                            </a>
                        </div>
                        <div class="product_item">
                            <a href="#"
                               ><img
                                    src="./Image/50G_tinhchethuonghang_ver2_tmdt-min.png-1-300x300.jpg"
                                    alt=""
                                    />
                                <h3>T? Y?n Sào Tinh Ch? Th??ng H?ng Song Ân Lo?i 50g</h3>
                                <p>2.835.000 ?</p>
                            </a>
                        </div>
                        <div class="product_item">
                            <a href="#"
                               ><img
                                    src="./Image/50G_tinhchethuonghang_ver2_tmdt-min.png-1-300x300.jpg"
                                    alt=""
                                    />
                                <h3>Tổ Yến Sào Tinh Chế Thượng Hạng Song Ân Loại 50g</h3>
                                <p>2.835.000 ?</p>
                            </a>
                        </div>
                        <div class="product_item">
                            <a href="#"
                               ><img
                                    src="./Image/50G_tinhchethuonghang_ver2_tmdt-min.png-1-300x300.jpg"
                                    alt=""
                                    />
                                <h3>Tổ Yến Sào Tinh Chế Thượng Hạng Song Ân Loại 50g</h3>
                                <p>2.835.000 ?</p>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div><p>Đây là demo git.</p></div>
    </body>
    
</html>

<%@include file="footer.jsp" %>


