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
	
	<div>
		<div class="row">
			<!-- Begin Content -->
			<div class="col-md-9">
				<div class="headline">
					<h4>앨범</h4>
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
							
							<div><!-- 앨범 시작 -->
								<div class="col-md-3 col-sm-6 md-margin-bottom-50">
									<div class="team-img">
										<img style="width: 230px;height: 200px;" class="img-responsive"
											src="<%=cp%>/res/main/assets/img/album/album1.jpg" alt="">
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
							</div><!--  앨범끝 -->
							
							<div><!-- 앨범 시작 -->
								<div class="col-md-3 col-sm-6 md-margin-bottom-50">
									<div class="team-img">
										<img style="width: 230px;height: 200px;" class="img-responsive"
											src="<%=cp%>/res/main/assets/img/album/album2.jpg" alt="">
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
							</div><!--  앨범끝 -->
							<div><!-- 앨범 시작 -->
								<div class="col-md-3 col-sm-6 md-margin-bottom-50">
									<div class="team-img">
										<img style="width: 230px;height: 200px;" class="img-responsive"
											src="<%=cp%>/res/main/assets/img/album/album3.jpg" alt="">
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
							</div><!--  앨범끝 -->
							
							<div><!-- 앨범 시작 -->
								<div class="col-md-3 col-sm-6 md-margin-bottom-50">
									<div class="team-img">
										<img style="width: 230px;height: 200px;" class="img-responsive"
											src="<%=cp%>/res/main/assets/img/album/album4.jpg" alt="">
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
							</div><!--  앨범끝 -->
							<div><!-- 앨범 시작 -->
								<div class="col-md-3 col-sm-6 md-margin-bottom-50">
									<div class="team-img">
										<img style="width: 230px;height: 200px;" class="img-responsive"
											src="<%=cp%>/res/main/assets/img/album/album5.jpg" alt="">
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
							</div><!--  앨범끝 -->
							<div><!-- 앨범 시작 -->
								<div class="col-md-3 col-sm-6 md-margin-bottom-50">
									<div class="team-img">
										<img style="width: 230px;height: 200px;" class="img-responsive"
											src="<%=cp%>/res/main/assets/img/album/album6.jpg" alt="">
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
							</div><!--  앨범끝 -->
							<div><!-- 앨범 시작 -->
								<div class="col-md-3 col-sm-6 md-margin-bottom-50">
									<div class="team-img">
										<img style="width: 230px;height: 200px;" class="img-responsive"
											src="<%=cp%>/res/main/assets/img/album/album7.jpg" alt="">
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
							</div><!--  앨범끝 -->
							<div><!-- 앨범 시작 -->
								<div class="col-md-3 col-sm-6 md-margin-bottom-50">
									<div class="team-img">
										<img style="width: 230px;height: 200px;" class="img-responsive"
											src="<%=cp%>/res/main/assets/img/album/album8.jpg" alt="">
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
							</div><!--  앨범끝 -->
							
						</div>
						
						
							<div align='center'>
								<table>
									<tr align="center" height="15">
									
										<c:if test="${dataCount==0}">
											등록된 게시물이 없다
										</c:if> 
											
										<c:if test="${dataCount!=0}">
											${pageIndexList}   
										</c:if>				
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
											src="<%=cp%>/res/main/assets/img/album/album.jpg" alt="">
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


				
			</div>

			<div class="col-md-3">
				<!-- 뮤직스토리-->
					<!-- About Us -->
				<div class="who margin-bottom-10">
					<div class="headline">
						<h4>music story</h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%=cp%>/story/story.do">+더보기</a>
					</div>

					<!-- 뮤직스토리 시작  -->
					<div role="story">
						<div class="carousel slide carousel-v1 margin-bottom-10" id="myCarousel-1">
						<p><font style="font-size: 12pt;">생생한 연예인의 인터뷰 소식!</font> </p>
		                    <div class="carousel-inner">
		                        <div class="item active">
		                            <img alt="" src="<%=cp%>/res/main/assets/img/album/album1.jpg">
		                            <div class="carousel-caption">
		                                <p>Facilisis odio, dapibus ac justo acilisis gestinas.</p>
		                            </div>
		                        </div>
		                        <div class="item">
		                            <img alt="" src="<%=cp%>/res/main/assets/img/album/album2.jpg">
		                            <div class="carousel-caption">
		                                <p>Cras justo odio, dapibus ac facilisis into egestas.</p>
		                            </div>
		                            </div>
		                        <div class="item">
		                            <img alt="" src="<%=cp%>/res/main/assets/img/album/album3.jpg">
		                            <div class="carousel-caption">
		                                <p>Justo cras odio apibus ac afilisis lingestas de.</p>
		                            </div>
		                        </div>
		                    </div>
		
		                    <div class="carousel-arrow">
		                        <a data-slide="prev" href="#myCarousel-1" class="left carousel-control">
		                            <i class="fa fa-angle-left"></i>
		                        </a>
		                        <a data-slide="next" href="#myCarousel-1" class="right carousel-control">
		                            <i class="fa fa-angle-right"></i>
		                        </a>
		                    </div>
                		</div>
                		<!-- 뮤직스토리 끝 -->
					</div>
					
					<div align="right">
						<img style="width: 260px; height: 140px;" alt="" src="<%=cp%>/res/main/assets/img/album/album5.jpg">
						<a class="btn-u btn-u-orange ls-s-1" href="#">
			                	나만의 CD만들기
			            </a>
					</div>
				</div>
				
				
				
					</div>
				
			</div><!-- row -->
		</div><!--/col-md-3-->

			<div class="row">
					<div class="col-md-5">
						<div class="headline">
							<h4>실시간차트</h4>
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
			
					<div class="col-md-4">
						<div class="headline">
							<h4>커뮤니티</h4>
							<div align="right">
								<a href="<%=cp%>/genre/gayolist.do"><font
									style="font-size: 10pt;">더보기 +</font></a>
							</div>
						</div>

						<div role="chatl">

							<!-- Nav tabs -->
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation" class="active"><a href="#free"
									aria-controls="free" role="tab" data-toggle="tab">자유게시판</a></li>
								<li role="presentation"><a href="#gayo"
									aria-controls="profile" role="tab" data-toggle="tab">가요 게시판</a></li>
								<li role="presentation"><a href="#pop"
									aria-controls="messages" role="tab" data-toggle="tab">POP 게시판</a></li>
							</ul>

							<!-- Tab panes -->
							<div class="tab-content">
								<div role="tabpanel" class="tab-pane  active" id="free">
									<div id="free">
										
											<table class="table">
												<thead>
													<tr>
														<th>Num</th>
														<th>제목</th>
														<th>이름</th>
													</tr>
												<thead>
											<c:forEach var="dto" items="${list}">
												<tbody>
													<tr>
														<td>${dto.listNum}</td>
														<td><a href="${urlArticle}&num=${dto.num}">${dto.subject}</a></td>
														<td>${dto.userId}</td>
													</tr>
												</tbody>
											</c:forEach>
											
											</table>
									</div>
							
								</div>

								<div role="tabpanel" class="tab-pane" id="gayo">

									<div id="gayo">
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
								<div role="tabpanel" class="tab-pane" id="pop">
									<div id="pop">
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
					</div>
					
					<div class="col-md-3">	
				<!-- 끝 -->
		
				<!-- About Us -->
				<div class="who margin-bottom-30">
					<div class="headline">
						<h4>EVENT</h4>
					</div>

					<!-- 실시간 차트  -->
					<div role="eventl">

						<!-- Nav tabs -->
						<ul class="nav nav-tabs" role="tablist">
							<li role="presentation" class="active"><a href="#h1"
								aria-controls="h1" role="tab" data-toggle="tab">연극</a></li>
							<li role="presentation"><a href="#h2" aria-controls="h2"
								role="tab" data-toggle="tab">이용권</a></li>
							<li role="presentation"><a href="#h4" aria-controls="h4"
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
			</div>
					
					
				</div>
		</div>
		<!--/container-->
		<!--=== End Content Part ===-->
	
</div>
