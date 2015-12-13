<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<div class="bodymain">


	<!--=== Content Part ===-->
	<div class="container content">
		<div class="row">
			<!-- Begin Content -->
			<div class="col-md-9">
				<div class="headline">
					<h5>앨범</h5>
				</div>
				<!-- Alert Tabs -->
				<div class="tab-v2 margin-bottom-40">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#album1" data-toggle="tab">최신앨범</a></li>
						<li><a href="#album2" data-toggle="tab">유저앨범</a></li>
					</ul>
					<div class="tab-content">
						<!--최신앨범-->
						<div class="tab-pane fade in active" id="album1">

							<div class="row team-v3">
								<div class="col-md-3 col-sm-6 md-margin-bottom-50">
									<div class="team-img">
										<img class="img-responsive"
											src="<%=cp%>/res/main/assets/img/team/img21-md.jpg" alt="">
										<div class="team-hover">
											<span><a href="#">앨범이름</a></span><br> <small><a
												href="#">가수정보</a></small>
											<p>간략한 내용</p>
											<ul class="list-inline team-social-v3">
												<li><a class="btn-more hover-effect"
													data-toggle="modal" data-target="#responsive1"
													style="cursor: pointer;"><i
														class="rounded-x fa fa-music"></i></a></li>
											</ul>
										</div>
									</div>
								</div>

								<div class="modal fade" id="responsive1" tabindex="-1"
									role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">

									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">&times;</button>
												<h4 class="modal-title" id="myModalLabel4">Responsive
													Modal</h4>
											</div>
											<div class="modal-body">
												<div class="row">
													<div class="col-md-6">
														<h4>Some Input</h4>

													</div>
													<div class="col-md-6">
														<h4>Some More Input</h4>

													</div>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn-u btn-u-default"
													data-dismiss="modal">닫기</button>
												<button type="button" class="btn-u btn-u-primary">아티스트정보</button>
											</div>
										</div>
									</div>

								</div>
							</div>

							<div align='center'>
								<table>
									<tr height='30'>
										<td>1,2,3</td>
									</tr>
								</table>
							</div>

						</div>
						<!-- 최신앨범 -->

						<!-- 유저앨범 -->
						<div class="tab-pane fade in" id="album2">
							<div class="row team-v3">
								<div class="col-md-3 col-sm-6 md-margin-bottom-50">
									<div class="team-img">
										<img class="img-responsive"
											src="<%=cp%>/res/main/assets/img/team/img21-md.jpg" alt="">
										<div class="team-hover">
											<span><a href="#">앨범이름</a></span><br> <small><a
												href="#">가수정보</a></small>
											<p>간략한 내용</p>
											<ul class="list-inline team-social-v3">
												<li><a class="btn-more hover-effect"
													data-toggle="modal" data-target="#responsive1"
													style="cursor: pointer;"><i
														class="rounded-x fa fa-music"></i></a></li>
											</ul>
										</div>
									</div>
								</div>

								<div class="modal fade" id="responsive1" tabindex="-1"
									role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">

									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">&times;</button>
												<h4 class="modal-title" id="myModalLabel4">Responsive
													Modal</h4>
											</div>
											<div class="modal-body">
												<div class="row">
													<div class="col-md-6">
														<h4>Some Input</h4>

													</div>
													<div class="col-md-6">
														<h4>Some More Input</h4>

													</div>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn-u btn-u-default"
													data-dismiss="modal">닫기</button>
												<button type="button" class="btn-u btn-u-primary">아티스트정보</button>
											</div>
										</div>
									</div>

								</div>
							</div>

							<div align='center'>
								<table>
									<tr height='30'>
										<td>1,2,3</td>
									</tr>
								</table>
							</div>
						</div>
						<!-- 유저앨범 -->
					</div>
				</div>


				<div class="row">
					<div class="col-md-5">
						<div class="headline">
							<h5>실시간차트</h5>
							<div align="right">
								<a href="<%=cp%>/music/chat.do"><font
									style="font-size: 10pt;">더보기 +</font></a>
							</div>
						</div>

						<div role="chatl">

							<!-- Nav tabs -->
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation" class="active"><a href="#music"
									aria-controls="music" role="tab" data-toggle="tab">실시간</a></li>
								<li role="presentation"><a href="#pop"
									aria-controls="profile" role="tab" data-toggle="tab">POP</a></li>
								<li role="presentation"><a href="#artist"
									aria-controls="messages" role="tab" data-toggle="tab">ARTIST</a></li>
							</ul>

							<!-- Tab panes -->
							<div class="tab-content">
								<div role="tabpanel" class="tab-pane  active" id="music">
									<div id="music1">
										<table class="table">
											<thead>
												<tr>
													<th>Num</th>
													<th></th>
													<th>노래이름</th>
													<th>아티스트</th>
												</tr>
											</thead>

											<tbody>
												<tr>
													<td>1</td>
													<td><a href=""> <i
															class="fa fa-caret-square-o-right">&nbsp;&nbsp;&nbsp;</i></a>
														<a href=""> <i class="fa fa-plus-square-o"></i></a></td>
													<td><a href="#">소녀</a></td>
													<td><a href="#">오혁</a></td>
												</tr>
											</tbody>

										</table>
									</div>
								</div>

								<div role="tabpanel" class="tab-pane" id="pop">

									<div id="POP1">
										<table class="table">
											<thead>
												<tr>
													<th>Num</th>
													<th></th>
													<th>노래이름</th>
													<th>아티스트</th>
												</tr>
											</thead>

											<tbody>
												<tr>
													<td>1</td>
													<td><a href=""> <i
															class="fa fa-caret-square-o-right">&nbsp;&nbsp;&nbsp;</i></a>
														<a href=""> <i class="fa fa-plus-square-o"></i></a></td>
													<td><a href="#">소녀</a></td>
													<td><a href="#">오혁</a></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<div role="tabpanel" class="tab-pane" id="artist">
									<div id="Artist1">
										<table class="table">
											<thead>
												<tr>
													<th>Num</th>
													<th>아티스트</th>
													<th>좋아요</th>
												</tr>
											</thead>

											<tbody>
												<tr>
													<td>1</td>
													<td><a href="#">소녀</a></td>
													<td>
														<button type="submit" name=""
															class="btn btn-xs rounded btn-default">
															<i class="fa fa-heart" style="color: #e67e22;"></i><br>
														</button>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>

						</div>
					</div>

					<div class="col-md-5">
						<div class="headline">
							<h5>커뮤니티</h5>
							<div align="right">
								<a href="<%=cp%>/music/chat.do"><font
									style="font-size: 10pt;">더보기 +</font></a>
							</div>
							<hr>

							<table class="table">
								<thead>
									<tr>
										<th>Num</th>
										<th>제목</th>
										<th>이름</th>
									</tr>
								<thead>
								<tbody>
									<tr>
										<td>1</td>
										<td><a href="#">Mark</a></td>
										<td>작성자</td>
									</tr>
								</tbody>
							</table>

						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<!-- 차트표 -->
				<div class="who margin-bottom-30">
					<div class="headline">
						<h2>톰DJ</h2>
						<a href="<%=cp%>/story/story.do"></a>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<button type="button" class="btn btn-warning" onclick="javascript:location.href='<%=cp%>/share/created.do';">DJ 신청하기</button>
					</div>

					<div>
						<div>
							<img style="width: 200px; height: 200px;" class="img-responsive"
								src="<%=cp%>/res/main/assets/img/main/img22.jpg" alt="">
						</div>
						<div>

							<h2>
								<a href="#">제목</a>
							</h2>
							<div>
								<i class="fa fa-calendar"></i> 등록일 <i class="fa fa-comments"></i>
								댓글 <i class="fa fa-tags"></i> 조회수
							</div>
							<div>
								<h4>올드팝 모음곡입니다^^</h4>
							</div>
							<button class="btn btn-default">
								Read More <i class="fa fa-angle-double-right margin-left-5"></i>
							</button>
						</div>
					</div>
				</div>
				<!-- 차트 끝 -->

				<!-- About Us -->
				<div class="who margin-bottom-30">
					<div class="headline">
						<h2>EVENT</h2>
					</div>

					<!-- 실시간 차트  -->
					<div role="eventl">

						<!-- Nav tabs -->
						<ul class="nav nav-tabs" role="tablist">
							<li role="presentation" class="active"><a href="#h1"
								aria-controls="h1" role="tab" data-toggle="tab">연극</a></li>
							<li role="presentation"><a href="#h2" aria-controls="h2"
								role="tab" data-toggle="tab">이용권</a></li>
							<li role="presentation"><a href="#h3" aria-controls="h3"
								role="tab" data-toggle="tab">콘서트</a></li>
						</ul>

						<!-- Tab panes -->
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane  active" id="h1">

								<table>
									<tr>
										<td><a href="#"><font
												style="font-size: 8px; text-align: right;">더보기 +</font></a></td>
									</tr>
								</table>

							</div>

							<div role="tabpanel" class="tab-pane" id="h2">...</div>

							<div role="tabpanel" class="tab-pane" id="h3">...</div>
						</div>

					</div>
				</div>

				<!-- Contact Us -->
				<div class="who margin-bottom-30">


					<div class="headline">
						<h2>Music Story</h2>
						<a href="<%=cp%>/story/story.do">&nbsp;&nbsp;&nbsp;&nbsp;더보기+</a>
					</div>

					<table>
						<tr>
							<td>
								<div id="carousel-example-generic" class="carousel slide"
									data-ride="carousel">
									<!-- Indicators -->
									<ol class="carousel-indicators">
										<li data-target="#carousel-example-generic" data-slide-to="0"
											class="active"></li>
										<li data-target="#carousel-example-generic" data-slide-to="1"></li>
										<li data-target="#carousel-example-generic" data-slide-to="2"></li>
									</ol>

									<!-- Wrapper for slides -->
									<div class="carousel-inner" role="listbox">
										<div class="item active">
											<h4 style="font-weight: bold;">쌍팔년도 모든 추억, 응답하라!</h4>
											<h7>추억을 자극하는 "응답하라 1988"의 히트! 그 시절 엄마 아빠의 아이돌은 누구였을까?</h7>
											<img
												src="http://cdnimg.melon.co.kr/svc/images/main/imgUrl20151116044247.jpg"
												alt="...">
											<div class="carousel-caption"></div>
										</div>

										<div class="item">
											<h4 style="font-weight: bold;">수험생 여러분 힘내세요!</h4>
											<h7>쌀쌀한 날씨에 더욱 긴장되는 시험날, 여러분 곁에서 응원하고 있을게요 아자아자!</h7>
											<img
												src="http://cdnimg.melon.co.kr/svc/images/main/imgUrl20151109121637.jpg"
												alt="...">
											<div class="carousel-caption"></div>
										</div>

									</div>

									<!-- Controls -->
									<a class="left carousel-control"
										href="#carousel-example-generic" role="button"
										data-slide="prev"> <span
										class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
										<span class="sr-only">Previous</span>
									</a> <a class="right carousel-control"
										href="#carousel-example-generic" role="button"
										data-slide="next"> <span
										class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
										<span class="sr-only">Next</span>
									</a>
								</div>
							</td>
						</tr>

					</table>

				</div>
			</div>
			<!--/col-md-3-->

		</div>
		<!--/container-->
		<!--=== End Content Part ===-->
	</div>
</div>
