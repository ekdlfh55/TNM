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

			<!--Service Block v3-->
			<!-- 아티스트 프로필 -->
			<div class="panel panel-grey margin-bottom-40">
				<div class="panel-heading">
					<h3 class="panel-title">
						<i class="fa fa-user color-orange"></i>아티스트 이름
					</h3>
				</div>
				<div class="panel-body">
					<%-- <div class="col-sm-3 col-xs-6 md-margin-bottom-20" >
                                    <img class="img-responsive" src="<%=cp %>/res/main/assets/img/demo.jpg" alt="">
                                </div> --%>
					<!-- <p align="center"> 아티스트 프로필....</p>  -->


					<!-- Horizontal Description -->
					<div class="col-md-7" align="left">
						<!-- <div class="headline"><h2>Horizontal Description</h2></div> -->
						<dl class="dl-horizontal">
							<dt>데뷔</dt>
							<dd>2004.05</dd>
							<dt>활동유형</dt>
							<dd>그룹</dd>
							<dt>소속사</dt>
							<dd>
								아메바컬쳐<br>
								<br>
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
					<div class="counters col-md-3 col-sm-3" align="right">
						<a href="#"><i
							class="icon-custom icon-lg rounded-2x icon-lg icon-bg-orange fa fa-thumbs-up"></i></a>
						<span class="right">5389</span>
					</div>
				</div>

			</div>

			<!-- 아티스트 프로필 end -->


			<!-- ------------------------아티스트 소개 -->
			<div class="panel panel-grey margin-bottom-40">
				<div class="panel-heading">
					<h3 class="panel-title">
						<i class="fa fa-user color-orange"></i>아티스트 소개
					</h3>
				</div>
				<div class="panel-body">
					<p>아티스트 소개글...Some default panel content here. Nulla vitae elit
						a pharetra augue. Aenean lacinia bibendum nulla sed consectetur.
						Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis
						vestibulum. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				</div>
			</div>
			<!-- ------------------------아티스트 소개 end-->

			<!-- ------------------------활동정보----------------->

			<div class="panel panel-grey margin-bottom-40">
				<div class="panel-heading">
					<h3 class="panel-title">
						<i class="fa fa-user color-orange"></i>활동정보
					</h3>
				</div>
				<table class="table">
					<tbody>
						<tr>
							<td align="left" width="20%">데뷔</td>
							<td align="left" width="80%">데뷔날짜</td>
						</tr>
						<tr>
							<td align="left" width="20%">활동년대</td>
							<td align="left" width="80%">2000년대</td>
						</tr>
						<tr>
							<td align="left" width="20%">유형</td>
							<td align="left" width="80%">그룹</td>
						</tr>
						<tr>
							<td align="left" width="20%">소속사명</td>
							<td align="left" width="80%">소속사</td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- ------------------------활동정보 end -->

		</div>
	</div>
	<!--=== End Content Part ===-->
</div>
<!--/End Wrapepr-->
