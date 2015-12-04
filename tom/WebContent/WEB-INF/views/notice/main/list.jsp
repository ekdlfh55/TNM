<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String cp=request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container content">
		<div class="row">

			<!-- Begin Content -->
			<div class="col-md-12">
				<!-- Progress Bars -->
				<div class="headline">
					<h2>${title}</h2>
				</div>
					<div class="tab-content">
						<!-- Progress Bars With Texts -->
						<div class="tab-pane fade in active" id="tab-1">
							<div class="margin-bottom-30"></div>

							<div class="row">
								<!-- Icon Boxes 35 -->
								<div class="row">
									<div class="col-md-4">
										<div class="service-block-v1 md-margin-bottom-50">
											<i
												class="icon-custom icon-lg rounded-x icon-bg-red icon-line icon-present"></i>
											<h3 class="title-v3-bg text-uppercase">이용권 안내</h3>

											<a class="text-uppercase" href="#">사이트 이동</a><br>
										</div>
									</div>
									<div class="col-md-4">
										<div class="service-block-v1 md-margin-bottom-50">
											<i
												class="icon-custom icon-lg rounded-x icon-bg-red icon-line icon-users"></i>
											<h3 class="title-v3-bg text-uppercase">회원 정보 관리</h3>

											<a class="text-uppercase" href="#">사이트 이동</a><br>

										</div>
									</div>
									<div class="col-md-4">
										<div class="service-block-v1 md-margin-bottom-50">

											<i
												class="icon-custom icon-lg rounded-x icon-bg-red icon-line icon-volume-2"></i>

											<h3 class="title-v3-bg text-uppercase">서비스 이용 안내</h3>

											<a class="text-uppercase" href="#">사이트 이동</a><br>
										</div>
									</div>
								</div>

								<!-- End Icon Boxes 35 -->
							</div>
							<hr>
							<br>
							<!-- 자주하는 질문 -->
							<div class="row">
								<div align="center">
									<h2>
										<i class="fa fa-chevron-right"></i>자주하는 질문
									</h2>
								</div>
								<hr>
								<br>
								<div class="row main-check margin-bottom-30">
									<div class="col-xs-6 md-margin-bottom-20">
										<ul class="list-unstyled check-style">
											<li><i class="fa fa-angle-right color-green"></i> <a
												href="#">How does encryption work?</a></li>
											<li><i class="fa fa-angle-right color-green"></i> <a
												href="#">Is Unify Template legal?</a></li>
											<li><i class="fa fa-angle-right color-green"></i> <a
												href="#">Can I download Unify multiple times?</a></li>
											<li><i class="fa fa-angle-right color-green"></i> <a
												href="#">How to Update Unify Template?</a></li>
											<li><i class="fa fa-angle-right color-green"></i> <a
												href="#">How does encryption work?</a></li>
											<li><i class="fa fa-angle-right color-green"></i> <a
												href="#">Is Unify Template legal?</a></li>
											<li><i class="fa fa-angle-right color-green"></i> <a
												href="#">Can I download Unify multiple times?</a></li>
										</ul>
									</div>
									<div class="col-xs-6">
										<ul class="list-unstyled check-style">
											<li><i class="fa fa-angle-right color-green"></i> <a
												href="#">How does encryption work?</a></li>
											<li><i class="fa fa-angle-right color-green"></i> <a
												href="#">Is Unify Template legal?</a></li>
											<li><i class="fa fa-angle-right color-green"></i> <a
												href="#">Can I download Unify multiple times?</a></li>
											<li><i class="fa fa-angle-right color-green"></i> <a
												href="#">How to Update Unify Template?</a></li>
											<li><i class="fa fa-angle-right color-green"></i> <a
												href="#">How does encryption work?</a></li>
											<li><i class="fa fa-angle-right color-green"></i> <a
												href="#">Is Unify Template legal?</a></li>
											<li><i class="fa fa-angle-right color-green"></i> <a
												href="#">Can I download Unify multiple times?</a></li>
										</ul>
									</div>
								</div>
							</div>

							<hr>

						</div>
						<!-- End Progress Bars With Texts -->
						</div>
					</div>
				</div>
			</div>

</body>
</html>