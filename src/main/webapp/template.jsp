<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
         pageEncoding="UTF-8"%>
<jsp:include page="partials/header.jsp" flush="true"/>

<link rel="stylesheet" type="text/css" href="${initParam.webResPath}plugins/slick-1.8.0/slick.css">
<link rel="stylesheet" type="text/css" href="${initParam.webResPath}styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="${initParam.webResPath}styles/responsive.css">


<!-- CONTENT-->

<div class="container">
<h3 style="padding-top:100px; padding-bottom:100px">Ở đây là nội dung các trang</h3>
</div>



<!--/* Cai nay khong duoc thay doi */-->
<script src="${initParam.webResPath}js/jquery-3.3.1.min.js"></script>
<!--/* Cai nay khong duoc thay doi */-->


<script src="${initParam.webResPath}plugins/slick-1.8.0/slick.js"></script>
<script src="${initParam.webResPath}js/custom.js"></script>

<jsp:include page="partials/footer.jsp" flush="true"/>