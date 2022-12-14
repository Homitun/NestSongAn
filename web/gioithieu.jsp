<%-- 
    Document   : GioiThieu
    Created on : Sep 29, 2022, 10:19:28 PM
    Author     : SE151471 Hoang Minh Tuan>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Gioi Thieu</title>
    <!-- CSS -->
    <link rel="stylesheet" href="./Css/StyleGioiThieu.css" />
    <link rel="stylesheet" href="./Css/Style.css" />
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
    <div class="GioiThieuCarousel">
      <div class="GioiThieuCarousel_container">
        <div class="GioiThieuCarousel_tittle">
          <h2>Câu Chuyện</h2>
          <ul>
            <li>
              <img src="./Image/divider-left-1.png" alt="" />
            </li>
            <li>
              <h1>Thương Hiệu</h1>
            </li>
            <li>
              <img src="./Image/divider-right-1.png" alt="" />
            </li>
          </ul>
        </div>
        <div class="GioiThieuCarousel_content">
          <p>
            Yến sào từ xưa đã là một trong tám bát trân xa hoa và quý hiếm cho
            cung đình.
          </p>
          <p>
            Tương truyền rằng, yến sào bắt nguồn từ vùng đất Trung Hoa cổ đại từ
            1.500 năm trước sau công nguyên. Tổ yến được tìm thấy đầu tiên dưới
            triều đại nhà Đường bởi một đô đốc hoàng gia. Sau khi đi qua vùng
            biển Đông Nam Á và dừng chân trên một hòn đảo Mã Lai, ông đã phát
            hiện ra tổ yến. Yến sào từ đó được sử dụng, buôn bán nhiều vào thời
            nhà Minh và Thanh, là thực phẩm chỉ dành cho vua chúa, quý tộc.
          </p>
          <p>
            Mãi sau đến năm 1938 tại Việt Nam, khoảng 700 năm trước, trong một
            lần đi sứ về phương Nam ở thời nhà Trần, chỉ huy Lê Văn Đạt đã phát
            hiện ra hòn đảo nơi sinh sống của loài chim yến ở vùng biển Bình
            Khang (Khánh Hoà). Từ đó, Yến được phân bố rộng rãi khắp cả nước và
            chính thức có mặt tại Việt Nam.
          </p>
          <img src="./Image/cau-chuyen-1.jpg" alt="" />
        </div>
        <div class="GioiThieuCarousel_content_item">
          <h1>Tinh Hoa Từ Thiên Nhiên</h1>
          <img src="./Image/divider-3.png" alt="" />
          <p>
            Khi được có duyên biết đến loài chim Yến, cảm thấy tò mò về loài
            chim thú vị này cũng như giá trị sức khỏe thần kì mà tổ Yến mang
            lại, chúng tôi, những người con của vùng đất Vĩnh Phước, Nha Trang,
            bắt tay bước vào hành trình học hỏi, khám phá và cho ra đời thương
            hiệu Yến Sào Vĩnh Phước, với sứ mệnh mang đến sản phẩm Yến Sào chất
            lượng nhất, cao cấp nhất và dinh dưỡng nhất để bồi dưỡng sức khỏe
            cho đồng bào Việt Nam!
          </p>
        </div>
        <div class="GioiThieuCarousel_content_item_quytrinh">
          <h2>Quy Trình</h2>
          <ul>
            <li>
              <img src="./Image/divider-left-1.png" alt="" />
            </li>
            <li>
              <h1>Sản Xuất</h1>
            </li>
            <li>
              <img src="./Image/divider-right-1.png" alt="" />
            </li>
          </ul>
          <div class="owl-carousel owl-theme">
            <div class="item">
              <img style="max-width: 500px" src="./Image/B1.jpg" alt="" />
            </div>
            <div class="item">
              <img style="max-width: 500px" src="./Image/B2.jpg" alt="" />
            </div>
            <div class="item">
              <img style="max-width: 500px" src="./Image/B3.jpg" alt="" />
            </div>
            <div class="item">
              <img style="max-width: 500px" src="./Image/B4.jpg" alt="" />
            </div>
            <div class="item">
              <img style="max-width: 500px" src="./Image/B5.jpg" alt="" />
            </div>
            <div class="item">
              <img style="max-width: 500px" src="./Image/B6.jpg" alt="" />
            </div>
          </div>
        </div>
      </div>
    </div>
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
            <li><a href="./GioiThieu.html">Giới Thiệu</a></li>
            <li><a href="./SanPham.html">Sản Phẩm</a></li>
            <li><a href="./TinTuc.html">Tin Tức</a></li>
            <li><a href="./ChinhSach.html">Chính Sách</a></li>
            <li><a href="./LienHe.html">Liên Hệ</a></li>
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
          margin: 50,
          nav: true,
          responsive: {
            0: {
              items: 1,
            },
            600: {
              items: 2,
            },
            1000: {
              items: 3,
            },
          },
        });
      });
    </script>
    <script src="./OwlCarousel2-2.3.4/docs/assets/vendors/jquery.min.js"></script>
    <script src="./OwlCarousel2-2.3.4/dist/owl.carousel.min.js"></script>
  </body>
</html>
