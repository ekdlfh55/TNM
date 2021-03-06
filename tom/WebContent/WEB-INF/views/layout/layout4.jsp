<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%
   String cp = request.getContextPath();
   String path = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+cp;
%>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<head>
    <title>layout2</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Web Fonts -->
    <link rel='stylesheet' type='text/css' href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

    <!-- CSS Global Compulsory -->
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/css/style.css">

    <!-- CSS Header and Footer -->
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/css/headers/header-v4.css">
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/css/footers/footer-v2.css">

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/plugins/animate.css">
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/plugins/line-icons/line-icons.css">
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/plugins/parallax-slider/css/parallax-slider.css">
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/plugins/owl-carousel/owl-carousel/owl.carousel.css">
 	<link rel="stylesheet" href="<%=cp%>/res/main/assets/plugins/login-signup-modal-window/css/style.css"><!-- 로그인 --> 
	<link rel="stylesheet" href="<%=cp%>/res/main/assets/plugins/sky-forms-pro/skyforms/css/sky-forms.css"><!-- 관리자 폼 -->
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css">
	
	<link rel="stylesheet" href="<%=cp%>/res/main/assets/css/pages/shortcode_timeline1.css"><!-- 타임라인 -->
    <!-- CSS Customization -->
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/css/custom.css">
    
    
    <!-- JS Global Compulsory -->
<script type="text/javascript" src="<%=cp%>/res/main/assets/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="<%=cp%>/res/main/assets/plugins/jquery/jquery-migrate.min.js"></script>
<script type="text/javascript" src="<%=cp%>/res/main/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- JS Implementing Plugins -->
<script type="text/javascript" src="<%=cp%>/res/main/assets/plugins/back-to-top.js"></script>
<script type="text/javascript" src="<%=cp%>/res/main/assets/plugins/smoothScroll.js"></script>
<script type="text/javascript" src="<%=cp%>/res/main/assets/plugins/parallax-slider/js/modernizr.js"></script>
<script type="text/javascript" src="<%=cp%>/res/main/assets/plugins/parallax-slider/js/jquery.cslider.js"></script>
<script type="text/javascript" src="<%=cp%>/res/main/assets/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>

<script src="<%=cp%>/res/main/assets/plugins/login-signup-modal-window/js/main.js"></script> <!-- Gem jQuery -->
<!-- JS Customization -->
<script type="text/javascript" src="<%=cp%>/res/main/assets/js/custom.js"></script>
<!-- JS Page Level -->
<script type="text/javascript" src="<%=cp%>/res/main/assets/js/app.js"></script>
<script type="text/javascript" src="<%=cp%>/res/main/assets/js/plugins/owl-carousel.js"></script>
<script type="text/javascript" src="<%=cp%>/res/main/assets/js/plugins/parallax-slider.js"></script>
  
 
</head>

<body>


	<div class="layoutMain">
	
		<div class="layoutHeader">
			<tiles:insertAttribute name="header"/>
		</div>
		<div class="container">	
			<div class="layoutBody2">
			    <div class="layoutBodyLeft">
			    	<tiles:insertAttribute name="left"/>
			    </div>
			    <div class="layoutBodyRight">
			    	<tiles:insertAttribute name="body"/>
			    </div>
			</div>
		</div>
		<br><br><br><br>
		<div class="layoutFooter">
			<tiles:insertAttribute name="footer"/>
		</div>

	</div>


<script type="text/javascript">
    jQuery(document).ready(function() {
      	App.init();
        OwlCarousel.initOwlCarousel();
        ParallaxSlider.initParallaxSlider();
    });
</script>
<!--[if lt IE 9]>
    <script src="<%=cp%>/res/main/assets/plugins/respond.js"></script>
    <script src="<%=cp%>/res/main/assets/plugins/html5shiv.js"></script>
    <script src="<%=cp%>/res/main/assets/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->

</body>
</html>