<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
	<div class="bodyAlbum">
		<!--=== Profile ===-->
		<div class="container content profile">
			<div class="row">
				<!--Left Sidebar-->
				<div class="col-md-3 md-margin-bottom-40">
					<img class="img-responsive profile-img margin-bottom-20"
						src="<%=cp%>/res/main/assets/img/album/album1.jpg" alt="">

					<ul class="list-group sidebar-nav-v1 margin-bottom-40"
						id="sidebar-nav-1">
						<li class="list-group-item"><a href="#albumInfomation">
							<i class="fa fa-pencil-square-o"></i> 앨범 정보</a></li>
						<li class="list-group-item"><a href="#albumIntroduce">
							<i class="fa fa-comments-o"></i> 앨범 소개</a></li>
						<li class="list-group-item"><a href="#albumVideo">
							<i class="fa  fa-video-camera"></i> 영상</a></li>
				
					</ul>
	
					<hr>

					<!--Notification-->
					<div class="panel-heading-v2 overflow-h">
						<h2 class="heading-xs pull-left">
							<i class="fa fa-bell-o"></i> Notification
						</h2>
						<a href="#"><i class="fa fa-cog pull-right"></i></a>
					</div>
					<ul class="list-unstyled mCustomScrollbar margin-bottom-20"
						data-mcs-theme="minimal-dark">
						<li class="notification"><i
							class="icon-custom icon-sm rounded-x icon-bg-red icon-line icon-envelope"></i>
							<div class="overflow-h">
								<span><strong>Albert Heller</strong> has sent you email.</span>
								<small>Two minutes ago</small>
							</div></li>
						<li class="notification"><img class="rounded-x"
							src="<%=cp%>/res/main/assets/img/testimonials/img6.jpg" alt="">
							<div class="overflow-h">
								<span><strong>Taylor Lee</strong> started following you.</span>
								<small>Today 18:25 pm</small>
							</div></li>
						<li class="notification"><i
							class="icon-custom icon-sm rounded-x icon-bg-yellow icon-line fa fa-bolt"></i>
							<div class="overflow-h">
								<span><strong>Natasha Kolnikova</strong> accepted your
									invitation.</span> <small>Yesterday 1:07 pm</small>
							</div></li>
						<li class="notification"><img class="rounded-x"
							src="<%=cp%>/res/main/assets/img/testimonials/img1.jpg" alt="">
							<div class="overflow-h">
								<span><strong>Mikel Andrews</strong> commented on your
									Timeline.</span> <small>23/12 11:01 am</small>
							</div></li>
						<li class="notification"><i
							class="icon-custom icon-sm rounded-x icon-bg-blue icon-line fa fa-comments"></i>
							<div class="overflow-h">
								<span><strong>Bruno Js.</strong> added you to group
									chating.</span> <small>Yesterday 1:07 pm</small>
							</div></li>
						<li class="notification"><img class="rounded-x"
							src="<%=cp%>/res/main/assets/img/testimonials/img6.jpg" alt="">
							<div class="overflow-h">
								<span><strong>Taylor Lee</strong> changed profile
									picture.</span> <small>23/12 15:15 pm</small>
							</div></li>
					</ul>
					<button type="button"
						class="btn-u btn-u-default btn-u-sm btn-block">Load More</button>
					<!--End Notification-->

					<div class="margin-bottom-50"></div>

					<!--Datepicker-->
					<form action="#" id="sky-form2" class="sky-form">
						<div id="inline-start"></div>
					</form>
					<!--End Datepicker-->
				</div>
				<!--End Left Sidebar-->

				<!-- 앨범 본문 시작 -->
				<div class="col-md-9">
					<div class="profile-body">
						<!--Service Block v3-->
						<!-- 앨범 정보 -->
						<div id="albumInfomation" class="panel panel-green margin-bottom-40">
							<div class="panel-heading">
								<h3 class="panel-title">
									<i class="icon-list"></i>앨범 정보
								</h3>
							</div>
							<div class="panel-body">


								<!-- Horizontal Description -->
								<div class="col-md-7">
									<!-- <div class="headline"><h2>Horizontal Description</h2></div> -->
									<dl class="dl-horizontal">
										<dt>아티스트</dt>
										<dd>EXID</dd>
										<dt>발매일</dt>
										<dd>2015.11.18</dd>
										<dt>발매사</dt>
										<dd>Sony Music</dd>
										<dt>기획사</dt>
										<dd>㈜예당엔터테이먼트</dd>
										<dt>장르</dt>
										<dd>Dance<br><br>
										</dd>

										<dt>공유하기</dt>
										<dd>
											<ul class="social-icons social-icons-color">
												<li><a href="#" data-original-title="Facebook"
													class="rounded social_facebook"></a></li>
												<li><a href="#" data-original-title="Twitter"
													class="rounded social_twitter"></a></li>
											</ul>
										</dd>
									</dl>
								</div>
								<!-- End Horizontal Description -->
								<!-- <p align="center"> 좋아요....</p>  -->
								<div class="counters col-md-3 col-sm-3" align="right">
									<span class="counter-icon"><i
										class="fa fa-thumbs-up rounded"></i></span> <span class="right">5389</span>
								</div>

							</div>

						</div>

						<!-- 앨범 정보 end -->


						<!-- ------------------------앨범 소개 -->
						<div id="albumIntroduce" class="panel panel-green margin-bottom-40">
							<div  class="panel-heading">
								<h3 class="panel-title">
									<i class="icon-list"></i>앨범 소개
								</h3>
							</div>
							<div class="panel-body">
								EXID Digital Single [HOT PINK]
								<h3>EXID가 표현하는 Pink는 HOT PINK!</h3>
								<br> 순수한 걸그룹이 대거 등장하고, 소녀느낌의 순수함을 대변하는 색인 'Pink'를 걸크러쉬함과
								섹시함의 대표주자 'EXID'가 차별화된 개성으로 표현하였다. 보여지는 겉모습만 보고, 어떤 사람일지 판단하는
								상대에게 아직 나의 매력을 다 보여주지 않았으니, 잘 보라. 의 메시지를 담고 있는 이 곡은 black &
								white 등의 차가운 이미지의 색깔과 pink의 순수하고, 여성미 넘치는 이미지의 결합을 자극적이고, 강한 훅과
								따뜻하고 여유 있는 악기배치의 조화로 잘 표현 되었다. 오랫동안 호흡을 맞춰온 프로듀서 신사동호랭이의 프로듀싱 아래
								범이낭이, LE가 곡 제작에 참여하여, "위아래 (UPDOWN)", "아예 (AH YEAH)"를 넘는 히트작품을
								기대하게 하였고, 1970~80년도에 생산된 아날로그 악기로 편곡된 사운드는 올드스쿨 힙합 사운드의 느낌을 잘
								표현하였다. 삼바 장르에서 주로 사용되는 타악기 AGOGO와 중독성 강한 리드사운드가 돋보이는 이 곡은 멤버
								'LE'의 주도아래 '하니'의 매력적인 보이스, '혜린'의 숨겨진 가창력, '솔지'의 폭발적인 고음, '정화'의
								중저음 보이스 등 멤버들의 장점을 살린 구성과 어우러져 드라마틱한 전개를 완성 시켰다. 강한 이미지의 해골과
								핑크색의 조화가 인상적인 앨범 아트는 '지드래곤' - "그XX"의 뮤직비디오에 등장해 화제를 모았던 화가
								'킬드런'의 작품이다. 위아래의 뮤직비디오를 담당한 디지페디와 다시 한번 손을 잡고 탄생한 뮤직비디오 역시,
								디지페디 특유의 유니크함과 위트 있는 연출력과 독특하게 연출된 Pink색의 조화로 'EXID'만의 느낌을 잘 표현
								하였고, "위아래", "아예" 등의 안무를 담당한 야마&핫칙스의 퍼포먼스로 완성도를 높였다.
								
							</div>


						</div>
						<!-- ------------------------앨범 소개 end-->

					<!-- ------------------------영상-->

						<div id="albumVideo" class="panel panel-green margin-bottom-40">
							<div  class="panel-heading">
								<h3 class="panel-title">
									<i class="icon-list"></i>영상
								</h3>
							</div>
							<table class="table">
								<tbody>
									<tr>
										<td align="left" width="50%">
					<!-- Youtube Video -->

                        <div class="responsive-video">
                            <iframe width="50%" src="//www.youtube.com/embed/8NaeaLW8CLY" frameborder="0" allowfullscreen></iframe>
                        </div>
                        <div align="center">
                        HOT PINK
                        </div>

                    <!-- End Youtube Video -->
										</td>
										<td align="left" width="50%">
					<!-- Youtube Video -->

                        <div class="responsive-video">
                            <iframe width="50%" src="//www.youtube.com/embed/ek9QqE6sX7g" frameborder="0" allowfullscreen></iframe>
                        </div>
                        <div align="center">
                        HOT PINK Teaser영상
                        </div>
                    <!-- End Youtube Video -->
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					<!-- ------------------------영상 end -->
						<hr>

					</div>
				</div>
				<!-- 프로필 본문 끝 -->
			</div>
		</div>
		<!--/container-->
		<!--=== End Profile ===-->

	</div>
	<!--/wrapper-->
