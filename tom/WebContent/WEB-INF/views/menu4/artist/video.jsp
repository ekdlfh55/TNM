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
						<i class="fa  fa-video-camera color-orange"></i>영상
					</h3>
				</div>
				<!--------------------------------panel head end----------------------------->
				<!-- Video Blocks -->
				<div class="panel-body">
					<div class="row">

						<div class="col-md-4" style="width: 30%">
							<div class="thumbnails thumbnail-style">
								<div class="responsive-video">
									<a class="fancybox" data-rel="fancybox-button"
										title="Project #1"
										href="<%=cp%>/res/main/assets/img/main/img18.jpg"> <iframe
											width="100%" src="//www.youtube.com/embed/4dmt7tQG1-w"
											frameborder="0" allowfullscreen></iframe></a>
								</div>
								<div class="caption">
									<h3>
										<a class="hover-effect" href="#">영상이름</a>
									</h3>
									<p>
										<a href="#"><i class="fa fa-heart color-orange"></i> 7123</a>
									</p>
								</div>
							</div>
						</div>

						<div class="col-md-4" style="width: 30%">
							<div class="thumbnails thumbnail-style">
								<div class="responsive-video">
									<a class="fancybox" data-rel="fancybox-button"
										title="Project #1"
										href="<%=cp%>/res/main/assets/img/main/img18.jpg"> <iframe
											width="100%" src="//www.youtube.com/embed/4dmt7tQG1-w"
											frameborder="0" allowfullscreen></iframe></a>
								</div>
								<div class="caption">
									<h3>
										<a class="hover-effect" href="#">영상이름</a>
									</h3>
									<p>
										<a href="#"><i class="fa fa-heart color-orange"></i> 3265</a>
									</p>
								</div>
							</div>
						</div>

						<div class="col-md-4" style="width: 30%">
							<div class="thumbnails thumbnail-style">
								<div class="responsive-video">
									<a class="fancybox" data-rel="fancybox-button"
										title="Project #1"
										href="<%=cp%>/res/main/assets/img/main/img18.jpg"> <iframe
											width="100%" src="//www.youtube.com/embed/4dmt7tQG1-w"
											frameborder="0" allowfullscreen></iframe></a>
								</div>
								<div class="caption">

									<h3>
										<a class="hover-effect" href="#">영상이름</a>
									</h3>
									<p>
										<a href="#"><i class="fa fa-heart color-orange"></i> 5236</a>
									</p>

								</div>
							</div>
						</div>

						<div class="col-md-4" style="width: 30%">
							<div class="thumbnails thumbnail-style">
								<div class="responsive-video">
									<a class="fancybox" data-rel="fancybox-button"
										title="Project #1"
										href="<%=cp%>/res/main/assets/img/main/img18.jpg"> <iframe
											width="100%" src="//www.youtube.com/embed/4dmt7tQG1-w"
											frameborder="0" allowfullscreen></iframe></a>
								</div>
								<div class="caption">

									<h3>
										<a class="hover-effect" href="#">영상이름</a>
									</h3>
									<p>
										<a href="#"><i class="fa fa-heart color-orange"></i> 2548</a>
									</p>

								</div>
							</div>
						</div>



					</div>
					<!-- panel body end -->

					<!---------------------- End 비디오 목록---------------------------->

				</div>
			</div>
		</div>

		<!-- 프로필 본문 끝 -->


	</div>
	<!--=== End Content Part ===-->
</div>
<!--/End Wrapepr-->
