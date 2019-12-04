<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
         pageEncoding="UTF-8"%>


<!-- Recently Viewed -->	
<!--<div class="viewed">	
    <div class="container">	
        <div class="row">	
            <div class="col">	
                <div class="viewed_title_container">	
                    <h3 class="viewed_title">Xem gần đây</h3>	
                    <div class="viewed_nav_container">	
                        <div class="viewed_nav viewed_prev"><i class="fas fa-chevron-left"></i></div>	
                        <div class="viewed_nav viewed_next"><i class="fas fa-chevron-right"></i></div>	
                    </div>	
                </div>	
                <div class="viewed_slider_container">	

                     Recently Viewed Slider 	
                    <div class="owl-carousel owl-theme viewed_slider">	

                         Recently Viewed Item 	
                        <div class="owl-item">	
                            <div class="viewed_item discount d-flex flex-column align-items-center justify-content-center text-center">	
                                <div class="viewed_image"><img src="${initParam.webResPath}images/view_1.jpg" alt=""></div>	
                                <div class="viewed_content text-center">	
                                    <div class="viewed_price">$225<span>$300</span></div>	
                                    <div class="viewed_name"><a href="#">Beoplay H7</a></div>	
                                </div>	
                                <ul class="item_marks">	
                                    <li class="item_mark item_discount">-25%</li>	
                                    <li class="item_mark item_new">new</li>	
                                </ul>	
                            </div>	
                        </div>	
                         Recently Viewed Item 	
                        <div class="owl-item">	
                            <div class="viewed_item d-flex flex-column align-items-center justify-content-center text-center">	
                                <div class="viewed_image"><img src="${initParam.webResPath}images/view_2.jpg" alt=""></div>	
                                <div class="viewed_content text-center">	
                                    <div class="viewed_price">$379</div>	
                                    <div class="viewed_name"><a href="#">LUNA Smartphone</a></div>	
                                </div>	
                                <ul class="item_marks">	
                                    <li class="item_mark item_discount">-25%</li>	
                                    <li class="item_mark item_new">new</li>	
                                </ul>	
                            </div>	
                        </div>	
                         Recently Viewed Item 	
                        <div class="owl-item">	
                            <div class="viewed_item d-flex flex-column align-items-center justify-content-center text-center">	
                                <div class="viewed_image"><img src="${initParam.webResPath}images/view_3.jpg" alt=""></div>	
                                <div class="viewed_content text-center">	
                                    <div class="viewed_price">$225</div>	
                                    <div class="viewed_name"><a href="#">Samsung J730F...</a></div>	
                                </div>	
                                <ul class="item_marks">	
                                    <li class="item_mark item_discount">-25%</li>	
                                    <li class="item_mark item_new">new</li>	
                                </ul>	
                            </div>	
                        </div>	
                         Recently Viewed Item 	
                        <div class="owl-item">	
                            <div class="viewed_item is_new d-flex flex-column align-items-center justify-content-center text-center">	
                                <div class="viewed_image"><img src="${initParam.webResPath}images/view_4.jpg" alt=""></div>	
                                <div class="viewed_content text-center">	
                                    <div class="viewed_price">$379</div>	
                                    <div class="viewed_name"><a href="#">Huawei MediaPad...</a></div>	
                                </div>	
                                <ul class="item_marks">	
                                    <li class="item_mark item_discount">-25%</li>	
                                    <li class="item_mark item_new">new</li>	
                                </ul>	
                            </div>	
                        </div>	
                         Recently Viewed Item 	
                        <div class="owl-item">	
                            <div class="viewed_item discount d-flex flex-column align-items-center justify-content-center text-center">	
                                <div class="viewed_image"><img src="${initParam.webResPath}images/view_5.jpg" alt=""></div>	
                                <div class="viewed_content text-center">	
                                    <div class="viewed_price">$225<span>$300</span></div>	
                                    <div class="viewed_name"><a href="#">Sony PS4 Slim</a></div>	
                                </div>	
                                <ul class="item_marks">	
                                    <li class="item_mark item_discount">-25%</li>	
                                    <li class="item_mark item_new">new</li>	
                                </ul>	
                            </div>	
                        </div>	
                         Recently Viewed Item 	
                        <div class="owl-item">	
                            <div class="viewed_item d-flex flex-column align-items-center justify-content-center text-center">	
                                <div class="viewed_image"><img src="${initParam.webResPath}images/view_6.jpg" alt=""></div>	
                                <div class="viewed_content text-center">	
                                    <div class="viewed_price">$375</div>	
                                    <div class="viewed_name"><a href="#">Speedlink...</a></div>	
                                </div>	
                                <ul class="item_marks">	
                                    <li class="item_mark item_discount">-25%</li>	
                                    <li class="item_mark item_new">new</li>	
                                </ul>	
                            </div>	
                        </div>	
                    </div>	
                </div>	
            </div>	
        </div>	
    </div>	
</div>	-->
<!-- Brands -->	
<div class="brands">	
    <div class="container">	
        <div class="row">	
            <div class="col">	
                <div class="brands_slider_container">	

                    <!-- Brands Slider -->	
                    <div class="owl-carousel owl-theme brands_slider">	

                        <div class="owl-item"><div class="brands_item d-flex flex-column justify-content-center"><img src="${initParam.webResPath}images/brands_1.jpg" alt=""></div></div>	
                        <div class="owl-item"><div class="brands_item d-flex flex-column justify-content-center"><img src="${initParam.webResPath}images/brands_2.jpg" alt=""></div></div>	
                        <div class="owl-item"><div class="brands_item d-flex flex-column justify-content-center"><img src="${initParam.webResPath}images/brands_3.jpg" alt=""></div></div>	
                        <div class="owl-item"><div class="brands_item d-flex flex-column justify-content-center"><img src="${initParam.webResPath}images/brands_4.jpg" alt=""></div></div>	
                        <div class="owl-item"><div class="brands_item d-flex flex-column justify-content-center"><img src="${initParam.webResPath}images/brands_5.jpg" alt=""></div></div>	
                        <div class="owl-item"><div class="brands_item d-flex flex-column justify-content-center"><img src="${initParam.webResPath}images/brands_6.jpg" alt=""></div></div>	
                        <div class="owl-item"><div class="brands_item d-flex flex-column justify-content-center"><img src="${initParam.webResPath}images/brands_7.jpg" alt=""></div></div>	
                        <div class="owl-item"><div class="brands_item d-flex flex-column justify-content-center"><img src="${initParam.webResPath}images/brands_8.jpg" alt=""></div></div>	
                    </div>	

                    <!-- Brands Slider Navigation -->	
                    <div class="brands_nav brands_prev"><i class="fas fa-chevron-left"></i></div>	
                    <div class="brands_nav brands_next"><i class="fas fa-chevron-right"></i></div>	
                </div>	
            </div>	
        </div>	
    </div>	
</div>	
<!-- Newsletter -->	
<div class="newsletter">	
    <div class="container">	
        <div class="row">	
            <div class="col">	
                <div class="newsletter_container d-flex flex-lg-row flex-column align-items-lg-center align-items-center justify-content-lg-start justify-content-center">	
                    <div class="newsletter_title_container">	
                        <div class="newsletter_icon"><img src="${initParam.webResPath}images/send.png" alt=""></div>	
                        <div class="newsletter_title">Đăng ký thông báo</div>	
                        <div class="newsletter_text"><p>...và nhận coupon giảm 20% cho lần mua đầu tiên.</p></div>	
                    </div>	
                    <div class="newsletter_content clearfix">	
                        <form action="#" class="newsletter_form">	
                            <input type="email" class="newsletter_input" required="required" placeholder="Enter your email address">	
                            <button class="newsletter_button">Đăng ký</button>	
                        </form>	
                        <div class="newsletter_unsubscribe_link"><a href="#">huỷ đăng ký</a></div>	
                    </div>	
                </div>	
            </div>	
        </div>	
    </div>	
</div>	
<!-- Footer -->	
<footer class="footer">	
    <div class="container">	
        <div class="row">	
            <div class="col-lg-3 footer_col">	
                <div class="footer_column footer_contact">	
                    <div class="logo_container">	
                        <div class="logo"><a href="#">OneTech</a></div>	
                    </div>	
                    <div class="footer_title">Có thắc mắc? Hãy gọi chúng tôi 24/7</div>	
                    <div class="footer_phone">+84 37 444 2611</div>	
                    <div class="footer_contact_text">	
                        <p>Số 1, Đại Cồ Việt</p>	
                        <p>Hai Bà Trưng, Hà Nội, VN.</p>	
                    </div>	
                    <div class="footer_social">	
                        <ul>	
                            <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>	
                            <li><a href="#"><i class="fab fa-twitter"></i></a></li>	
                            <li><a href="#"><i class="fab fa-google"></i></a></li>	
                            <li><a href="#"><i class="fab fa-vimeo-v"></i></a></li>	
                        </ul>	
                    </div>	
                </div>	
            </div>	
            <div class="col-lg-2 offset-lg-5">	
                <div class="footer_column">	
                    <div class="footer_title">Nhóm 11</div>	
                    <ul class="footer_list">	
                        <li><a href="#">Trần Trung Nghĩa</a></li>	
                        <li><a href="#">Cao Hải Nam</a></li>	
                        <li><a href="#">Phạm Thành Nam</a></li>	
                        <li><a href="#">Nguyễn Văn Nga</a></li>	
                        <li><a href="#">Dương Quang Nghĩa</a></li>	
                    </ul>		
                </div>	
            </div>	
            <div class="col-lg-2">	
                <div class="footer_column">	
                    <div class="footer_title">Hỗ trợ khách khàng</div>	
                    <ul class="footer_list">	
                        <li><a href="#">Tài khoản của tôi</a></li>	
                        <li><a href="#">Đơn hàng của tôi</a></li>	
                        <li><a href="#">Wish List</a></li>	
                        <li><a href="#">Chính sách đổi trả</a></li>	
                        <li><a href="#">Liên hệ và tư vấn</a></li>	
                        <li><a href="#">Câu hỏi thường gặp</a></li>	
                    </ul>	
                </div>	
            </div>	
        </div>	
    </div>	
</footer>	
<!-- Copyright -->	
<div class="copyright">	
    <div class="container">	
        <div class="row">	
            <div class="col">	

                <div class="copyright_container d-flex flex-sm-row flex-column align-items-center justify-content-start">	
                    <div class="copyright_content">
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a> <br>	
                        Cảm ơn bạn đã đọc tới đây!
                    </div>	
                    <div class="logos ml-sm-auto">	
                        <ul class="logos_list">	
                            <li><a href="#"><img src="${initParam.webResPath}images/logos_1.png" alt=""></a></li>	
                            <li><a href="#"><img src="${initParam.webResPath}images/logos_2.png" alt=""></a></li>	
                            <li><a href="#"><img src="${initParam.webResPath}images/logos_3.png" alt=""></a></li>	
                            <li><a href="#"><img src="${initParam.webResPath}images/logos_4.png" alt=""></a></li>	
                        </ul>	
                    </div>	
                </div>	
            </div>	
        </div>	
    </div>	
</div>	
</div>	
<script src="${initParam.webResPath}styles/bootstrap4/popper.js"></script>	
<script src="${initParam.webResPath}styles/bootstrap4/bootstrap.min.js"></script>	
<script src="${initParam.webResPath}plugins/greensock/TweenMax.min.js"></script>	
<script src="${initParam.webResPath}plugins/greensock/TimelineMax.min.js"></script>	
<script src="${initParam.webResPath}plugins/scrollmagic/ScrollMagic.min.js"></script>	
<script src="${initParam.webResPath}plugins/greensock/animation.gsap.min.js"></script>	
<script src="${initParam.webResPath}plugins/greensock/ScrollToPlugin.min.js"></script>	
<script src="${initParam.webResPath}plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>	
<script src="${initParam.webResPath}plugins/easing/easing.js"></script>	
</body>	
</html>