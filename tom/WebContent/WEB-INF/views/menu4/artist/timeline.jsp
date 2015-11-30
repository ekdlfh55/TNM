<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<div class="bodyArtist">

	<div class="container">

		<!-- Begin 타임라인 -->
		<div class="col-md-9">
			<ul class="timeline-v1">
				<li>
					<div class="timeline-badge primary">
						<i class="glyphicon glyphicon-record"></i>
					</div>
					<div class="timeline-panel">
						<div class="timeline-heading">
							<img class="img-responsive"
								src="<%=cp%>/res/main/assets/img/main/img10.jpg" alt="" />
						</div>
						<div class="timeline-body text-justify">
							<h2>
								<a href="#">타임라인1</a>
							</h2>
							<p>Lorem Ipsum is simply dummy text of the printing and type
								setting industry. Lorem Ipsum has been the industry's standard
								dummy text ever since the 1500s, when an unknown printer took a
								galley of type and scrambled it to make a type specimen book.</p>
							<a rel="push" class="btn-u btn-u-sm btn-u-orange push" href="#">Read
								More</a>
							<!--  <a class="btn-u btn-u-sm btn-bg-orange" href="#">Read More</a> -->
						</div>
						<div class="timeline-footer">
							<ul class="list-unstyled list-inline blog-info">
								<li><i class="fa fa-clock-o"></i> March 28, 2014</li>
								<li><i class="fa fa-comments-o"></i> <a href="#">7
										Comments</a></li>
							</ul>
							<a class="likes" href="#"><i class="fa fa-heart"></i>239</a>
						</div>
					</div>
				</li>
				<li class="timeline-inverted">
					<div class="timeline-badge primary">
						<i class="glyphicon glyphicon-record invert"></i>
					</div>
					<div class="timeline-panel">
						<div class="timeline-heading">
							<img class="img-responsive"
								src="<%=cp%>/res/main/assets/img/main/img12.jpg" alt="" />
						</div>
						<div class="timeline-body text-justify">
							<h2>
								<a href="#">타임라인2</a>
							</h2>
							<p>Lorem Ipsum is simply dummy text of the printing and type
								setting industry. Lorem Ipsum has been the industry's standard
								dummy text ever since the 1500s, when an unknown printer took a
								galley of type and scrambled it to make a type specimen book.</p>
							<a rel="push" class="btn-u btn-u-sm btn-u-orange push" href="#">Read
								More</a>
						</div>
						<div class="timeline-footer">
							<ul class="list-unstyled list-inline blog-info">
								<li><i class="fa fa-clock-o"></i> March 16, 2014</li>
								<li><i class="fa fa-comments-o"></i> <a href="#">12
										Comments</a></li>
							</ul>
							<a class="likes" href="#"><i class="fa fa-heart"></i>87</a>
						</div>
					</div>
				</li>

				<li>
					<div class="timeline-badge primarya">
						<i class="glyphicon glyphicon-record"></i>
					</div>
					<div class="timeline-panel">
						<div class="timeline-heading">
							<div class="carousel slide carousel-v1" id="myCarousel">
								<div class="carousel-inner">
									<div class="item active">
										<img class="img-responsive"
											src="<%=cp%>/res/main/assets/img/main/img19.jpg" alt="" />
										<div class="carousel-caption">
											<p>Facilisis odio, dapibus ac justo acilisis gestinas.</p>
										</div>
									</div>
									<div class="item">
										<img class="img-responsive"
											src="<%=cp%>/res/main/assets/img/main/img18.jpg" alt="" />
										<div class="carousel-caption">
											<p>Mussum ipsum cacilds, vidis litro abertis.</p>
										</div>
									</div>
									<div class="item">
										<img class="img-responsive"
											src="<%=cp%>/res/main/assets/img/main/img20.jpg" alt="" />
										<div class="carousel-caption">
											<p>Justo cras odio apibus ac afilisis lingestas de.</p>
										</div>
									</div>
								</div>

								<div class="carousel-arrow">
									<a data-slide="prev" href="#myCarousel"
										class="left carousel-control"> <i class="fa fa-angle-left"></i>
									</a> <a data-slide="next" href="#myCarousel"
										class="right carousel-control"> <i
										class="fa fa-angle-right"></i>
									</a>
								</div>
							</div>
						</div>
						<div class="timeline-body text-justify">
							<h2>
								<a href="#">타임라인3</a>
							</h2>
							<p>Lorem Ipsum is simply dummy text of the printing and type
								setting industry. Lorem Ipsum has been the industry's standard
								dummy text ever since the 1500s, when an unknown printer took a
								galley of type and scrambled it to make a type specimen book.</p>
							<a rel="push" class="btn-u btn-u-sm btn-u-orange push" href="#">Read
								More</a>
						</div>
						<div class="timeline-footer">
							<ul class="list-unstyled list-inline blog-info">
								<li><i class="fa fa-clock-o"></i> November 06, 2014</li>
								<li><i class="fa fa-comments-o"></i> <a href="#">37
										Comments</a></li>
							</ul>
							<a class="likes" href="#"><i class="fa fa-heart"></i>121</a>
						</div>
					</div>
				</li>

				<li class="timeline-inverted">
					<div class="timeline-badge primary">
						<i class="glyphicon glyphicon-record"></i>
					</div>
					<div class="timeline-panel">
						<div class="timeline-heading">
							<img class="img-responsive"
								src="<%=cp%>/res/main/assets/img/main/img25.jpg" alt="" />
						</div>
						<div class="timeline-body text-justify">
							<h2>
								<a href="#">타임라인4</a>
							</h2>
							<p>Lorem Ipsum is simply dummy text of the printing and type
								setting industry. Lorem Ipsum has been the industry's standard
								dummy text ever since the 1500s, when an unknown printer took a
								galley of type and scrambled it to make a type specimen book.</p>
							<a rel="push" class="btn-u btn-u-sm btn-u-orange push" href="#">Read
								More</a>
						</div>
						<div class="timeline-footer">
							<ul class="list-unstyled list-inline blog-info">
								<li><i class="fa fa-clock-o"></i> November 02, 2014</li>
								<li><i class="fa fa-comments-o"></i> <a href="#">24
										Comments</a></li>
							</ul>
							<a class="likes" href="#"><i class="fa fa-heart"></i>34</a>
						</div>
					</div>
				</li>
				<li>
					<div class="timeline-badge primary">
						<i class="glyphicon glyphicon-record invert"></i>
					</div>
					<div class="timeline-panel">
						<div class="timeline-heading">
							<img class="img-responsive"
								src="<%=cp%>/res/main/assets/img/main/img6.jpg" alt="" />
						</div>
						<div class="timeline-body text-justify">
							<h2>
								<a href="#">타임라인5</a>
							</h2>
							<p>Lorem Ipsum is simply dummy text of the printing and type
								setting industry. Lorem Ipsum has been the industry's standard
								dummy text ever since the 1500s, when an unknown printer took a
								galley of type and scrambled it to make a type specimen book.</p>
							<a rel="push" class="btn-u btn-u-sm btn-u-orange push" href="#">Read
								More</a>
						</div>
						<div class="timeline-footer primary">
							<ul class="list-unstyled list-inline blog-info">
								<li><i class="fa fa-clock-o"></i> February 26, 2014</li>
								<li><i class="fa fa-comments-o"></i> <a href="#">93
										Comments</a></li>
							</ul>
							<a class="likes" href="#"><i class="fa fa-heart"></i>355</a>
						</div>
					</div>
				</li>


				<li class="timeline-inverted">
					<div class="timeline-badge primary">
						<i class="glyphicon glyphicon-record invert"></i>
					</div>
					<div class="timeline-panel">
						<div class="timeline-heading">
							<div class="responsive-video">
								<iframe src="http://player.vimeo.com/video/9679622"
									frameborder="0" webkitAllowFullScreen mozallowfullscreen
									allowFullScreen></iframe>
							</div>
						</div>
						<div class="timeline-body">
							<h2>
								<a href="#">타임라인6</a>
							</h2>
							<p>I only make it responsive and remove the empty spaces to
								be more like Facebook timeline!</p>
							<a rel="push" class="btn-u btn-u-sm btn-u-orange push" href="#">Read
								More</a>
						</div>
						<div class="timeline-footer primary">
							<ul class="list-inline">
								<ul class="list-unstyled list-inline blog-info">
									<li><i class="fa fa-clock-o"></i> November 29, 2013</li>
									<li><i class="fa fa-comments-o"></i> <a href="#">162
											Comments</a></li>
								</ul>
								<a class="likes" href="#"><i class="fa fa-heart"></i>798</a>
							</ul>
						</div>
				</li>
				<li class="clearfix" style="float: none;"></li>
			</ul>
			<!--페이징-->
			<div align="center">

				<ul class="pagination">
					<li><a href="#">&laquo;</a></li>
					<li class="active"><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">&raquo;</a></li>
				</ul>

			</div>

			<!--End 페이징-->

		</div>
		<!-- End Content -->


	</div>
	<!--=== End Content Part ===-->
</div>
<!--/End Wrapepr-->
