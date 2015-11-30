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
<title>musicStory</title>


<!-- Meta -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Favicon -->
<link rel="shortcut icon" href="favicon.ico">

<!-- Web Fonts -->
<link rel='stylesheet' type='text/css'
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

<!-- CSS Global Compulsory -->
<link rel="stylesheet"
	href="<%=cp%>/res/main/assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=cp%>/res/main/assets/css/style.css">

<!-- CSS Header and Footer -->
<link rel="stylesheet"
	href="<%=cp%>/res/main/assets/css/headers/header-default.css">
<link rel="stylesheet"
	href="<%=cp%>/res/main/assets/css/footers/footer-v1.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet"
	href="<%=cp%>/res/main/assets/plugins/animate.css">
<link rel="stylesheet"
	href="<%=cp%>/res/main/assets/plugins/line-icons/line-icons.css">
<link rel="stylesheet"
	href="<%=cp%>/res/main/assets/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="<%=cp%>/res/main/assets/plugins/fancybox/source/jquery.fancybox.css">

<!-- CSS Customization -->
<link rel="stylesheet" href="<%=cp%>/res/main/assets/css/custom.css">
</head>

<body>
<div class="bodyMusic">

	<!--=== Breadcrumbs v1 ===-->
	<div class="breadcrumbs">
		<div class="container">
			
			<ul class="pull-right breadcrumb">
				<li><a href="<%=cp%>">Main</a></li>
				<li><a href="">Features</a></li>
				<li class="active">MusicStory</li>
			</ul>
		</div>
	</div>

	<div class="container">
		 <div class="headline"><h2>Music Stoty</h2></div>
		<table class="table table-bordered">
			<tbody>
				<tr>
					<td><a style="color: black;" href="#">아티스트갤러리</a></td>
					<td><a style="color: black;" href="#">공감카툰</a></td>
					<td><a style="color: black;" href="#">릴레이 인터뷰</a></td>
					<td><a style="color: black;" href="#">금주의 차트</a></td>
				</tr>
				<tr>
					<td><a style="color: black;" href="#">톡톡 클래식</a></td>
					<td><a style="color: black;" href="#">Club</a></td>
					<td><a style="color: black;" href="#">HipHop</a></td>
					<td><a style="color: black;" href="#">RnB</a></td>
				</tr>
				<tr>
					<td><a style="color: black;" href="#">Edm</a></td>
					<td><a style="color: black;" href="#">Jazz</a></td>
					<td><a style="color: black;" href="#">언더커버뮤직</a></td>
					<td><a style="color: black;" href="#">별님의 선택</a></td>
				</tr>
				<tr>
					<td><a style="color: black;" href="#">이주의 히든트랙</a></td>
					<td><a style="color: black;" href="#">라이브세션</a></td>
					<td><a style="color: black;" href="#">인디차트</a></td>
					<td><a style="color: black;" href="#">이슈포커스</a></td>
				</tr>
			</tbody>
		</table>
		<hr>
		   <!-- 오늘의 스토리 -->
                <div><h3>오늘의 스토리</h3></div>               
	              <hr> 
	                <div>
	                    <div>
		                  <div id="collapse-One" class="panel-collapse collapse in">
	                            <div class="panel-body">
	                                <div class="row">	                                	
	                                    <div class="col-md-3">
	                                        <img class="img-responsive" src="<%=cp%>/res/main/assets/img/main/img12.jpg" alt="">
	                                    </div>
	                                    <div class="col-md-7">
	                                        <a href="#"><font>제목</font></a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;날자
	                                    </div>
	                                     <div class="col-md-7">내용</div>	
	                                     <div class="col-md-2"> 
		                                     <i class="icon-custom rounded-x icon-color-grey fa fa-heart"></i>
			                           		<span>좋아요수</span><br> 
			                           		 <i class="icon-custom rounded-x icon-color-grey fa fa-comments-o"></i>
			                           		<span>댓글수</span> <br>
			                           		 <i class="icon-custom rounded-x icon-color-grey fa fa-hand-o-up"></i>
			                           		<span>조회수</span>
		                           		</div>                                    
		                           </div>
		                                                                  
	                            </div>
	                        </div>     
	                    </div>                
	                </div>
	                <hr>       	                
			<!-- 오늘의 스토리 -->
			
			<div><h3>인기 연제</h3></div> 
			<hr>
			<div class="row">
				<div class="col-md-6">
					<div class="row">
						<div class="col-md-4">
	                    	<img class="img-responsive" src="<%=cp%>/res/main/assets/img/main/img12.jpg" alt="">
	                    </div>
	                    <div class="col-md-4">
							<a href="#"><font>제목</font></a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;날자
							<div class="">내용</div>
						</div>				
					</div>
				</div>
				
				<div class="col-md-6">
					<div class="row">
						<div class="col-md-4">
	                    	<img class="img-responsive" src="<%=cp%>/res/main/assets/img/main/img12.jpg" alt="">
	                    </div>
	                    <div class="col-md-4">
							<a href="#"><font>제목</font></a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;날자
							<div class="">내용</div>
						</div>
					</div>
				</div>
				
			</div>
			<hr>
			
			
			<div align="right">
				<ul class="footer-socials list-inline">
					<li><a href="#" class="tooltips" data-toggle="tooltip"
						data-placement="top" title="" data-original-title="Facebook">
							<i class="fa fa-facebook"></i>
					</a></li>
					<li><a href="#" class="tooltips" data-toggle="tooltip"
						data-placement="top" title="" data-original-title="Skype"> <i
							class="fa fa-skype"></i>
					</a></li>
					<li><a href="#" class="tooltips" data-toggle="tooltip"
						data-placement="top" title="" data-original-title="Google Plus">
							<i class="fa fa-google-plus"></i>
					</a></li>
					<li><a href="#" class="tooltips" data-toggle="tooltip"
						data-placement="top" title="" data-original-title="Linkedin">
							<i class="fa fa-linkedin"></i>
					</a></li>
					<li><a href="#" class="tooltips" data-toggle="tooltip"
						data-placement="top" title="" data-original-title="Pinterest">
							<i class="fa fa-pinterest"></i>
					</a></li>
					<li><a href="#" class="tooltips" data-toggle="tooltip"
						data-placement="top" title="" data-original-title="Twitter"> <i
							class="fa fa-twitter"></i>
					</a></li>
					<li><a href="#" class="tooltips" data-toggle="tooltip"
						data-placement="top" title="" data-original-title="Dribbble">
							<i class="fa fa-dribbble"></i>
					</a></li>
				</ul>
			</div>
			<!-- End Social Links -->
		</div>
	</div>




	<!-- JS Global Compulsory -->
	<script type="text/javascript"
		src="<%=cp%>/res/main/assets/plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript"
		src="<%=cp%>/res/main/assets/plugins/jquery/jquery-migrate.min.js"></script>
	<script type="text/javascript"
		src="<%=cp%>/res/main/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- JS Implementing Plugins -->
	<script type="text/javascript"
		src="<%=cp%>/res/main/assets/plugins/back-to-top.js"></script>
	<script type="text/javascript"
		src="<%=cp%>/res/main/assets/plugins/smoothScroll.js"></script>
	<script type="text/javascript"
		src="<%=cp%>/res/main/assets/plugins/fancybox/source/jquery.fancybox.pack.js"></script>
	<!-- JS Customization -->
	<script type="text/javascript"
		src="<%=cp%>/res/main/assets/js/custom.js"></script>
	<!-- JS Page Level -->
	<script type="text/javascript" src="<%=cp%>/res/main/assets/js/app.js"></script>
	<script type="text/javascript"
		src="<%=cp%>/res/main/assets/js/plugins/fancy-box.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function() {
			App.init();
			FancyBox.initFancybox();
		});
	</script>

</body>
</html>
