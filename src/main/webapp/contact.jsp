<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
         pageEncoding="UTF-8"%>
<jsp:include page="partials/header.jsp" flush="true"/>

<link rel="stylesheet" type="text/css" href="${initParam.webResPath}styles/contact_styles.css">
<link rel="stylesheet" type="text/css" href="${initParam.webResPath}styles/contact_responsive.css">


<!-- Contact Info -->

<div class="contact_info">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 offset-lg-1">
                <div class="contact_info_container d-flex flex-lg-row flex-column justify-content-between align-items-between">

                    <!-- Contact Item -->
                    <div class="contact_info_item d-flex flex-row align-items-center justify-content-start">
                        <div class="contact_info_image"><img src="${initParam.webResPath}images/contact_1.png" alt=""></div>
                        <div class="contact_info_content">
                            <div class="contact_info_title">Điện thoại</div>
                            <div class="contact_info_text">+84 37 444 2611</div>
                        </div>
                    </div>

                    <!-- Contact Item -->
                    <div class="contact_info_item d-flex flex-row align-items-center justify-content-start">
                        <div class="contact_info_image"><img src="${initParam.webResPath}images/contact_2.png" alt=""></div>
                        <div class="contact_info_content">
                            <div class="contact_info_title">Email</div>
                            <div class="contact_info_text">nhom.11.cnpm@gmail.com</div>
                        </div>
                    </div>

                    <!-- Contact Item -->
                    <div class="contact_info_item d-flex flex-row align-items-center justify-content-start">
                        <div class="contact_info_image"><img src="${initParam.webResPath}images/contact_3.png" alt=""></div>
                        <div class="contact_info_content">
                            <div class="contact_info_title">Địa chỉ</div>
                            <div class="contact_info_text">Số 1 Đại Cồ Việt, Hai Bà Trưng</div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>

<c:choose>

    <c:when test="${isSent==false}">
        <!-- Contact Form -->

        <div class="contact_form">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 offset-lg-1">
                        <div class="contact_form_container">
                            <div class="contact_form_title">Liên lạc với chúng tôi</div>

                            <form action="contact" method="POST" id="contact_form">
                                <div class="contact_form_inputs d-flex flex-md-row flex-column justify-content-between align-items-between">
                                    <input name="name" type="text" id="contact_form_name" class="contact_form_name input_field" placeholder="Họ tên" required="required" data-error="Họ tên đang bỏ trống.">
                                    <input name="email" type="email" id="contact_form_email" class="contact_form_email input_field" placeholder="Email" required="required" data-error="Email đang bỏ trống.">
                                    <input name="phone" type="number" id="contact_form_phone" class="contact_form_phone input_field" placeholder="Số điện thoại">
                                </div>
                                <div class="contact_form_text">
                                    <textarea id="contact_form_message" class="text_field contact_form_message" name="message" rows="4" placeholder="Message" required="required" data-error="Bạn muốn chúng tôi giúp đỡ gì?"></textarea>
                                </div>
                                <div class="contact_form_button">
                                    <button type="submit" class="button contact_submit_button">Gửi tin</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel"></div>
        </div>

    </c:when>
    <c:otherwise>
        <div class="contact_form">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 offset-lg-1">
                        <div class="contact_form_container">
                            <div class="contact_form_title">Cảm ơn bạn!</div>
                            <p>Tin nhắn của bạn đã được gửi đi. Chúng tôi sẽ liên lạc với bạn trong thời gian sớm nhất.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </c:otherwise>
</c:choose>

<!-- Map -->

<div class="contact_map">
    <div id="google_map" class="google_map">
        <div class="map_container">
            <div id="map"></div>
        </div>
    </div>
</div>



<script src="${initParam.webResPath}js/jquery-3.3.1.min.js"></script>	

<script src="${initParam.webResPath}https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA"></script>
<script src="${initParam.webResPath}js/contact_custom.js"></script>

<jsp:include page="partials/footer.jsp" flush="true"/>