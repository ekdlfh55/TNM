<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<title>Blog Single Page | Unify - Responsive Website Template</title>

<!-- Meta -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Favicon -->
<link rel="shortcut icon" href="favicon.ico">

<!-- Web Fonts -->
<link rel='stylesheet' type='text/css'
	href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,300,700'>

<!-- CSS Global Compulsory -->
<link rel="stylesheet"
	href="<%=cp%>/res/main/assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=cp%>/res/main/assets/css/blog.style.css">

<!-- CSS Header and Footer -->
<link rel="stylesheet"
	href="<%=cp%>/res/main/assets/css/headers/header-v8.css">
<link rel="stylesheet"
	href="<%=cp%>/res/main/assets/css/footers/footer-v8.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet"
	href="<%=cp%>/res/main/assets/plugins/animate.css">
<link rel="stylesheet"
	href="<%=cp%>/res/main/assets/plugins/line-icons/line-icons.css">
<link rel="stylesheet"
	href="<%=cp%>/res/main/assets/plugins/fancybox/source/jquery.fancybox.css">
<link rel="stylesheet"
	href="<%=cp%>/res/main/assets/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="<%=cp%>/res/main/assets/plugins/sky-forms-pro/skyforms/css/sky-forms.css">
<link rel="stylesheet"
	href="<%=cp%>/res/main/assets/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css">
<link rel="stylesheet"
	href="<%=cp%>/res/main/assets/plugins/login-signup-modal-window/css/style.css">

<!-- CSS Theme -->
<link rel="stylesheet"
	href="<%=cp%>/res/main/assets/css/theme-colors/default.css"
	id="style_color">

<!-- CSS Customization -->
<link rel="stylesheet" href="<%=cp%>/res/main/assets/css/custom.css">
<!-- CSS Customization -->
<link rel="stylesheet" href="<%=cp%>/res/main/assets/css/custom.css">
</head>

<body class="header-fixed header-fixed-space-v2">
	<div class="wrapper">

		<!--=== Breadcrumbs ===-->
		<div class="breadcrumbs">
			<div class="container">
				<h1 class="pull-left">${title }</h1>				
			</div>
		</div>
		<!--/breadcrumbs-->
		<!--=== End Breadcrumbs ===-->

		<!-- Container Part -->
		<div class="container content">
			<div class="row">
				<div  class="col-md-9">
					<!-- Blog Grid -->
					<div  class="blog-grid margin-bottom-30">
						<h2 class="blog-grid-title-lg">제목</h2><hr>
						<div class="overflow-h margin-bottom-10">
						<i class="fa fa-user">  유저이름</i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-calendar"> 날자</i><hr>
						<i class="fa fa-calendar"> 첨부</i><hr>
								
						</div>				
					</div>
					<br>
					<div>
					<!-- End Blog Grid -->
						<p>내용</p>
					</div>
					<br>
					<hr> 
			
				</div>
				<!--/end row-->
			</div>
			<!-- End Blog Thumb v4 -->

		<div  class="col-md-9" style="height: 80px;">
			<!-- Form -->
				<fieldset>
					<div class="row sky-space-30">
						<div class="row">
							
							<div class="col-md-3">
								
							</div>	
						</div>
						
						<div class="row">
							<div class="col-md-3">
								<div align="center">
									<img class="rounded-x" style="width: 100px; height: 100px;" src="<%=cp%>/res/main/assets/img/album/album1.jpg"/>	
								</div>
								<br>
								
								<div>
									<input type="text" name="name" id="name" placeholder="Name" class="form-control bg-color-light">																		
								</div>
							</div>
							<div class="col-md-6" style="width: 70%">
								<textarea rows="5" name="content" id="content"
									placeholder="Write comment here ..."
									class="form-control bg-color-light" style="resize:none;"></textarea>
								
								<button style="float: right; margin: 2px;" type="reset" class="btn btn-u-orange">취소</button>
								<button style="float: right; margin: 2px;"  type="button" class="btn btn-u-warning">확인</button>
							</div>
						</div>
					</div>

					<!-- <div align="right">
						<button type="button" class="btn btn-u-warning">확인</button>
						<button type="reset" class="btn btn-u-orange">취소</button>
					</div> -->
				</fieldset>

		</div>
		
		<div id="listReply" style="width:600px; margin: 0px auto;"></div>
		
		</div>

	</div>
	<!-- JS Global Compulsory -->
	<script src="<%=cp%>/res/main/assets/plugins/jquery/jquery.min.js"></script>
	<script
		src="<%=cp%>/res/main/assets/plugins/jquery/jquery-migrate.min.js"></script>
	<script
		src="<%=cp%>/res/main/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- JS Implementing Plugins -->
	<script src="<%=cp%>/res/main/assets/plugins/back-to-top.js"></script>
	<script src="<%=cp%>/res/main/assets/plugins/smoothScroll.js"></script>
	<script src="<%=cp%>/res/main/assets/plugins/counter/waypoints.min.js"></script>
	<script
		src="<%=cp%>/res/main/assets/plugins/counter/jquery.counterup.min.js"></script>
	<script
		src="<%=cp%>/res/main/assets/plugins/fancybox/source/jquery.fancybox.pack.js"></script>
	<script
		src="<%=cp%>/res/main/assets/plugins/sky-forms-pro/skyforms/js/jquery.form.min.js"></script>
	<script
		src="<%=cp%>/res/main/assets/plugins/sky-forms-pro/skyforms/js/jquery.validate.min.js"></script>
	<script src="<%=cp%>/res/main/assets/plugins/modernizr.js"></script>
	<script
		src="<%=cp%>/res/main/assets/plugins/login-signup-modal-window/js/main.js"></script>
	<!-- Gem jQuery -->
	<!-- JS Customization -->
	<script src="<%=cp%>/res/main/assets/js/custom.js"></script>
	<!-- JS Page Level -->
	<script src="<%=cp%>/res/main/assets/js/app.js"></script>
	<script src="<%=cp%>/res/main/assets/js/forms/login.js"></script>
	<script src="<%=cp%>/res/main/assets/js/forms/contact.js"></script>
	<script src="<%=cp%>/res/main/assets/js/plugins/fancy-box.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			App.initCounter();
			FancyBox.initFancybox();
			LoginForm.initLoginForm();
			ContactForm.initContactForm();
		});
	</script>

	<!-- Go to www.addthis.com/dashboard to customize your tools -->
	<script
		src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-4f5b24645b6bf84e"
		async="async"></script>

	<!--[if lt IE 9]>
	<script src="<%=cp%>/res/main/assets/plugins/respond.js"></script>
	<script src="<%=cp%>/res/main/assets/plugins/html5shiv.js"></script>
	<script src="<%=cp%>/res/main/assets/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->
</body>
</html>
