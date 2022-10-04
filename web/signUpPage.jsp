<%-- 
    Document   : signUpPage
    Created on : Oct 2, 2022, 10:17:03 PM
    Author     : user
--%>

<%@page import="sample.DTO.userError"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
        <!-- CSS -->
        <link rel="stylesheet" href="Asset/Css/Style.css" />
        <link rel="stylesheet" href="./Asset/Css/StyleSignUp.css" />
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
                            <a href="./index.html"> Trang Chủ </a>
                        </li>
                        <li>
                            <a href="./GioiThieu.html"> Giới Thiệu </a>
                        </li>
                        <li>
                            <a href="./SanPham.html"> Sản Phẩm </a>
                        </li>
                        <li>
                            <a href="./index.html"> <img src="./Image/Logo.png" alt="" /> </a>
                        </li>
                        <li>
                            <a href="./TinTuc.html"> Tin Tức </a>
                        </li>
                        <li>
                            <a href="./ChinhSach.html"> Chính Sách </a>
                        </li>
                        <li>
                            <a href="./LienHe.html"> Liên Hệ </a>
                        </li>
                        <li>
                            <a href="./GioHang.html"> <i class="fa fa-shopping-cart"></i> </a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-user"></i> </a>
                        </li>
                    </ul>
                </div>
            </div>
        </header>

        <div class="SignUp">
            <div class="SignUp_Container">
                <div class="SignUp_tittle">
                    <ul>
                        <li><img src="./Image/divider-left-1.png" alt="" /></li>
                        <li><h1>Đăng Kí Tài Khoản</h1></li>
                        <li><img src="./Image/divider-right-1.png" alt="" /></li>
                    </ul>
                </div>
                <div class="SignUp_Content">
                    <%
                        userError usererror = (userError) request.getAttribute("USER_ERROR");
                        if (usererror == null) {
                            usererror = new userError();
                        }
                    %>
                    <form action="MainController" method="POST">
                        <div class="SignUp_item">
                            <h3>User Name</h3>
                            <input
                                type="text"
                                name="userName"
                                required=""
                                placeholder="User Name"
                                /> <h2><%= usererror.getUserNameError()%></h2>
                            <br />
                            <h3>User Full Name</h3>
                            <input
                                type="text"
                                name="user_Fullname"
                                required=""
                                placeholder="user_Fullname"
                                /><p><%= usererror.getUser_FullnameError()%></p>
                            <br />
                            <h3>Password</h3>
                            <input
                                type="password"
                                name="passWord"
                                required=""
                                placeholder="Password"
                                />
                            <br />
                            <h3>Password Comfirm</h3>
                            <input
                                type="password"
                                name="passWord_ComfirmError"
                                required=""
                                placeholder="Password Comfirm"
                                /><h2><%= usererror.getPassWord_ComfirmError()%></h2>
                            <br />
                            <h3>Phone Number</h3>
                            <input
                                type="number"
                                name="phoneNumber"
                                required=""
                                placeholder="phoneNumber"
                                />
                            <br />
                            <h3>Email</h3>
                            <input
                                type="email"
                                name="Email"
                                required=""
                                placeholder="Email"
                                />
                            <br />
                            <h3>Address</h3>
                            <input
                                type="text"
                                name="Address"
                                required=""
                                placeholder="Address"
                                />

                            <br />
                            <div class="button">
                                <input type="hidden" name="role_ID" value="2" />
                                <input type="submit" name="action" value="Create" />
                                <input type="reset" value="Reset" />
                            </div>
                        </div>
                    </form>
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
    </body>
</html>
