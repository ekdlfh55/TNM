<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<br><br>
<!--Left Sidebar-->
<div class="col-md-3 md-margin-bottom-40">
	<img class="img-responsive profile-img margin-bottom-20"
		src="<%=cp%>/res/main/assets/img/albumjacket.jpg" alt="">

	<ul class="list-group sidebar-nav-v1 margin-bottom-40"
		id="sidebar-nav-1">
		<li class="list-group-item "><a href="<%=cp%>/artist/timeline.do"><i class="fa  fa-history"></i>
				타임라인</a></li>
		<li class="list-group-item"><a href="<%=cp%>/artist/artist.do"><i class="fa fa-user"></i> 상세정보</a>
		</li>
		<li class="list-group-item"><a href="<%=cp%>/artist/music.do">
			<i class="fa fa-music"></i> 곡</a></li>
		<li class="list-group-item"><a href="<%=cp%>/artist/album.do">
			<i class="fa fa-cube"></i> 앨범</a></li>
		<li class="list-group-item"><a href="<%=cp%>/artist/video.do">
			<i class="fa  fa-video-camera"></i> 영상</a></li>
		<li class="list-group-item"><a href="<%=cp%>/artist/photo.do">
			<i class="fa fa-picture-o"></i> 포토</a></li>
		<li class="list-group-item"><a href="<%=cp%>/artist/fan.do">
			<i class="fa  fa-users"></i> 팬</a></li>
	</ul>
</div>
<!------------------------ 사이드바 end------------------------------------ -->