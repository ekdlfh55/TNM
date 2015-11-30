<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>

<div name="left">
 <div class="breadcrumbs">
        <div class="container">
            <ul class="pull-right breadcrumb">
                <li><a href="<%=cp%>">main</a></li>
                <li><a href="">Features</a></li>
                <li class="active">자유게시판</li>
            </ul>
        </div>
    </div>
<div class="col-md-3">
	<ul class="list-group sidebar-nav-v1" id="sidebar-nav">
		<!-- 장르별게시판 -->
		<li class="list-group-item list-toggle"><a data-toggle="collapse"
			data-parent="#sidebar-nav" href="#collapse-janre">장르별 게시판</a>
			<ul id="collapse-janre" class="collapse">
				<li><a href="shortcode_typo_general.html"><i
						class="fa fa-align-justify"></i> 가요</a></li>
				<li><span class="badge badge-u">New</span> <a
					href="shortcode_typo_headings.html"><i
						class="fa fa-align-justify"></i> POP</a></li>
				<li><span class="badge badge-u">New</span> <a
					href="shortcode_typo_dividers.html"><i
						class="fa fa-align-justify"></i> OST</a></li>
				<li><a href="shortcode_typo_blockquote.html"><i
						class="fa fa-align-justify"></i> 일렉트로니카/클럽뮤직</a></li>
				<li><span class="badge badge-u">New</span> <a
					href="shortcode_typo_boxshadows.html"><i
						class="fa fa-align-justify"></i> 록/메탈</a></li>
				<li><a href="shortcode_typo_testimonials.html"><i
						class="fa fa-align-justify"></i> R&B/Soul</a></li>
				<li><a href="shortcode_typo_tagline_boxes.html"><i
						class="fa fa-align-justify"></i> 랩/힙합</a></li>
				<li><a href="shortcode_typo_grid.html"><i
						class="fa fa-align-justify"></i> 인디음악</a></li>
				<li><a href="shortcode_typo_grid.html"><i
						class="fa fa-align-justify"></i> 트로트</a></li>
				<li><a href="shortcode_typo_grid.html"><i
						class="fa fa-align-justify"></i> J-POP</a></li>
				<li><a href="shortcode_typo_grid.html"><i
						class="fa fa-align-justify"></i> 클래식</a></li>
				<li><a href="shortcode_typo_grid.html"><i
						class="fa fa-align-justify"></i> 재즈</a></li>
				<li><a href="shortcode_typo_grid.html"><i
						class="fa fa-align-justify"></i> 기타</a></li>
			</ul></li>
		<!-- End 장르별 게시판 -->

		<!-- 자유 게시판 -->
		<li class="list-group-item"><a href="<%=cp%>/table/freeTable.do">자유
				게시판</a></li>
		<!-- End 자유게시판 -->

		<!-- 질문 게시판 -->
		<li class="list-group-item"><a href="shortcode_thumbnails.html">질문
				게시판</a></li>
		<!-- End 질문게시판 -->

		<!-- 채팅 게시판 -->
		<li class="list-group-item"><a href="shortcode_thumbnails.html">채팅
				게시판</a></li>
		<!-- End 질문게시판 -->

		<!-- 앨범공유 -->
		<li class="list-group-item"><a href="shortcode_thumbnails.html">앨범
				공유</a></li>
		<!-- End 앨범공유 -->

		<!-- 동영상공유 -->
		<li class="list-group-item"><a href="shortcode_thumbnails.html">동영상
				공유</a></li>
		<!-- End 동영상공유 -->
	</ul>
</div>
</div>