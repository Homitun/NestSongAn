<%-- 
    Document   : footer
    Created on : Sep 29, 2022, 10:36:37 PM
    Author     : SE151471 Hoang Minh Tuan>
--%>
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
            <li><h1>?i?u H??ng</h1></li>
            <li><a href="./index.html">Trang Ch?</a></li>
            <li><a href="./GioiThieu.html">Gi?i thi?u</a></li>
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

