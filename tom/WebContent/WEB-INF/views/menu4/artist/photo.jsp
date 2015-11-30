<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<div class="bodyArtist">

	<div class="container">

		<!-- 프로필 본문 시작 -->
		<div class="col-md-9">

			<div class="panel panel-grey margin-bottom-40">
				<div class="panel-heading">
					<h3 class="panel-title">
						<i class="fa fa-picture-o color-orange"></i>포토
					</h3>
				</div>


				<!-- 아티스트 프로필 end -->


				<!-- ----------------포토 목록----------------->
				<!-- <div class="text-center margin-bottom-50">            
        </div> -->
				<!-- Four Columns -->
				<!--  <div class="container content"> -->
				<div class="panel-body">
					<div class="margin-bottom-30" style="width: 100%;">
						<div class="row margin-bottom-25">
							<div class="col-sm-3 sm-margin-bottom-30"
								style="margin: 10px auto;">
								<a href="<%=cp%>/res/main/assets/img/albumjacket.jpg"
									rel="gallery2" class="fancybox img-hover-v1" title="Image 5">
									<span><img class="img-responsive"
										src="<%=cp%>/res/main/assets/img/albumjacket.jpg" alt=""></span>
								</a>
							</div>
							<div class="col-sm-3 sm-margin-bottom-30"
								style="margin: 10px auto;">
								<a href="<%=cp%>/res/main/assets/img/albumjacket.jpg"
									rel="gallery2" class="fancybox img-hover-v1" title="Image 6">
									<span><img class="img-responsive"
										src="<%=cp%>/res/main/assets/img/albumjacket.jpg" alt=""></span>
								</a>
							</div>
							<div class="col-sm-3" style="margin: 10px auto;">
								<a href="<%=cp%>/res/main/assets/img/albumjacket.jpg"
									rel="gallery2" class="fancybox img-hover-v1" title="Image 7">
									<span><img class="img-responsive"
										src="<%=cp%>/res/main/assets/img/albumjacket.jpg" alt=""></span>
								</a>
							</div>
							<div class="col-sm-3 sm-margin-bottom-30"
								style="margin: 10px auto;">
								<a href="a<%=cp%>/res/main/assets/img/albumjacket.jpg"
									rel="gallery2" class="fancybox img-hover-v1" title="Image 8">
									<span><img class="img-responsive"
										src="<%=cp%>/res/main/assets/img/albumjacket.jpg" alt=""></span>
								</a>
							</div>

							<div class="col-sm-3 sm-margin-bottom-30"
								style="margin: 10px auto;">
								<a href="a<%=cp%>/res/main/assets/img/albumjacket.jpg"
									rel="gallery2" class="fancybox img-hover-v1" title="Image 8">
									<span><img class="img-responsive"
										src="<%=cp%>/res/main/assets/img/albumjacket.jpg" alt=""></span>
								</a>
							</div>

							<div class="col-sm-3 sm-margin-bottom-30"
								style="margin: 10px auto;">
								<a href="a<%=cp%>/res/main/assets/img/albumjacket.jpg"
									rel="gallery2" class="fancybox img-hover-v1" title="Image 8">
									<span><img class="img-responsive"
										src="<%=cp%>/res/main/assets/img/albumjacket.jpg" alt=""></span>
								</a>
							</div>
						</div>
					</div>

				</div>
				<!-- End Four Columns -->

			</div>
			<!---------------------------------------------------- End 포토 목록-------------------------------->


		</div>

	</div>
	<!--=== End Content Part ===-->
</div>
<!--/End Wrapepr-->
